<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:fn="http://www.w3.org/2005/xpath-functions"  
xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" 
xmlns:esri="http://www.esri.com/esri" 
xmlns:gml="http://www.opengis.net/gml" 
xmlns:wfs="http://www.opengis.net/wfs" 
xmlns:xlink="http://www.w3.org/1999/xlink" 
xmlns:map="urn:x-lcnp:map">
   <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />

<!-- here, we load our mapping rules, remember that the current directory location if the path of this XSLT file (somewhere in handler/[profile]/[datasource] -->
   <xsl:variable name="litho_map" select="document('../../../mediator/mapping/apat_litho_mapping.xml')" />
      <xsl:variable name="age_map" select="document('../../../mediator/mapping/apat_mapping.xml')" />

<xsl:template match="wfs:FeatureCollection">
	<wfs:FeatureCollection gml:id="featureCollection.1">
	<xsl:copy-of select="gml:boundedBy"/>
	<xsl:apply-templates select="gml:featureMember"/>
	</wfs:FeatureCollection>
</xsl:template>

<xsl:template match="gml:featureMember">
<gml:featureMember>
	<xsl:apply-templates/>
</gml:featureMember>
</xsl:template>
  
   <xsl:template match="esri:ITA_APATSGI_EN_500k_Geologicformation-ITA_APATSGI_EN_500k_Geologicformation">
<gsml:MappedFeature gml:id="{@fid}">
	<gsml:observationMethod>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifierScheme:APAT:ObservationMethod">unknown</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:observationMethod>
			<gsml:positionalAccuracy>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifierScheme:APAT:PositionalAccuracy">unknown</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:positionalAccuracy>
			<gsml:samplingFrame xlink:href="urn:cgi:feature:BGS:EarthBedrockSurface"/>
			<!-- we know in this particular case that specification will always be an inner_ref -->
<gsml:specification>
<gsml:GeologicUnit gml:id="{esri:cartobase.geo.geology500k.lithounit}">
<gml:name>Geologic Units description</gml:name>
<gml:name codeSpace="urn:ietf:rfc:2141">urn:cgi:feature:APAT:<xsl:value-of select="esri:cartobase.geo.geology500k.lithounit"/></gml:name>
<gsml:composition>
	<gsml:CompositionPart>
			<xsl:variable name="litho" select="esri:cartobase.geo.geology500k.litho1" />	
		<gsml:lithology xlink:href="{$litho_map/map:ontology/map:rules/map:rule[@local=$litho]/@global}"/>
	</gsml:CompositionPart>
</gsml:composition>
	<gsml:preferredAge>
		<gsml:GeologicEvent>
		<gsml:eventAge>
		<xsl:variable name="inf" select="esri:cartobase.geo.geology500k.etainf"/>
		<xsl:variable name="sup" select="esri:cartobase.geo.geology500k.etasup"/>
			<gsml:CGI_TermRange>
                                    <gsml:lower>
                                        <gsml:CGI_TermValue>
                                            <gsml:value codeSpace="urn:cgi:classifierScheme:ICS:StratChart:2008"><xsl:value-of select="$age_map/map:ontology/map:rules/map:rule[@local=$inf]/@global"/></gsml:value>
                                        </gsml:CGI_TermValue>
                                    </gsml:lower>
                                    <gsml:upper>
                                        <gsml:CGI_TermValue>
                                            <gsml:value codeSpace="urn:cgi:classifierScheme:ICS:StratChart:2008"><xsl:value-of select="$age_map/map:ontology/map:rules/map:rule[@local=$sup]/@global"/></gsml:value>
                                        </gsml:CGI_TermValue>
                                    </gsml:upper>
                                </gsml:CGI_TermRange>		
			</gsml:eventAge>
		</gsml:GeologicEvent>
	</gsml:preferredAge>
	</gsml:GeologicUnit>
	</gsml:specification>
	<gsml:shape><xsl:copy-of select="esri:_shape_/*"/></gsml:shape>
	</gsml:MappedFeature>
   </xsl:template>
   <xsl:template match="text()"/>
</xsl:stylesheet>

