<?xml version="1.0" encoding="utf-8"?>
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
xmlns:gsml="http://www.cgi-iugs.org/xml/GeoSciML/2"
xmlns:include="http://apache.org/cocoon/include/1.0" exclude-result-prefixes="#all">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" exclude-result-prefixes="#all" />
	<xsl:template match="/" exclude-result-prefixes="#all">
	<!-- this stylesheet converts a ogc GetMap into a ARCXML to APAT server,
it has limited functionnalities so far, has it has been written specifically for Gaia that just send BBOX queries so far -->
		<ARCXML version="1.0">
			<REQUEST>
				<GET_FEATURES outputmode="newxml" geometry="true">
					<!-- check if maxFeatures has been set -->
					<xsl:if test="wfs:GetFeature/@maxFeatures">
						<xsl:attribute name="featurelimit"><xsl:value-of select="wfs:GetFeature/@maxFeatures"/></xsl:attribute>
					</xsl:if>
					<LAYER id="litho"/>
					
					<xsl:choose>
						<xsl:when test="//ogc:Within/gml:Envelope">
							<SPATIALQUERY subfields="CARTOBASE.GEO.geology500k.FORMATION_1 OBJECTID #SHAPE#">
							<!-- provide the EPSG here, we assume EPSG:XXXX format -->
							<xsl:choose>
								<xsl:when test="//wfs:Query/@srsName">
								<FEATURECOORDSYS id="{substring-after(//wfs:Query/@srsName,':')}"/>
								</xsl:when>
								<xsl:otherwise>
								<!-- we should improve this and get the default SRS in the Capabilities document -->
								<FEATURECOORDSYS id="4326"/>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:variable name="proj" select="substring-after(//gml:Envelope/@srsName,':')"/>
							<FILTERCOORDSYS id="{$proj}"/>
								<SPATIALFILTER relation="area_intersection">
									<xsl:apply-templates select="//ogc:Within/gml:Envelope"/>
								</SPATIALFILTER>
							</SPATIALQUERY>
						</xsl:when>
						<xsl:otherwise>
							<QUERY subfields="CARTOBASE.GEO.geology500k.FORMATION_1 OBJECTID #SHAPE#">				<xsl:choose>
								<xsl:when test="//wfs:Query/@srsName">
								<FEATURECOORDSYS id="{substring-after(//wfs:Query/@srsName,':')}"/>
								</xsl:when>
								<xsl:otherwise>
								<!-- we should improve this and get the default SRS in the Capabilities document -->
								<FEATURECOORDSYS id="4326"/>
								</xsl:otherwise>
							</xsl:choose></QUERY>
						</xsl:otherwise>
					</xsl:choose>
				</GET_FEATURES>
			</REQUEST>
		</ARCXML>
	</xsl:template>
	<xsl:template match="gml:Envelope">
		<xsl:variable name="lc">
			<xsl:value-of select="gml:lowerCorner"/>
		</xsl:variable>
		<xsl:variable name="uc">
			<xsl:value-of select="gml:upperCorner"/>
		</xsl:variable>
		<ENVELOPE minx="{substring-before($lc,' ')}" miny="{substring-after($lc,' ')}" maxx="{substring-before($uc,' ')}" maxy="{substring-after($uc,' ')}"/>
	</xsl:template>
</xsl:stylesheet>
