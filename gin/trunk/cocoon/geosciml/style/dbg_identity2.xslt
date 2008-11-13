<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" xmlns:saxon="http://saxon.sf.net/" xmlns:wfs="http://www.opengis.net/wfs" xmlns:proc="urn:x-lcnp:proc" xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" xmlns:gsc="http://www.nrcan.gc.ca/gsc">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
<!-- remove the proc section -->
<xsl:template match="proc:*"/>
	<xsl:template match="ogc:PropertyName" >
	<!-- check each property name and change it to proper translation, repeat the same if nothing is found -->
	<xsl:variable name="priv_loc">//proc:map/*/<xsl:value-of select="."/></xsl:variable> 
	<xsl:variable name="priv_name" select="saxon:eval(saxon:expression($priv_loc))"/>
		<ogc:PropertyName><xsl:value-of select="$priv_name"/></ogc:PropertyName>
	</xsl:template>
	<!-- catch text nodes 
	<xsl:template match="text()" priority="-1">
		<xsl:if test="normalize-space(.) != ''">
	<xsl:value-of select="local-name(./parent::*)"/>
		</xsl:if>
	</xsl:template>-->
	<!-- the identity template -->
	<xsl:template match="wfs:GetFeature">
	<wfs:GetFeature service="{@service}" version="{@version}" maxFeatures="{@maxFeatures}">
	<xsl:apply-templates/>
	</wfs:GetFeature>
	</xsl:template>
	<xsl:template match="@typeName">
		<!-- get the mapped type -->
		<xsl:for-each select="//proc:map/*/proc:namespace">
		<xsl:namespace name="{@name}"><xsl:value-of select="."/></xsl:namespace>
		</xsl:for-each>
		<xsl:attribute name="typeName">
		<xsl:value-of select="//proc:map/*/@mappedType"/></xsl:attribute>
	</xsl:template>
	<xsl:template match="@*|node()" priority="-2">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
