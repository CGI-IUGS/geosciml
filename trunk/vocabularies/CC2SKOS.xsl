<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0"
	xmlns:gml="http://www.opengis.net/gml"
	xmlns:xlink="http://www.w3.org/1999/xlink"
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#"
	xmlns:skos="http://www.w3.org/2004/02/skos/core#"
	xmlns:owl="http://www.w3.org/2002/07/owl#"
	xmlns:gsmlCC="http://geosciml.org/release/3.0_alpha/rdf/gsmlCC#"
	version="2.0">
	<xsl:output indent="yes"/>
	<xsl:strip-space elements="*"/>
	
	<xsl:template
		match="gsml:GeologicVocabulary">
		<xsl:variable
			name="vocabulary"
			select="gsml:identifier[@codeSpace='urn:ietf:rfc:2141']"/>
<rdf:RDF>
<owl:Ontology rdf:about="{$vocabulary}">
<owl:imports rdf:resource="./GSMLControlledConceptSKOS.rdf"/>
</owl:Ontology>
<skos:ConceptScheme rdf:about="{$vocabulary}"/>
			<xsl:apply-templates>
				<xsl:with-param
					name="vocabulary"
					select="$vocabulary"/>
			</xsl:apply-templates>
</rdf:RDF>
	</xsl:template>
	
	<xsl:template
		match="gml:definitionMember/gsml:ControlledConcept">
		<xsl:param
			name="vocabulary"/>
		<xsl:variable
			name="concept"
			select="gsml:identifier[@codeSpace='urn:ietf:rfc:2141']"/>
<skos:Concept rdf:about="{gsml:identifier[@codeSpace='urn:ietf:rfc:2141']}">
<skos:inScheme rdf:resource="{$vocabulary}"/>
			<xsl:apply-templates>
				<xsl:with-param
					name="concept"
					select="$concept"/>
			</xsl:apply-templates>
</skos:Concept>
	</xsl:template>
	
	<xsl:template
		match="gsml:name">
<skos:prefLabel xml:lang="{@xml:lang}">
			<xsl:value-of
				select="."/>
</skos:prefLabel>
	</xsl:template>
	
	<xsl:template
		match="gsml:identifier"/>
	<xsl:template
		match="gml:name"/>
	<xsl:template
		match="gml:description">
<skos:definition><xsl:value-of select="normalize-space(.)"/></skos:definition>
	</xsl:template>
	
	<xsl:template
		match="gsml:vocabulary"><!-- 
		<skos:inScheme
			rdf:resource="{@xlink:href}"/> -->
	</xsl:template>
	
	<xsl:template
		match="gsml:prototype">
<gsmlCC:prototype rdf:resource="{@xlink:href}"/>
	</xsl:template>
	
	<xsl:template
		match="gsml:linkToTarget/gsml:VocabRelation">
		<xsl:choose>
			<xsl:when
				test="gsml:role = 'narrower term'">
<skos:broader rdf:resource="{gsml:target/@xlink:href}"/>
			</xsl:when>
			<xsl:when
				test="gsml:role = 'broader term'">
<skos:narrower rdf:resource="{gsml:target/@xlink:href}"/>
			</xsl:when>
			<xsl:otherwise>
<skos:related rdf:resource="{gsml:target/@xlink:href}"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
</xsl:stylesheet>
