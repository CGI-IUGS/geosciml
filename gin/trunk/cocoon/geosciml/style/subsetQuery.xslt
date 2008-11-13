<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:wfs="http://www.opengis.net/wfs"
	xmlns:src="http://apache.org/cocoon/source/1.0"
	xmlns:proc="urn:x-lcnp:proc" 
	xmlns:include="http://apache.org/cocoon/include/1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:param name="pos"/>
	<xsl:template match="/">
	<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="wfs:GetFeature">
	
	<wfs:GetFeature>
	<xsl:for-each select="@*"><xsl:copy/></xsl:for-each>
		<xsl:copy-of select="wfs:Query[position() = number($pos)]"/>
	</wfs:GetFeature>
	</xsl:template>
</xsl:stylesheet>
