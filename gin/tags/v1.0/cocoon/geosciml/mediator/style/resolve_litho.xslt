<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:proc="urn:x-lcnp:proc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" xmlns:gml="http://www.opengis.net/gml">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	
		<xsl:variable name="litho" select="proc:job/proc:request/*/ogc:Function/ogc:Literal"/>
		<xsl:variable name="litho_id" select="proc:job/proc:request/*/ogc:Function/ogc:Literal"/>
		<xsl:variable name="lithoList"><proc:list><proc:litho><xsl:value-of select="$litho"/></proc:litho><xsl:call-template name="getLitho"><xsl:with-param name="lith"><xsl:value-of select="$litho_id"/></xsl:with-param></xsl:call-template></proc:list></xsl:variable>	
		
		<xsl:variable name="pname" select="proc:job/proc:request/*/ogc:Function/ogc:PropertyName"/>
		
		<xsl:choose>
			<xsl:when test="count($lithoList/proc:litho-list/proc:litho) = 1">
			<ogc:PropertyIsEqualTo>
					<ogc:PropertyName><xsl:value-of select="$pname"/></ogc:PropertyName>
					<ogc:Literal><xsl:value-of select="$lithoList/proc:litho-list/proc:litho"/></ogc:Literal>
				</ogc:PropertyIsEqualTo>
			</xsl:when>
			<xsl:otherwise>

				<ogc:Or>
			<xsl:for-each select="$lithoList/proc:list/proc:litho">
				<ogc:PropertyIsEqualTo>
					<ogc:PropertyName><xsl:value-of select="$pname"/></ogc:PropertyName>
					<ogc:Literal><xsl:value-of select="."/></ogc:Literal>
				</ogc:PropertyIsEqualTo>
				</xsl:for-each>
			</ogc:Or>
			</xsl:otherwise>
		
		</xsl:choose>
		
	</xsl:template>
	<xsl:template name="getLitho">
	<xsl:param name="lith"/>
	<xsl:variable name="root" select="/proc:job/proc:data/gsml:GSML/gsml:member/gsml:GeologicVocabulary"/>

	<xsl:for-each select="/proc:job/proc:data/gsml:GSML/gsml:member/gsml:GeologicVocabulary/gml:definitionMember/gsml:ControlledConcept/gsml:linkToTarget/gsml:VocabRelation[gsml:source/@xlink:href=$lith]">
	<xsl:variable name="sub-litho" select="gsml:target/@xlink:href"/>
	<proc:age><xsl:value-of select="$sub-litho"/></proc:age>
	<xsl:call-template name="getLitho"><xsl:with-param name="lith"><xsl:value-of select="$sub-litho"/></xsl:with-param></xsl:call-template>
	</xsl:for-each>

	</xsl:template>
</xsl:stylesheet>
