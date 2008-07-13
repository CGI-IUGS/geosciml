<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:fn="http://www.w3.org/2005/xpath-functions" 
xmlns:gml="http://www.opengis.net/gml" 
xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" 
xmlns:ogc="http://www.opengis.net/ogc" 
xmlns="http://www.opengis.net/sld" 
xmlns:proc="urn:x-lcnp:proc" 
xmlns:saxon="http://saxon.sf.net/">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="proc:page|proc:sld">
	<!-- don't emit those tag-->
	<xsl:apply-templates/>
	<!-- those section are not even processed -->
	<xsl:template match="proc:schema|proc:semantic"/>
	</xsl:template>
	<xsl:template match="StyledLayerDescriptor">
		<!-- a complete rule to be processed , at this point, we must check in the mapping if we have 1-more private rules that matches this public rule.  This stylesheet perform a naive rewrite of the rule-->
		<!-- repeat the Rule as many time as we have a private property matching this one -->
		<NamedLayer>
		<Name>bedrock</Name>
		<UserStyle>
		<Title>IUGS color scheme</Title>
		<FeatureTypeStyle>
		<xsl:apply-templates select="/proc:page/proc:semantic/proc:mapping/proc:property"/>
		</FeatureTypeStyle>
		</UserStyle>
		</NamedLayer>
	</xsl:template>
	<xsl:template match="FeatureTypeName">
	<!-- to do, put this in the mapping, or as a parameter -->
	<FeatureTypeName>bedrock</FeatureTypeName>
	</xsl:template>
	<xsl:template match="proc:property">
	<!-- process the rule from the matching, this essentially force the processing of all the Rule, sometimes many times, by replacing the rule, the BIG assumption here is that the Rule is always a simple PropertyIsEqualTo rule WARNING : to improve -->
	<!-- p is the public value-->
	<xsl:variable name="p" select="@value"/>
	<!-- r is the rule in the stylesheet that must be reproduced -->
	<xsl:variable name="r" select="/proc:page/proc:sld/StyledLayerDescriptor//Rule[ogc:Filter//ogc:Literal=$p]"/>
	<Rule>
		<xsl:copy-of select="$r/Name"/>
		<xsl:copy-of select="$r/Title"/>
		<ogc:Filter>
			<ogc:PropertyIsEqualTo>
				<ogc:PropertyName><xsl:call-template name="rw_property"><xsl:with-param name="p"><xsl:value-of select="$r/ogc:Filter/ogc:PropertyIsEqualTo/ogc:PropertyName"/></xsl:with-param></xsl:call-template></ogc:PropertyName>
				<ogc:Literal><xsl:value-of select="."/></ogc:Literal>
			</ogc:PropertyIsEqualTo>
		</ogc:Filter>
		<!-- TODO: add other symbolisers -->
		<xsl:apply-templates select="$r/PolygonSymbolizer"/>
	</Rule>
	</xsl:template>
	<xsl:template match="ogc:PropertyName">
	<ogc:PropertyName><xsl:call-template name="rw_property"><xsl:with-param name="p"><xsl:value-of select="."/></xsl:with-param></xsl:call-template></ogc:PropertyName>
	</xsl:template>
	<xsl:template name="rw_property">
		<!-- convert a public property into a private property -->
		<xsl:param name="p"/>
		<!-- the root of the schema is irrelevant since it should be controlled by the layername -->
		<xsl:variable name="pub_prop">/proc:page/proc:schema/*/<xsl:value-of select="$p"/></xsl:variable>
		<xsl:choose>
			<xsl:when test="$p = ''">ERROR</xsl:when>
			<xsl:otherwise><xsl:value-of select="saxon:eval(saxon:expression($pub_prop))"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!-- the identity template , just copy the tag down-->
	<xsl:template match="@*|node()" priority="-2">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
