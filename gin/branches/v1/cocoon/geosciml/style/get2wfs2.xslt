<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:h="http://apache.org/cocoon/request/2.0"
xmlns:wfs="http://www.opengis.net/wfs"
xmlns:exslt="http://exslt.org/common">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<wfs:GetFeature>
	<xsl:variable name="filter" select="//h:parameter[@name='FILTER']/h:value"/>
		<wfs:filter><xsl:value-of select="exslt:node-set($filter)"/></wfs:filter>
	</wfs:GetFeature>
	</xsl:template>
</xsl:stylesheet>
