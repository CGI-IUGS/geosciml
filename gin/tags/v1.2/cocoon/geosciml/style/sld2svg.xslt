<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:svg="http://www.w3.org/2000/svg"
xmlns:sld="http://www.opengis.net/sld">
	<xsl:output method="xml" version="1.0" encoding="iso-8859-1" indent="yes"/>
	<xsl:param name="w">220</xsl:param>
<xsl:template match="/">
<xsl:variable name="nb" select="count(//sld:Rule)"/>
	<svg:svg width="220" height="{$nb*20+40}">
	<svg:text x="10" y="5" font-size="10">
		<svg:tspan x="10" dy="10">Legend for</svg:tspan>
		<svg:tspan x="10" dy="10" font-weigth="bold"><xsl:value-of select="//sld:UserStyle/sld:Title"/></svg:tspan>
	</svg:text>
	<svg:line x1="0" y1="30" x2="{$w}" y2="30" style="stroke:green;stroke-width=3"/>
	<xsl:apply-templates select="//sld:Rule"/>
	</svg:svg>
</xsl:template>	
<xsl:template match="sld:Rule">
	<xsl:variable name="yPos" select="position() * 20 + 20"/>
	<xsl:variable name="style"><xsl:apply-templates select="./sld:PolygonSymboliser/sld:Fill"/></xsl:variable>
	<svg:rect x="5" y="{$yPos}" width="30" height="15" style="{$style}"/>
	<svg:text x="40" y="{$yPos+10}" font-size="10"><xsl:value-of select="sld:Name"/></svg:text>
</xsl:template>
<xsl:template match="sld:CssParameter"><xsl:value-of select="@name"/>:<xsl:value-of select="."/>;</xsl:template>
</xsl:stylesheet>
