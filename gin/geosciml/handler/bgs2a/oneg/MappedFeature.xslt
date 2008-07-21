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
	<xsl:template match="/">
	<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="wfs:FeatureCollection">
	<wfs:FeatureCollection gml:id="wfs.bgs.tb2a.featureCollection">
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
	
	<xsl:template match="ms:GBR_BGS_625K_BLT">
	<gsml:MappedFeature gml:id="oneg-bgs-mf-{@fid}">
	<gsml:observationMethod>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifierScheme:BGS:ObservationMethod">unknown</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:observationMethod>
			<gsml:positionalAccuracy>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifierScheme:BGS:PositionalAccuracy">unknown</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:positionalAccuracy>
			<gsml:samplingFrame xlink:href="urn:cgi:feature:BGS:EarthBedrockSurface"/>
			<!-- we know in this particular case that specification will always be an inner_ref -->
			<gsml:specification>
				<gsml:GeologicUnit gml:id="gu-{ms:RCS_D}">
					<gml:description>description of <xsl:value-of select="ms:RCS_D"/></gml:description>
					<gml:name codeSpace="urn:ietf:rfc:2141">urn:cgi:feature:BGS:<xsl:value-of select="ms:RCS_D"/></gml:name>
				</gsml:GeologicUnit>
			</gsml:specification>
<gsml:shape><xsl:copy-of select="ms:msGeometry/*"/></gsml:shape>
	</gsml:MappedFeature>
	</xsl:template>

	<!-- this template gets rid of all stuff that has not been trapped -->
	<xsl:template match="*|@*">
	
	</xsl:template>
	
</xsl:stylesheet>
