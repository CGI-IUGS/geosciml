<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:prod="http://openmaps.gov.bc.ca" xmlns:gml="http://www.opengis.net/gml"
xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:param name="bbox"/>
	<xsl:template match="/">
	<proc:proc xmlns:proc="urn:x-lcnp:proc" >
<proc:post url="http://tree.env.gov.bc.ca/geoserver/wfs?service=WFS&amp;version=1.0.0">
<GetFeature xmlns="http://www.opengis.net/wfs" xmlns:ogc="http://www.opengis.net/ogc" xmlns:prod="http://openmaps.gov.bc.ca" handle="" maxFeatures="50" outputFormat="GML2" service="WFS" version="1.0.0">
	<Query srsName="EPSG:4326" typeName="prod:WHSE_WATER_MANAGEMENT.GW_WATER_WELLS_LITHOLOGY_SVW">
	<ogc:Filter><ogc:Within><ogc:PropertyName>prod:GEOMETRY</ogc:PropertyName>
	<gml:Envelope srsName="EPSG:4326">
	<xsl:variable name="coord" select="tokenize($bbox,',')"/>
	<gml:lowerCorner><xsl:value-of select="$coord[1]"/><xsl:text> </xsl:text><xsl:value-of select="$coord[2]"/></gml:lowerCorner>
					<gml:upperCorner><xsl:value-of select="$coord[3]"/><xsl:text> </xsl:text><xsl:value-of select="$coord[4]"/></gml:upperCorner>
					</gml:Envelope></ogc:Within></ogc:Filter>
	</Query>
</GetFeature>
</proc:post>
</proc:proc>
	</xsl:template>
</xsl:stylesheet>
