<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns="urn:cgi:xmlns:CGI:GeoSciML:2.0" xmlns:gsc="http://www.deegree.org/app" 
xmlns:xlink="http://www.w3.org/1999/xlink" 
xmlns:gml="http://www.opengis.net/gml" 
xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" >
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="gsc:GeologicUnit">
	<gsml:GeologicUnit gml:id="{@gml:id}">
	<!-- because order of element is important, we cannot use the push method, must pull the element in the correct order -->
	<xsl:copy-of select="gml:boundedBy"/>
		<gml:name codeSpace="urn:ietf:rfc:2141"><xsl:value-of select="gsc:uname"/></gml:name>
		<gml:name codeSpace="urn:cgi:GSC:classificationScheme:Wheller"><xsl:value-of select="gsc:uname"/></gml:name>
		<gml:description><xsl:value-of select="gsc:description"/></gml:description>
		<xsl:apply-templates select="gsc:preferredAge"/>
		<gsml:occurence>
			<gsml:MappedFeature gml:id="mf.{@gml:id}">
				<gsml:shape><xsl:copy-of select="gsc:the_geom/*"/></gsml:shape>
			</gsml:MappedFeature>
		</gsml:occurence>
	</gsml:GeologicUnit>
</xsl:template>
<xsl:template match="gsc:preferredAge">
	<gsml:preferredAge>
		<gsml:GeologicEvent>
			<gsml:eventAge>
				<gsml:CGI_TermValue>
							<gsml:qualifier>approximate</gsml:qualifier>
							<gsml:value codeSpace="{gsc:Age/gsc:ga_uid}"><xsl:value-of select="gsc:Age/gsc:ga_name"/></gsml:value>
						</gsml:CGI_TermValue>
			</gsml:eventAge>
			<gsml:eventProcess>
						<CGI_TermValue>
							<value codeSpace="urn:cgi:classifierScheme:GSC:EventProcesses">compilation age</value>
						</CGI_TermValue>
					</gsml:eventProcess>
		</gsml:GeologicEvent>
	</gsml:preferredAge>
</xsl:template>
<!-- identity -->
<xsl:template match="@*|node()" priority="-2">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
