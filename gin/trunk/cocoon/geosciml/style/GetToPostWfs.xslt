<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:fn="http://www.w3.org/2005/xpath-functions" 
xmlns:h="http://apache.org/cocoon/request/2.0" 
xmlns:proc="urn:x-lcnp:proc" 
xmlns:wfs="http://www.opengis.net/wfs"
xmlns:ogc="http://www.opengis.net/ogc"
xmlns:gml="http://www.opengis.net/gml"
xmlns:xlink="http://www.w3.org/1999/xlink"
xmlns:saxon="http://saxon.sf.net/">
	<!-- CONFIG: you can declare some default namespaces here so they are automatically declared -->
	<!-- should read from namespace parameter see eg.9 from OGC 04-094 
NAMESPACE=xmlns(myns=http://my.server),xmlns(app=http://www.app.com) -->
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- convert a KVP OGC request into a XML request -->
	<xsl:variable name="types" select="tokenize(/h:request/h:requestParameters/h:parameter[@name='TYPENAME']/h:value,',')"/>
	<xsl:variable name="namespace">
		<xsl:call-template name="buildns"/>
	</xsl:variable>
	<xsl:template match="/">
		<!-- this is specific for WFS request -->
		<xsl:variable name="request" select="upper-case(/h:request/h:requestParameters/h:parameter[@name='REQUEST']/h:value)"/>
		<xsl:choose>
			<xsl:when test="$request = 'GETCAPABILITIES'">
				<wfs:GetCapabilities service="wfs" version="{/h:request/h:requestParameters/h:parameter[@name='VERSION']/h:value}"/>
			</xsl:when>
			<xsl:when test="$request='DESCRIBEFEATURETYPE'">
				<wfs:DescribeFeatureType service="wfs" version="{/h:request/h:requestParameters/h:parameter[@name='VERSION']/h:value}">
					<!-- check if we have an outputFormat to load here -->
					<xsl:if test="/h:request/h:requestParameters/h:parameter[@name='OUTPUTFORMAT']/h:value">
						<xsl:attribute name="outputFormat" select="/h:request/h:requestParameters/h:parameter[@name='OUTPUTFORMAT']/h:value"/>
					</xsl:if>
					<!-- deal with the typenames -->
					<xsl:for-each select="$types">
						<!-- must check if the namespace of this type has been declared, otherwise, we declare it locally -->
						<xsl:choose>
							<xsl:when test="contains(.,':')">
								<xsl:variable name="prefix" select="substring-before(.,':')"/>
									<xsl:choose>
										<xsl:when test="$namespace/proc:namespaces/proc:ns[@prefix=$prefix]">
											<xsl:variable name="uri"><xsl:value-of select="$namespace/proc:namespaces/proc:ns[@prefix=$prefix]"/></xsl:variable>
											<wfs:TypeName>
												<xsl:namespace name="{$prefix}" select="$uri"/>
												<xsl:value-of select="."/>
											</wfs:TypeName>
										</xsl:when>
										<xsl:otherwise>
											<wfs:TypeName>
											<xsl:comment>Warning - no namespace for <xsl:value-of select="$prefix"/></xsl:comment>
												<xsl:value-of select="."/>
											</wfs:TypeName>
										</xsl:otherwise>
									</xsl:choose>
								
							</xsl:when>
							<xsl:otherwise>
								<wfs:TypeName>
									<xsl:value-of select="."/>
								</wfs:TypeName>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
				</wfs:DescribeFeatureType>
			</xsl:when>
			<xsl:when test="$request='GETFEATURE'">
			<xsl:variable name="vers">
			<xsl:choose>
				<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='VERSION']/h:value"><xsl:value-of select="/h:request/h:requestParameters/h:parameter[@name='VERSION']/h:value"/></xsl:when>
				<xsl:otherwise>1.1.0</xsl:otherwise>
			</xsl:choose>
			</xsl:variable>
			<wfs:GetFeature service="WFS" version="{$vers}">
			<!-- deal with some optional parameters 
outputFormat="text/xml; subtype=gml/3.1.1"
traverseXlinkDepth="1"
traverseXlinkExpiry="1"
-->

					<!-- fetch a maxFeatures, if none return -1, set by the service, this could be overriden in the config-->
					<xsl:variable name="maxFeatures"><xsl:choose>
						<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='MAXFEATURES']"><xsl:value-of select="/h:request/h:requestParameters/h:parameter[@name='MAXFEATURES']/h:value"/></xsl:when>
						<xsl:otherwise><xsl:value-of select="/h:request/proc:config/proc:maxFeatures"/></xsl:otherwise>
					</xsl:choose>
					</xsl:variable>
					<xsl:if test="$maxFeatures &gt; 0"><xsl:attribute name="maxFeatures" select="$maxFeatures"/></xsl:if>
					<!-- figure out the query type ; bbox, fid or filter -->
					<xsl:variable name="qtype">
					<xsl:choose>
						<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='BBOX']">bbox</xsl:when>
						<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='FEATUREID']">fid</xsl:when>
						<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='FID']">fid</xsl:when>
						<xsl:otherwise>filter</xsl:otherwise>
					</xsl:choose>
					</xsl:variable>
					<!-- TODO: find a way to find back the top node when looping is a sequence, otherwise, I must carry those nodes in variables -->
					<xsl:variable name="root" select="/"/>
<!-- deal with the query.. when a series of typenames are listed, it is assumed that it's a series of queries (and not a join operation - which is only supported, if supported, in a POST request -->
					<xsl:for-each select="$types">
						<wfs:Query typeName="{.}">
						<xsl:variable name="currentType" select="."/>
						<xsl:if test="$root/h:request/h:requestParameters/h:parameter[@name='OUTPUTFORMAT']">
						<xsl:attribute name="outputFormat" select="$root/h:request/h:requestParameters/h:parameter[@name='OUTPUTFORMAT']/h:value"/>
					</xsl:if>
					<xsl:if test="$root/h:request/h:requestParameters/h:parameter[@name='TRAVERSEXLINKDEPTH']">
						<xsl:attribute name="traverseXlinkDepth" select="$root/h:request/h:requestParameters/h:parameter[@name='TRAVERSEXLINKDEPTH']/h:value"/>
					</xsl:if>
					<xsl:if test="$root/h:request/h:requestParameters/h:parameter[@name='TRAVERSEXLINKEXPIRY']">
						<xsl:attribute name="traverseXlinkExpiry" select="$root/h:request/h:requestParameters/h:parameter[@name='TRAVERSEXLINKEXPIRY']/h:value"/>
					</xsl:if>
					<xsl:if test="$root/h:request/h:requestParameters/h:parameter[@name='RESULTTYPE']">
						<xsl:attribute name="resultType" select="$root/h:request/h:requestParameters/h:parameter[@name='RESULTYPE']/h:value"/>
					</xsl:if>
						<xsl:call-template name="AddNameSpace"><xsl:with-param name="qname" select="."/></xsl:call-template>
						<!-- list the properties -->
						<xsl:if test="$root/h:request/h:requestParameters/h:parameter[@name='PROPERTYNAME']">
						<!-- dump in the parameters -->
						<xsl:for-each select="tokenize($root/h:request/h:requestParameters/h:parameter[@name='PROPERTYNAME'],',')">
						<wfs:PropertyName>
						<xsl:call-template name="AddNameSpace"><xsl:with-param name="qname" select="."/></xsl:call-template><xsl:value-of select="."/></wfs:PropertyName>
						</xsl:for-each>
						</xsl:if>
						<xsl:if test="$root/h:request/h:requestParameters/h:parameter[@name='XLINKPROPERTYNAME']">
						<!-- dump in the parameters -->
						<xsl:for-each select="tokenize($root/h:request/h:requestParameters/h:parameter[@name='XLINKPROPERTYNAME'],',')">
						<wfs:XlinkPropertyName><xsl:value-of select="."/><xsl:call-template name="AddNameSpace"><xsl:with-param name="qname" select="."/></xsl:call-template></wfs:XlinkPropertyName>
						</xsl:for-each>
						</xsl:if>
							<!-- at this point, a filter can either be.. a FILTER, a BBOX or a FEATUREID, both not a mix-->
							<xsl:choose>
								<xsl:when test="$qtype='bbox'">
								<!-- this is a bbox query, depending of the type, the shape to consider is different, must find this in the configuration file -->
								<ogc:Filter>
									<ogc:BBOX>
										<ogc:PropertyName>
										<xsl:choose>
											<xsl:when test="$root/h:request/proc:config/proc:defaultGeometries/proc:featureGeometry[@typeName=$currentType]"><xsl:value-of select="$root/h:request/proc:config/proc:defaultGeometries/proc:featureGeometry[@typeName=$currentType]"/></xsl:when>
											<xsl:otherwise><xsl:value-of select="$root/h:request/proc:config/proc:defaultGeometries/proc:defaultGeometry"/></xsl:otherwise>
										</xsl:choose>
										</ogc:PropertyName>
										<xsl:variable name="bbox" select="tokenize($root/h:request/h:requestParameters/h:parameter[@name='BBOX']/h:value,',')"/>
											<xsl:variable name="srs">
										<xsl:choose>
											<xsl:when test="$root/h:request/h:requestParameters/h:parameter[@name='SRSNAME']"><xsl:value-of select="$root/h:request/h:requestParameters/h:parameter[@name='SRSNAME']/h:value"/></xsl:when>
											<xsl:otherwise>EPSG:4326</xsl:otherwise>
										</xsl:choose>
										</xsl:variable>
										
										<gml:Box srsName="{$srs}">
											<gml:coordinates><xsl:value-of select="$bbox[1]"/>,<xsl:value-of select="$bbox[2]"/><xsl:text> </xsl:text><xsl:value-of select="$bbox[3]"/><xsl:text>,</xsl:text><xsl:value-of select="$bbox[4]"/></gml:coordinates>
										</gml:Box>

										<!--
										<gml:Envelope srsName="">
										
											<gml:lowerCorner><xsl:value-of select="$bbox[1]"/><xsl:text> </xsl:text><xsl:value-of select="$bbox[2]"/></gml:lowerCorner>
											<gml:upperCorner><xsl:value-of select="$bbox[3]"/><xsl:text> </xsl:text><xsl:value-of select="$bbox[4]"/></gml:upperCorner>
										</gml:Envelope>
-->
										</ogc:BBOX>
								</ogc:Filter>
								</xsl:when>
								<xsl:when test="$qtype='fid'">
								
								<!-- request for a list of feature id -->
								<ogc:Filter>								
								<xsl:for-each select="tokenize($root/h:request/h:requestParameters/h:parameter[@name='FID']/h:value,',')">
								<ogc:FeatureId fid="{.}"/>
								</xsl:for-each>
								</ogc:Filter>
								</xsl:when>
								<xsl:otherwise>
								<!-- regular filter query, the problem here is to parse the string representing the filter into a real node set -->
								<!-- TODO: check there are supposed to have one filter per type -->		
								<!-- let's use the saxon parser ... <proc:filter_tonode><xsl:value-of select="$root/h:request/h:requestParameters/h:parameter[@name='FILTER']/h:value"/></proc:filter_tonode> 
-->
<xsl:if test="$root/h:request/h:requestParameters/h:parameter[@name='FILTER']/h:value">
								<xsl:copy-of select="saxon:parse($root/h:request/h:requestParameters/h:parameter[@name='FILTER']/h:value)"/></xsl:if>
								</xsl:otherwise>
							</xsl:choose>
						</wfs:Query>
					</xsl:for-each>
					
			</wfs:GetFeature>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="buildns">
		<xsl:variable name="ns" select="tokenize(/h:request/h:requestParameters/h:parameter[@name='NAMESPACE']/h:value,',')"/>
		<proc:namespaces>
			<xsl:for-each select="$ns">
				<proc:ns>
					<xsl:attribute name="prefix"><xsl:value-of select="substring-before(substring-after(.,'xmlns('),'=')"/></xsl:attribute>
					<xsl:value-of select="substring-before(substring-after(.,'='),')')"/>
				</proc:ns>
			</xsl:for-each>
			<xsl:for-each select="/h:request/proc:config/proc:defaultPrefixMapping/proc:ns">
			<xsl:copy-of select="."/></xsl:for-each>
		</proc:namespaces>
	</xsl:template>
	<xsl:template name="AddNameSpace">
		<xsl:param name="qname"/>
		<!-- create an association if we name to add a namespace -->
		<!-- DONE: (also check if it's already declared), no need, the declaration is not added if already declared -->
							<xsl:if test="contains($qname,':')">
								<xsl:variable name="prefix" select="substring-before($qname,':')"/>
									<xsl:choose>
										<xsl:when test="$namespace/proc:namespaces/proc:ns[@prefix=$prefix]">
											<xsl:variable name="uri"><xsl:value-of select="$namespace/proc:namespaces/proc:ns[@prefix=$prefix]"/></xsl:variable>
												<xsl:namespace name="{$prefix}" select="$uri"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:comment>Warning - no namespace for <xsl:value-of select="$prefix"/></xsl:comment>
										</xsl:otherwise>
									</xsl:choose>
							</xsl:if>

	</xsl:template>
</xsl:stylesheet>
