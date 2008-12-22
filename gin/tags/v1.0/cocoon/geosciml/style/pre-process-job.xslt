<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:wfs="http://www.opengis.net/wfs"
	xmlns:src="http://apache.org/cocoon/source/1.0"
	xmlns:proc="urn:x-lcnp:proc" 
	xmlns:include="http://apache.org/cocoon/include/1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:param name="config"/>
	<xsl:template match="/">
	<proc:page>
	<xsl:variable name="key" select="generate-id()"/>
	<!-- write a copy of the request -->
	<src:write>
		<src:source>context:/geosciml/temp/req_<xsl:value-of select="$key"/>.xml</src:source>
		<src:fragment><xsl:copy-of select="."/></src:fragment>
	</src:write>
	<proc:tempKey><xsl:value-of select="$key"/></proc:tempKey>
	<!-- include the configuration -->
	<cinclude:include xmlns:cinclude="http://apache.org/cocoon/include/1.0" src="config/{$config}.xml"/>
	<!-- keep a copy of the original request -->
	<xsl:copy-of select="."/>
	</proc:page>
	</xsl:template>
</xsl:stylesheet>
