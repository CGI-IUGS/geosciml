<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xlink="http://www.w3.org/1999/xlink" 
	xmlns:gml="http://www.opengis.net/gml" 
	xmlns:wfs="http://www.opengis.net/wfs"
	xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" 
	xmlns:ms="http://mapserver.gis.umn.edu/mapserver"
	>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="ms:msFeatureCollection">
		<wfs:FeatureCollection>
			<xsl:apply-templates />
		</wfs:FeatureCollection>
	</xsl:template>
	<xsl:template match="ms:GBR_BGS_625k_BLS">
		<gsml:MappedFeature gml:id="{@gml:id}">
			<xsl:apply-templates select="gml:boundedBy"/>
			<gsml:observationMethod>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="http://urn.opengis.net">urn:ogc:def:nil:OGC::unknown</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:observationMethod>
			<gsml:positionalAccuracy>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="http://urn.opengis.net">urn:ogc:def:nil:OGC::unknown</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:positionalAccuracy>
			<gsml:samplingFrame xlink:href="urn:cgi:feature:BGS:EarthBedrockSurface"/>
			<!-- we know in this particular case that specification will always be an inner_ref -->
			<gsml:specification>
				<gsml:GeologicUnit gml:id="gu.{@gml:id}">
					<gml:description><xsl:value-of select="ms:LEX_D"/></gml:description>
					<gml:name codeSpace="urn:cgi:classifierScheme:BGS:StratigraphicLexicon:description"><xsl:value-of select="ms:LEX_D"/></gml:name>
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
									<gsml:value codeSpace="urn:cgi:classifierScheme:ICS:StratChart:2008:description">
										<xsl:value-of select="ms:AGE_ONEGL"/>
									</gsml:value>
								</gsml:CGI_TermValue>
							</gsml:eventAge>
							<gsml:eventEnvironment>
								<gsml:CGI_TermValue>
									<gsml:value codeSpace="http://urn.opengis.net">urn:ogc:def:nil:OGC::unknown</gsml:value>
								</gsml:CGI_TermValue>
							</gsml:eventEnvironment>
							<gsml:eventProcess>
								<gsml:CGI_TermValue>
									<gsml:value codeSpace="http://urn.opengis.net">urn:ogc:def:nil:OGC::unknown</gsml:value>
								</gsml:CGI_TermValue>
							</gsml:eventProcess>
						</gsml:GeologicEvent>
					</gsml:preferredAge>
					<gsml:geologicUnitType
						xlink:href="urn:cgi:classifier:CGI:GeologicUnitType:200811:geologic_unit"/>
					<gsml:composition>
						<gsml:CompositionPart>
							<gsml:role codeSpace="urn:cgi:classifierScheme:BGS:RoleVocab">dominantConstituent</gsml:role>
							<gsml:lithology xlink:href="{concat('urn:cgi:classifier:BGS:Lithology:description:', translate(ms:RCS_D, ' ,', '__'))}" />
							<gsml:proportion>
								<gsml:CGI_NumericValue>
									<gsml:principalValue uom="urn:ogc:def:uom:UCUM::%25">100</gsml:principalValue>
								</gsml:CGI_NumericValue>
							</gsml:proportion>
						</gsml:CompositionPart>
					</gsml:composition>
				</gsml:GeologicUnit>
			</gsml:specification>
			<gsml:shape><xsl:copy-of select="ms:msGeometry/*"/></gsml:shape>
		</gsml:MappedFeature>
	</xsl:template>
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>