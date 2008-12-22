<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions"
	xmlns:wfs="http://www.opengis.net/wfs"
	xmlns:sess="http://apache.org/cocoon/session/1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<page>
	<sess:createcontext name="temp">
	<sess:setxml context="temp" path="/">
	<request><xsl:value-of select="local-name(./*)"/></request>
	</sess:setxml>
	</sess:createcontext>
	</page>
	</xsl:template>
</xsl:stylesheet>
