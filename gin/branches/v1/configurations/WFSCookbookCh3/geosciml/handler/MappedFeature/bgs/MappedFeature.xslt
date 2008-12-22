<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions" 
	xmlns:t="http://www.iugs.org/cgi/tempInternal" 
	xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" 
	xmlns:xlink="http://www.w3.org/1999/xlink" 
	xmlns:gml="http://www.opengis.net/gml" 
	xmlns:wfs="http://www.opengis.net/wfs" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.opengis.net/wfs http://schemas.opengis.net/wfs/1.1.0/wfs.xsd urn:cgi:xmlns:CGI:GeoSciML:2.0 http://www.geosciml.org/geosciml/2.0/xsd/geosciml.xsd" 
	>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="t:MappedFeature">
		<gsml:MappedFeature gml:id="{@gml:id}">
			<xsl:apply-templates select="gml:boundedBy"/>
			<!-- BGS do not record the observation method explicitly for our DigMapGB 50K data so the below are generic values to cover most cases. -->
			<!-- Should / can we use terms from Concept Definitions  TG? -->
			<gsml:observationMethod>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifierScheme:BGS:ObservationMethod">fieldObservation</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:observationMethod>
			<gsml:observationMethod>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifierScheme:BGS:ObservationMethod">Boreholes</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:observationMethod>
			<!-- BGS do not explicitly store accuracy information for each polygon with our DigMapGB 50K data. -->
			<!-- To Do: Check that there is no CGI URN scheme for positional accuracy that we should use.  -->
			<gsml:positionalAccuracy>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="http://urn.opengis.net">urn:ogc:def:nil:OGC:unknown</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:positionalAccuracy>
			<!-- samplingFrame is the same for all our solid data. Drift data would be "topographic surface" or similar; we do have a dictionary of 
				surface of mapping which is used by GSD data but not explicitly by DigMapGB 50K data. -->
			<gsml:samplingFrame xlink:href="urn:cgi:feature:BGS:EarthBedrockSurface"/>
			<gsml:specification>
				<!-- To Do: consider whether we should try to correctly specify which particular subtype of GeologicUnit this is in each case.
					Would require us to do some mapping from our Rock Classification Scheme to the correct subtype. -->
				<xsl:apply-templates select="t:specification/t:GeologicUnit"/>
			</gsml:specification>
			<gsml:shape>
				<xsl:apply-templates select="t:geom/*"/>
			</gsml:shape>
		</gsml:MappedFeature>
	</xsl:template>
	<xsl:template match="t:GeologicUnit">
		<gsml:GeologicUnit gml:id="{@gml:id}">
			<!-- We have not put a gml:description in as this is not explicitly stored with our DigMapGB 50K data although
				it would be possible to get one from our Lexicon -->
			<gml:name codeSpace="http://www.cgi-iugs.org/uri">
				<xsl:value-of select="t:name_urn"/>
			</gml:name>
			<gml:name codeSpace="urn:cgi:classifierScheme:BGS:StratigraphicLexicon:description">
				<xsl:value-of select="t:descriptive_name"/>
			</gml:name>
			<gsml:observationMethod>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifier:BGS:ObservationMethod">Summary of published description</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:observationMethod>
			<gsml:purpose>instance</gsml:purpose>
			<gsml:preferredAge>
				<gsml:GeologicEvent>
					<gsml:eventAge>
						<gsml:CGI_TermValue>
							<gsml:value codeSpace="urn:cgi:classifierScheme:ICS:StratChart:2008">
								<xsl:value-of select="t:age"/>
							</gsml:value>
						</gsml:CGI_TermValue>
					</gsml:eventAge>
					<!-- BGS does not explicitly store any information on the eventEnvironment or event process with our DigMapGB 50K data although it possibly
						be indirectly deduced with some rules applied to our Rock Classification Terms but we are not sure that we could implement
						this for Testbed 3.-->
					<gsml:eventEnvironment>
						<gsml:CGI_TermValue>
							<gsml:value codeSpace="http://urn.opengis.net">urn:ogc:def:nil:OGC:unknown</gsml:value>
						</gsml:CGI_TermValue>
					</gsml:eventEnvironment>
					<gsml:eventProcess>
						<gsml:CGI_TermValue>
							<gsml:value codeSpace="http://urn.opengis.net">urn:ogc:def:nil:OGC:unknown</gsml:value>
						</gsml:CGI_TermValue>
					</gsml:eventProcess>
				</gsml:GeologicEvent>
			</gsml:preferredAge>
			<gsml:geologicUnitType
				xlink:href="urn:cgi:classifier:CGI:GeologicUnitType:200811:lithostratigraphic_unit"/>
			<gsml:rank codeSpace="urn:cgi:classifierScheme:BGS:Rank">
				<xsl:value-of select="t:rank"/>
			</gsml:rank>
			<gsml:classifier xlink:href="{t:name_urn}"/>
			<xsl:if test="t:lithology_1">
			<gsml:composition>
				<gsml:CompositionPart>
					<gsml:role codeSpace="urn:cgi:classifierScheme:BGS:RoleVocab">dominantConstituent</gsml:role>
					<gsml:lithology xlink:href="{t:lithology_1}"/>
					<xsl:if test="t:lithology_2">
						<gsml:lithology xlink:href="{t:lithology_2}"/>
					</xsl:if>
					<gsml:proportion>
						<gsml:CGI_NumericValue>
							<gsml:principalValue uom="urn:ogc:def:uom:UCUM:%25">100</gsml:principalValue>
						</gsml:CGI_NumericValue>
					</gsml:proportion>
				</gsml:CompositionPart>
			</gsml:composition>
			</xsl:if>
		</gsml:GeologicUnit>
	</xsl:template>
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
