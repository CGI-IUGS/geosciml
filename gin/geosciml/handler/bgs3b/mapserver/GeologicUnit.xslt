<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:ms="http://mapserver.gis.umn.edu/mapserver"  xmlns:gsml="urn:cgi:xmlns:CGI:GeoSciML:2.0" 
  xmlns:gml="http://www.opengis.net/gml" xmlns:wfs="http://www.opengis.net/wfs" xmlns:xlink="http://www.w3.org/1999/xlink"  xmlns:map="urn:x-lcnp:map">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- here, we load our mapping rules, remember that the current directory location if the path of this XSLT file (somewhere in handler/[profile]/[datasource] -->
	<xsl:variable name="ages" select="document('../../../mediator/mapping/bgs_mapping.xml')"/>
	<xsl:template match="wfs:*|gml:featureMember">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
	<xsl:template match="ms:GBR_BGS_625k_BLT">
		<gsml:GeologicUnit gml:id="urn:CGI:feature:BGS:{ms:LEX}">
		<!-- stripped down version of xslt, for demonstration purpose -->
		<gsml:preferredAge>
			<gsml:GeologicEvent>
				<gsml:eventAge>
					<gsml:CGI_TermValue>
					
				<xsl:variable name="age" select="ms:AGE_ONEGL"/>
						<gsml:value codeSpace="urn:cgi:classifierScheme:ICS:StratChart2008"><xsl:value-of select="$ages/map:ontology/map:rules/map:rule[@local=$age]/@global"/></gsml:value>
					</gsml:CGI_TermValue>
				</gsml:eventAge>
			</gsml:GeologicEvent>
		</gsml:preferredAge>
		
		</gsml:GeologicUnit>
	</xsl:template>
</xsl:stylesheet>
