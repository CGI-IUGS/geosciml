<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:wfs="http://www.opengis.net/wfs"
	xmlns:src="http://apache.org/cocoon/source/1.0"
	xmlns:include="http://apache.org/cocoon/include/1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<page>
	<xsl:variable name="key" select="generate-id()"/>
	<src:write>
		<src:source>context:/geosciml/temp/req_<xsl:value-of select="$key"/>.xml</src:source>
		<src:fragment><xsl:copy-of select="."/></src:fragment>
	</src:write>
	<!-- figure out what to do -->
	<xsl:variable name="op" select="local-name(./*)"/>
	<xsl:choose>
		<xsl:when test="$op != 'GetFeature'">
	
	<xsl:variable name="typename" select="//@typeName"/>
	<!-- invoke the service -->
	<result>
	<include:include src="cocoon:/wfs-process-{$op}/{$key}/{substring-after($typename,':')}"/>
	</result>
	<!-- last operation, clean the mess -->
	<include:include src="cocoon:/wfs-process-clean/{$key}"/>
	</xsl:when>
	<xsl:otherwise>
	<!-- deal with a GetFeature -->
	
	</xsl:otherwise>
	</xsl:choose>
	</page>
	</xsl:template>
</xsl:stylesheet>
