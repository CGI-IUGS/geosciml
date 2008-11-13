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
xmlns:include="http://apache.org/cocoon/include/1.0">
<xsl:param name="config"/>
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- reads in the request and dispatch the calls to the right pipelines -->
	<xsl:variable name="key" select="proc:page/proc:tempKey"/>
	
	<xsl:template match="/">
	<proc:job>
		<proc:query>
		<xsl:apply-templates select="proc:page/*"/>
		</proc:query>
		<proc:status>
		<!-- last operation, clean the mess -->
	<include:include src="cocoon:/wfs-process-clean/{$key}"/>
	</proc:status>
	</proc:job>
	</xsl:template>
	<xsl:template match="wfs:GetFeature">
	<proc:features>
	<xsl:for-each select="wfs:Query">
	<xsl:apply-templates select="."><xsl:with-param name="pos" select="position()"></xsl:with-param></xsl:apply-templates>
	</xsl:for-each>
	</proc:features>
	</xsl:template>
	<xsl:template match="wfs:DescribeFeatureType">
	<xsl:for-each select="wfs:TypeName">
		<include:include src="cocoon:/wfs-process-DescribeFeatureType/{$key}/{.}"/>
		</xsl:for-each>
	</xsl:template>
	<xsl:template match="wfs:GetCapabilities">
	<include:include src="cocoon:/wfs-process-GetCapabilities/{$config}"/>
	</xsl:template>
	<xsl:template match="wfs:Query">
	<xsl:param name="pos"/>
	<xsl:variable name="typeName" select="@typeName"/>
	<xsl:for-each select="/proc:page/proc:config/proc:datasources/proc:datasource/proc:handledFeature[@name=$typeName]">
	<xsl:variable name="ref">cocoon:/wfs-process-GetFeature-<xsl:value-of select="../proc:processor/@name"/>/<xsl:value-of select="$config"/>/<xsl:value-of select="$key"/>/<xsl:value-of select="@handler"/>/<xsl:value-of select="../@name"/>/<xsl:value-of select="$pos"/></xsl:variable>
	<include:include src="{$ref}"/>
	</xsl:for-each>
	</xsl:template>
	<xsl:template match="*"/>
</xsl:stylesheet>
