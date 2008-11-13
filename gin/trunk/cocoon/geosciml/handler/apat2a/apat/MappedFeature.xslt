<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:xlink="http://www.w3.org/1999/xlink" 
xmlns:gml="http://www.opengis.net/gml" 
xmlns:wfs="http://www.opengis.net/wfs"
xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" 
 xmlns:esri="http://www.esri.com/esri"
>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="wfs:FeatureCollection">
	<wfs:FeatureCollection gml:id="wfs.apat.tb2a.featureCollection">
	<xsl:apply-templates/>
	</wfs:FeatureCollection>
	</xsl:template>
	<xsl:template match="gml:featureMember">

	<gml:featureMember>
	<!-- process all featureMember -->
	<xsl:apply-templates/>
	</gml:featureMember>
	</xsl:template>
	<xsl:template match="gml:boundedBy">
		<!-- copy the boundedBy block -->
	<xsl:copy-of select="gml:boundedBy"/>
	</xsl:template>
	
	<xsl:template match="esri:ITA_APATSGI_EN_500k_Geologicformation-ITA_APATSGI_EN_500k_Geologicformation">
	<gsml:MappedFeature gml:id="apat-mf-{@fid}">
	<gsml:observationMethod>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifierScheme:APAT:ObservationMethod">Map interpretation</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:observationMethod>
			<gsml:positionalAccuracy>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifierScheme:APAT:PositionalAccuracy">+/- 250 meters</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:positionalAccuracy>
			<gsml:samplingFrame xlink:href="urn:cgi:feature:APAT:EarthBedrockSurface">unknown</gsml:samplingFrame>
			<!-- we know in this particular case that specification will always be an inner_ref -->
			<gsml:specification>
				<gsml:GeologicUnit gml:id="gu-{@gml:id}">
					<gml:description>description of <xsl:value-of select="@gml:id"/></gml:description>
					<gml:name codeSpace="urn:ietf:rfc:2141">urn:cgi:feature:APAT:<xsl:value-of select="translate(esri:cartobase.geo.geology500k.formazione,' ','_')"/></gml:name>
				</gsml:GeologicUnit>
			</gsml:specification>
			<gsml:specification>
				<gsml:LithodermicUnit gml:id="gu-{@gml:id}">
					<gml:description>description of Lithostratigraphic units</gml:description>
					<gml:name codeSpace="urn:ietf:rfc:2141">urn:cgi:feature:APAT:<xsl:value-of select="translate(esri:cartobase.geo.geology500k.litho1,' ','_')"/></gml:name>
				</gsml:LithodermicUnit>
			</gsml:specification>
<gsml:shape><xsl:copy-of select="esri:_shape_/*"/></gsml:shape>
	</gsml:MappedFeature>
	</xsl:template>

	<!-- this template gets rid of all stuff that has not been trapped -->
	<xsl:template match="*|@*">
	
	</xsl:template>
	
</xsl:stylesheet>
