<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:uc3a="http://www.deegree.org/app" xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gml="http://www.opengis.net/gml" xmlns:wfs="http://www.opengis.net/wfs" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="uc3a:MappedFeature">
		<gsml:MappedFeature gml:id="{@gml:id}">
			<xsl:apply-templates select="gml:boundedBy"/>
			<gsml:specification>
				<xsl:apply-templates select="uc3a:specification/uc3a:GeologicUnit"/>
			</gsml:specification>
			<gsml:shape>
				<xsl:apply-templates select="uc3a:geom/*"/>
			</gsml:shape>
		</gsml:MappedFeature>
	</xsl:template>
	<xsl:template match="uc3a:GeologicUnit">
		<gsml:GeologicUnit gml:id="{@gml:id}">
			<gml:description>
				<xsl:value-of select="uc3a:description"/>
			</gml:description>
			<gml:name codeSpace="urn:ietf:rfc:2141">
				<xsl:value-of select="uc3a:name_urn"/>
			</gml:name>
			<gsml:observationMethod>
				<gsml:CGI_TermValue>
					<gsml:value codeSpace="urn:cgi:classifier:BGS:ObservationMethod">BGS mapping</gsml:value>
				</gsml:CGI_TermValue>
			</gsml:observationMethod>
			<gsml:purpose>instance</gsml:purpose>
			<gsml:preferredAge>
				<gsml:GeologicEvent>
					<gsml:eventAge>
						<gsml:CGI_TermValue xsi:type="gsml:CGI_TermValueType">
							<gsml:value codeSpace="urn:cgi:classifier:ICS:StratChart:2008">
								<xsl:value-of select="uc3a:age"/>
							</gsml:value>
						</gsml:CGI_TermValue>
					</gsml:eventAge>
					<gsml:eventEnvironment>
						<gsml:CGI_TermValue>
							<gsml:value codeSpace="urn:cgi:classifier:BGS:Environment">unknown</gsml:value>
						</gsml:CGI_TermValue>
					</gsml:eventEnvironment>
					<gsml:eventProcess>
						<gsml:CGI_TermValue>
							<gsml:value codeSpace="urn:cgi:classifier:BGS:eventProcess">unknown</gsml:value>
						</gsml:CGI_TermValue>
					</gsml:eventProcess>
				</gsml:GeologicEvent>
			</gsml:preferredAge>
			<gsml:rank codeSpace="urn:cgi:classifierScheme:BGS:Rank">
				<xsl:value-of select="uc3a:rank"/>
			</gsml:rank>
			<gsml:composition></gsml:composition>
		</gsml:GeologicUnit>
	</xsl:template>
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
