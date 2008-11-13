<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:h="http://apache.org/cocoon/request/2.0" xmlns:include="http://apache.org/cocoon/include/1.0" xmlns:wms="http://www.opengis.net/wms" xmlns:proc="urn:x-lcnp:proc" xmlns:ms="http://mapserver.gis.umn.edu/template" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<wms:GetMap mime-type="{//proc:wms_image_type}"><xsl:value-of select="//ms:img"/></wms:GetMap>
	</xsl:template>
</xsl:stylesheet>
