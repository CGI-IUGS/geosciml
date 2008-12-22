<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:proc="urn:x-lcnp:proc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" xmlns:gml="http://www.opengis.net/gml">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- just remove the function althogether and replace it by a regular comparaison-->
	<xsl:template match="/">
	<xsl:copy>
		<xsl:apply-templates select="ogc:Function"/>
	</xsl:copy>
	<!--
			<ogc:PropertyIsEqualTo>
					<ogc:PropertyName><xsl:value-of select="$pname"/></ogc:PropertyName>
					<ogc:Literal><xsl:value-of select="$ageList/proc:age-list/proc:age"/></ogc:Literal>
				</ogc:PropertyIsEqualTo>
-->
	</xsl:template>
	<xsl:template match="ogc:Function">
		<xsl:copy-of select="*"/>
	</xsl:template>
</xsl:stylesheet>
