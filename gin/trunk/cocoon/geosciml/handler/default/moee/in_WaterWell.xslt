<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:fn="http://www.w3.org/2005/xpath-functions"
xmlns:gwml="http://www.nrcan.gc.ca/xml/gwml/1" 
xmlns:wfs="http://www.opengis.net/wfs" 
xmlns:gml="http://www.opengis.net/gml" 
xmlns:ogc="http://www.opengis.net/ogc" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xmlns:moee="http://www.ene.gov.on.ca/moee"
>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<!-- since we are dealing with water well here, it's hardcoded in the xslt -->
	<xsl:variable name="m"><xsl:choose>
		<xsl:when test="wfs:GetFeature/@maxFeatures"><xsl:value-of select="wfs:GetFeature/@maxFeatures"/></xsl:when><xsl:otherwise>50</xsl:otherwise></xsl:choose></xsl:variable>
	<wfs:GetFeature version="1.1.0" maxFeatures="{$m}">
	<xsl:variable name="s"><xsl:choose>
		<xsl:when test="wfs:GetFeature/wfs:Query/@srsName"><xsl:value-of select="wfs:GetFeature/wfs:Query/@srsName"/></xsl:when><xsl:otherwise>EPSG:4326</xsl:otherwise></xsl:choose></xsl:variable>
	<wfs:Query typeName="moee:WaterWell" srsName="{$s}">
	<xsl:apply-templates select="//wfs:GetFeature/wfs:Query/*"/>
	</wfs:Query>
</wfs:GetFeature>
	</xsl:template>
		<xsl:template match="ogc:GmlObjectId">
		
		<ogc:PropertyIsEqualTo>
		<ogc:PropertyName>moee:guid</ogc:PropertyName>
		<ogc:Literal><xsl:value-of select="substring-after(@gml:id,'on.waterwell.')"/></ogc:Literal>
		</ogc:PropertyIsEqualTo>
		
	</xsl:template>
	<xsl:template match="ogc:PropertyName">
	<!-- check if we need to translate any of the terms -->
	<ogc:PropertyName>
	<xsl:choose>
		<xsl:when test=".='gwml:wellLocation'">moee:geom</xsl:when>
		<xsl:when test=".='sa:length'">moee:length</xsl:when>
		<xsl:when test=".='gwml:referenceElevation'">moee:elevation</xsl:when>
		<!-- add name + codespace 2 version -->
		<xsl:when test=".='gml:name'">moee:guid</xsl:when>
		<xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
	</xsl:choose>
	</ogc:PropertyName>
	</xsl:template>
		<xsl:template match="ogc:Within"><ogc:Within><xsl:apply-templates select="ogc:PropertyName"/>
	<xsl:copy-of select="gml:Envelope"/></ogc:Within></xsl:template>
	<xsl:template match="text()">
	<xsl:choose>
	<!-- this relies on the fact that this id has a unique prefix, and can only match, and always do,  an id on the private side which is equivalent to the suffix, if the user had put it on the right context of not cannot be determined -->
		<xsl:when test="starts-with(.,'urn:x-ngwd:on:moee:well_')"><xsl:value-of select="substring-after(.,'urn:x-ngwd:on:moee:well_')"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
	</xsl:choose>
	</xsl:template>
	<xsl:template match="@*|node()">
	<xsl:copy><xsl:apply-templates select="@*|node()"/></xsl:copy>
	</xsl:template>
	
</xsl:stylesheet>
