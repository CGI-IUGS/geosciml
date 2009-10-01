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
	
	<xsl:template match="gsml:GeologicVocabulary">
		<xsl:variable name="conceptScheme">
			<xsl:value-of select="( gml:name[@codeSpace='http://www.cgi-iugs.org/uri'] )"/>
		</xsl:variable>
		<!-- if need to select identifier using a priority sequence, then try ...
	select="( gml:identifier[@codeSpace='http://www.cgi-iugs.org/uri'] | gsml:identifier[@codeSpace='http://www.cgi-iugs.org/uri'] | gml:name[@codeSpace='http://www.cgi-iugs.org/uri'] )[position()=1]" -->
		<rdf:RDF>
			<owl:Ontology rdf:about="{$conceptScheme}">
				<owl:imports rdf:resource="./GSMLControlledConceptSKOS.rdf"/>
			</owl:Ontology>
			<skos:ConceptScheme rdf:about="{$conceptScheme}">
				<xsl:apply-templates select="gml:name[ not(@codeSpace='http://www.cgi-iugs.org/uri') ] |
					gml:description"/>
			</skos:ConceptScheme>
			<xsl:apply-templates select="gml:definitionMember/gsml:ControlledConcept">
				<xsl:with-param name="conceptScheme" select="$conceptScheme"/>
			</xsl:apply-templates>
		</rdf:RDF>
	</xsl:template>
	
	<xsl:template match="gml:definitionMember/gsml:ControlledConcept">
		<xsl:param name="conceptScheme"/>
		<xsl:variable name="concept" select="gml:name[@codeSpace='http://www.cgi-iugs.org/uri']"/>
		<skos:Concept rdf:about="{gml:name[@codeSpace='http://www.cgi-iugs.org/uri']}">
			<!-- unclear about syntax of how to use a param passed in from calling template 
			<skos:inScheme
				rdf:resource="{$conceptScheme}"/> -->
			<xsl:apply-templates select="gsml:name | gml:description | gsml:vocabulary | gsml:prototype | gsml:linkToTarget/gsml:VocabRelation">
				<xsl:with-param name="concept" select="$concept"/>
			</xsl:apply-templates>
			
			<!-- Process skos:broader relationship -->
		<!-- 	<xsl:for-each select="../../gml:definitionMember/gsml:ControlledConcept[gsml:linkToTarget/gsml:VocabRelation/gsml:target[@xlink:href=$concept]]">
				<skos:broader rdf:resource="{ ./gml:name[@codeSpace='http://www.cgi-iugs.org/uri'] }"/>
			</xsl:for-each> -->
			
			<!-- SMR- find all VocabRelations of role 'Broader term' with source = the current concept 
		don't need this- vocabRelation template handles-->
			
		<!-- 	<xsl:for-each select="//gsml:VocabRelation[role[@codeSpace='urn:cgi:classifierScheme:CGI:VocabRelationRoles:200811']='Broader term' ][gsml:source/@xlink:href='$concept']">
				<skos:broader>
					 <xsl:attribute name="rdf:resource">
					   <xsl:value-of select="./target/@xlink:href"  />
					 </xsl:attribute>
				</skos:broader>
			</xsl:for-each>  -->
			
		</skos:Concept>
	</xsl:template>
	<xsl:template match="gsml:name">
		<skos:prefLabel xml:lang="{@xml:lang}">
			<xsl:value-of select="."/>
		</skos:prefLabel>
	</xsl:template>
	<xsl:template match="gsml:identifier"/>
	<xsl:template match="gml:name">
		<skos:prefLabel>
			<xsl:value-of select="."/>
		</skos:prefLabel>
	</xsl:template>
	<xsl:template match="gml:description">
		<skos:definition>
			<xsl:value-of select="normalize-space(.)"/>
		</skos:definition>
	</xsl:template>
	<xsl:template match="gsml:vocabulary">
		<skos:inScheme rdf:resource="{@xlink:href}"/>
	</xsl:template>
	<xsl:template match="gsml:prototype">
		<gsmlCC:prototype rdf:resource="{@xlink:href}"/>
	</xsl:template>
	<xsl:template match="gsml:linkToTarget/gsml:VocabRelation">
		<xsl:choose>
			<xsl:when test="contains(gsml:role,'Broader') or contains(gsml:role,'broader')">
				<skos:broader>
					<xsl:attribute name="rdf:resource">
							<xsl:value-of select = "gsml:target/@xlink:href"/>
					</xsl:attribute>
				</skos:broader>
			</xsl:when>
			<xsl:when test="contains(gsml:role,'Narrower') or contains(gsml:role,'narrower')">
				<skos:narrower>
					<xsl:attribute name="rdf:resource">
							<xsl:value-of select = "gsml:target/@xlink:href"/>
					</xsl:attribute>
				</skos:narrower> 
			</xsl:when>
			<xsl:when test="contains(gsml:role,'Part') or contains(gsml:role,'part')">
				<skos:broader>
					<xsl:attribute name="rdf:resource">
							<xsl:value-of select = "gsml:target/@xlink:href"/>
					</xsl:attribute>		
				</skos:broader>
			</xsl:when>
			<xsl:otherwise>
				<skos:related>
					<xsl:attribute name="rdf:resource">
							<xsl:value-of select = "gsml:target/@xlink:href"/>
					</xsl:attribute>				
				</skos:related>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>