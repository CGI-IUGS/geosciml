<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:uc3b="http://www.deegree.org/app" xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gml="http://www.opengis.net/gml" xmlns:wfs="http://www.opengis.net/wfs"  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="wfs:FeatureCollection">
		<wfs:FeatureCollection gml:id="{@gml:id}">
			<xsl:apply-templates/>
		</wfs:FeatureCollection>
	</xsl:template>
	<xsl:template match="gml:boundedBy">
	<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template match="gml:featureMember">
		<gml:featureMember>
			<xsl:apply-templates/>
		</gml:featureMember>
	</xsl:template>
	<xsl:template match="uc3b:GeologicUnit">
		<gsml:GeologicUnit gml:id="{@gml:id}">
			<gml:description><xsl:value-of select="uc3b:description"/></gml:description>
			<gml:name codeSpace="urn:ietf:rfc:2141"><xsl:value-of select="uc3b:urn"/></gml:name>
			<gsml:observationMethod>
		<gsml:CGI_TermValue>
			<gsml:value codeSpace="urn:cgi:classifier:BGS:ObservationMethod">sur le terrain</gsml:value>
		</gsml:CGI_TermValue>
	</gsml:observationMethod>
	<gsml:purpose>instance</gsml:purpose>
	<xsl:apply-templates select="uc3b:occurence"/>
	<gsml:preferredAge>
		<gsml:GeologicEvent>
			<gsml:eventAge>
				<gsml:CGI_TermValue xsi:type="gsml:CGI_TermValueType">
					<gsml:value codeSpace="urn:cgi:classifierScheme:BGS:StratigraphicLexicon:1986"><xsl:value-of select="uc3b:preferedAge/uc3b:GeologicEvent/uc3b:age_urn"/></gsml:value>
				</gsml:CGI_TermValue>
			</gsml:eventAge>
			<gsml:eventEnvironment>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifier:BGS:Environment">uc3b:preferedAge/uc3b:GeologicEvent/uc3b:event_environment</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:eventEnvironment>
			<gsml:eventProcess>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifier:BGS:eventProcess">uc3b:preferedAge/uc3b:GeologicEvent/uc3b:event_environment/uc3b:event_type</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:eventProcess>
		</gsml:GeologicEvent>
	</gsml:preferredAge>
	<gsml:rank codeSpace="urn:cgi:classifierScheme:BGS:Rank">unknown</gsml:rank>
		</gsml:GeologicUnit>
	</xsl:template>
	<xsl:template match="uc3b:occurence">
		<gsml:occurence>
				<gsml:MappedFeature gml:id="{uc3b:MappedFeature/@gml:id}">
				<xsl:copy-of select="uc3b:MappedFeature/gml:boundedBy"/>
				<gsml:shape><xsl:copy-of select="uc3b:MappedFeature/uc3b:geom/*"/></gsml:shape>
				</gsml:MappedFeature>
		</gsml:occurence>
	</xsl:template>
</xsl:stylesheet>
