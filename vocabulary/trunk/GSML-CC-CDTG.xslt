<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:xlink="http://www.w3.org/1999/xlink"

	xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:gml="http://www.opengis.net/gml"
	xmlns:js="urn:csiro:xl2xml:javascript"

	exclude-result-prefixes="xs ss msxsl js"
>
	<xs:annotation>
		<xs:documentation>The mapping ruleset used for generating GeoSciML Controlled Concept conformant XML instance document from CDTG vocabularies in Excel format.</xs:documentation>
		<xs:appinfo>v1.0.4</xs:appinfo>
	</xs:annotation>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />

	<msxsl:script implements-prefix="js" language="JavaScript">
		<![CDATA[
		function extractName(str)
		{
			var m = str.match(/:([^:]*)$/);
			return m ? m[1] : "";
		}
		]]>
	</msxsl:script>

	<!-- Extract global vocabulary properties -->
	<xsl:variable name="CGI_Vocabulary_ID" select="normalize-space(/ss:Workbook/ss:Worksheet[position() = 1]/ss:Table//ss:Cell[ss:NamedCell[@ss:Name = 'ClassifierScheme_URN']]/ss:Data/text())" />
	
	<xsl:variable name="Version" select="normalize-space(/ss:Workbook/ss:Worksheet[position() = 1]/ss:Table//ss:Cell[ss:NamedCell[@ss:Name = 'Version']]/ss:Data/text())" />
	
	<xsl:variable name="CGI_Vocabulary_Name" select="normalize-space(/ss:Workbook/ss:Worksheet[position() = 1]/ss:Table//ss:Cell[ss:NamedCell[@ss:Name = 'ConceptScheme_prefLabel']]/ss:Data/text())" />
	
	<xsl:variable name="CGI_CC_prefix" select="normalize-space(/ss:Workbook/ss:Worksheet[position() = 1]/ss:Table//ss:Cell[ss:NamedCell[@ss:Name = 'Classifier_Prefix']]/ss:Data/text())" />
	
			<xsl:variable name="id" select="generate-id()" />

	<xsl:template match="/">
		<GSML
			xmlns="urn:cgi:xmlns:CGI:GeoSciML:2.0"
			xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
			xsi:schemaLocation="urn:cgi:xmlns:CGI:GeoSciML:2.0 http://www.geosciml.org/geosciml/2.0/xsd/geosciml.xsd"
		>
			<xsl:comment>==========================================================================</xsl:comment>
			<xsl:comment> Generated by XL2XML Framework (CSIRO).                                   </xsl:comment>
			<xsl:comment> -                                                                        </xsl:comment>
			<xsl:comment> GeoSciML CC-CDTG ruleset v1.0.4                                          </xsl:comment>
			<xsl:comment> Ruleset revision date: 2009-07-15                                        </xsl:comment>
			<xsl:comment> Ruleset author: Pavel Golodoniuc, CSIRO Exploration and Mining           </xsl:comment>
			<xsl:comment> Revised by Stephen M Richard, Arizona Geological Survey 2009-07-15                                                                         </xsl:comment>
			<xsl:comment> Content owned by originators.                                            </xsl:comment>
			<xsl:comment>==========================================================================</xsl:comment>
			<member>
				<GeologicVocabulary gml:id="{concat('GV_', $id )}">
					<gml:name codeSpace="http://www.cgi-iugs.org/uri">
						<xsl:value-of select="concat( $CGI_Vocabulary_ID, ':', $Version)" />
					</gml:name>

					<!-- Populate dictionary with data -->
					<xsl:variable name="columns">
						<xsl:apply-templates select="(//ss:Table)[2]/ss:Row[1]/ss:Cell" />
					</xsl:variable>
					<xsl:variable name="data">
						<xsl:apply-templates select="(//ss:Table)[2]/ss:Row[position() &gt; 1]">
							<xsl:with-param name="columns" select="msxsl:node-set($columns)" />
						</xsl:apply-templates>
					</xsl:variable>
					<xsl:apply-templates select="msxsl:node-set($data)/Row" />
				</GeologicVocabulary>
			</member>
		</GSML>
	</xsl:template>

	<xsl:template match="ss:Row">
		<xsl:param name="columns" />
		<Row>
			<xsl:apply-templates select="ss:Cell">
				<xsl:with-param name="columns" select="$columns" />
			</xsl:apply-templates>
		</Row>
	</xsl:template>

	<xsl:template match="ss:Cell">
		<xsl:param name="columns" />
		<xsl:variable name="id" select="generate-id()" />
		<xsl:variable name="el" select="preceding-sibling::ss:Cell[@ss:Index][position() = 1]" />
		<xsl:variable name="index">
			<xsl:choose>
				<xsl:when test="@ss:Index">
					<xsl:value-of select="@ss:Index" />
				</xsl:when>
				<xsl:when test="$el">
					<xsl:value-of select="count($el/following-sibling::ss:Cell[following-sibling::ss:Cell[generate-id() = $id]]) + number($el/@ss:Index) + 1" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="position()" />
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="name">
			<xsl:if test="$columns">
				<xsl:value-of select="$columns/Cell[@index = $index]" />
			</xsl:if>
		</xsl:variable>
		<xsl:if test="not($columns) or ($columns and $name != '')">
			<Cell index="{ $index }">
				<xsl:if test="$columns">
					<xsl:attribute name="name">
						<xsl:value-of select="$name" />
					</xsl:attribute>
				</xsl:if>
				<xsl:value-of select="normalize-space(ss:Data/text())" />
			</Cell>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Row" xmlns="urn:cgi:xmlns:CGI:GeoSciML:2.0">
		<xsl:variable name="CGI_URN" select="normalize-space(Cell[@name = 'CGI_URN'])" />
		<xsl:variable name="SourceNote" select="normalize-space(Cell[@name = 'SourceNote'])" />

		<xsl:if test="$CGI_URN != ''">
			<gml:definitionMember>
				<ControlledConcept gml:id="{ concat('CC_', position()) }">
					<gml:description>
						<xsl:value-of select="Cell[@name = 'Definition']" />
						<xsl:if test="$SourceNote != ''">
							<xsl:value-of select="concat('&#10;Source: ', $SourceNote)" />
						</xsl:if>
					</gml:description>
					<gml:name codespace="LocalHierarchyKey">
						<xsl:value-of select="Cell[@name = 'Hkey']" />
					</gml:name>
					<gml:name codeSpace="http://www.cgi-iugs.org/uri">
						<xsl:value-of select="concat($CGI_CC_prefix, ':', $Version, ':', $CGI_URN)" />
					</gml:name>
					<name xml:lang="en">
						<xsl:value-of select="Cell[@name = 'Term']" />
					</name>
					<vocabulary xlink:href="urn:cgi:classifierScheme:CGI:{ $CGI_Vocabulary_Name }:{ $Version }" />

					<xsl:variable name="parent" select="(preceding-sibling::Row | following-sibling::Row)[Cell[@name = 'Term' and text() = current()/Cell[@name = 'Parent']/text()]]" />
					<xsl:if test="$parent">
						<linkToTarget>
							<VocabRelation gml:id="{ concat('rel_', $CGI_Vocabulary_Name, '_', position()) }">
								<gml:name>
									<xsl:value-of select="concat('rel_', $CGI_Vocabulary_Name, '_', position())" />
								</gml:name>
								<role codeSpace="http://www.cgi-iugs.org/uri">urn:cgi:classifier:CGI:VocabRelationsRoles:200811:broader_term</role>
								<source xlink:href="{ concat($CGI_CC_prefix, ':', $Version, ':', $CGI_URN) }" />
								<target xlink:href="{ concat($CGI_CC_prefix, ':', $Version, ':', $parent/Cell[@name = 'CGI_URN']) }" />
								<vocabulary xlink:href="urn:cgi:classifierScheme:CGI:{ $CGI_Vocabulary_Name }:{ $Version }" />
							</VocabRelation>
						</linkToTarget>
					</xsl:if>
				</ControlledConcept>
			</gml:definitionMember>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>