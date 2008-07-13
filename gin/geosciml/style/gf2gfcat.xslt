<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:ogc="http://www.opengis.net/ogc" xmlns:cat="urn:x-ngwd:cat" xmlns:gml="http://www.opengis.net/gml" xmlns:saxon="http://saxon.sf.net/" xmlns:wfs="http://www.opengis.net/wfs" xmlns:proc="urn:x-lcnp:proc" xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" xmlns:gsc="http://www.nrcan.gc.ca/gsc">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- remove the proc section -->
	<xsl:template match="proc:*"/>
	<!-- catch text nodes 
	<xsl:template match="text()" priority="-1">
		<xsl:if test="normalize-space(.) != ''">
	<xsl:value-of select="local-name(./parent::*)"/>
		</xsl:if>
	</xsl:template>-->
	<!-- the identity template -->
	<xsl:template match="wfs:GetFeature">
	<cat:Request type="query" maxFeatures="{@maxFeatures}" language="en">
	<xsl:if test="@traverseXlinkDepth"><xsl:attribute name="traverseXlinkDepth"><xsl:value-of select="@traverseXlinkDepth"/></xsl:attribute></xsl:if>
			<xsl:apply-templates/>
		</cat:Request>
	</xsl:template>
	<xsl:template match="wfs:Query">
	<cat:Query id="1">
	<xsl:apply-templates select="@*"/>
	<xsl:apply-templates/>
	</cat:Query>
	</xsl:template>
	<xsl:template match="@*|node()" priority="-2">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
