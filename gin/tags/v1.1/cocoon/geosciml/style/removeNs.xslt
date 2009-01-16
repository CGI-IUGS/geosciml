<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" exclude-result-prefixes="#all"/>
<xsl:template match="node()"> 
   <xsl:element name="{local-name()}">
      <xsl:apply-templates select="@*|node()"/>
   </xsl:element>
</xsl:template>

<xsl:template match="@*">
   <xsl:copy/>
</xsl:template>

<xsl:template match="text()" priority="1">
   <xsl:value-of select="."/>
</xsl:template>
</xsl:stylesheet>
