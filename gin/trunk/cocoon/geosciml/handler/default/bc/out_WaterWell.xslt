<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions"
xmlns:gml="http://www.opengis.net/gml" 
xmlns:wfs="http://www.opengis.net/wfs"  
xmlns:xlink="http://www.w3.org/1999/xlink" 
xmlns:moee="http://www.deegree.org/app" 
xmlns:sa="http://www.opengis.net/sampling/1.0.0" 
xmlns:om="http://www.opengis.net/om/1.0.0" 
xmlns:cv="http://www.opengis.net/cv/0.2" 
xmlns:gsml="http://www.cgi-iugs.org/xml/GeoSciML/2" 
xmlns:gwml="http://www.nrcan.gc.ca/xml/gwml/1"
xmlns:prod="http://openmaps.gov.bc.ca"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<xsl:apply-templates select="//wfs:FeatureCollection"/>
	<!-- must match unique instance of the keys-->
	</xsl:template>
	<xsl:template match="wfs:FeatureCollection">
	<wfs:FeatureCollection>
	<xsl:variable name="root" select="/"/>
		<xsl:for-each select="distinct-values(gml:featureMember/prod:WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_LITHOLOGY_SVW/prod:WELL_ID)">
		<gwml:WaterWell gml:id="urn.x-ngwd.bc.waterwell.{.}">
		<xsl:variable name="tag"><xsl:value-of select="."/></xsl:variable>
		<gml:name codeSpace="ngwd">urn:x-ngwd:bc:well_<xsl:value-of select="."/></gml:name>
		<gml:name codeSpace="bc"><xsl:value-of select="."/></gml:name>
		<xsl:variable name="refWell"><xsl:copy-of select="$root//prod:WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_LITHOLOGY_SVW[prod:WELL_ID = $tag]"/></xsl:variable>
		<xsl:variable name="location"><xsl:value-of select="$refWell/prod:WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_LITHOLOGY_SVW[1]/prod:GEOMETRY/gml:Point/gml:coordinates"/></xsl:variable>
		<gml:boundedBy>
				<gml:Envelope srsName="EPSG:4326">
					<gml:coordinates>
					<xsl:value-of select="$location"/>
					</gml:coordinates>
				</gml:Envelope>
			</gml:boundedBy>
			sa:sampledFeature xlink:href="urn:x-ogc:def:nil:OGC:unknown"/>
			<sa:relatedObservation>
				<om:Observation>
					<om:samplingTime xlink:href="urn:x-ogc:def:nil:OGC:unknown"/>
					<om:procedure xlink:href="urn:x-ogc:def:nil:OGC:unknown"/>
					<om:observedProperty xlink:href="urn:ogc:def:phenomenon:CGI:2007:lithology"/>
					<om:featureOfInterest xlink:href="urn:x-ogc:def:nil:OGC:unknown"/>
					<om:result>
						<cv:CV_DiscreteCoverage>
							<cv:domainExtent xlink:href="#urn.ngwd.bc.well_362345"/>
							<cv:rangeType xlink:href="urn:ogc:def:phenomenon:CGI:2007:lithology"/>
							<xsl:for-each select="$refWell/prod:WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_LITHOLOGY_SVW">
							<cv:element>
								<cv:CV_GeometryValuePair>
									<cv:geometry>
										<cv:CV_DomainObject>
											<cv:spatialElement>
												<gml:LineString srsName="#{$tag}" srsDimension="1">
													<gml:coordinates><xsl:value-of select="prod:LITHOLOGY_FROM"/><xsl:text> </xsl:text><xsl:value-of select="prod:LITHOLOGY_TO"/></gml:coordinates>
												</gml:LineString>
											</cv:spatialElement>
										</cv:CV_DomainObject>
									</cv:geometry>
									<cv:value xsi:type="gsml:EarthMaterial">
										<UnsoncolidatedMaterial xmlns="http://www.cgi-iugs.org/xml/GeoSciML/2">
											<gml:description><xsl:value-of select="prod:LITHOLOGY_RAW_DATA"/></gml:description>
											
											<gsml:purpose>instance</gsml:purpose>
											<gsml:consolidationDegree>
												<gsml:CGI_TermValue>
													<gsml:value codeSpace="urn:cgi:classifier:GSC:Consolidation">Unsoncolidated</gsml:value>
												</gsml:CGI_TermValue>
											</gsml:consolidationDegree>
											<gsml:lithology xlink:href="urn:x-ogc:def:nil:OGC:unknown"/>
										</UnsoncolidatedMaterial>
									</cv:value>
								</cv:CV_GeometryValuePair>
							</cv:element>
							</xsl:for-each>
							</cv:CV_DiscreteCoverage>
							</om:result>
							</om:Observation>
							</sa:relatedObservation>
							
		</gwml:WaterWell>
		</xsl:for-each>
	</wfs:FeatureCollection>
	</xsl:template>
</xsl:stylesheet>
