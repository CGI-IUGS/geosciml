<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:h="http://apache.org/cocoon/request/2.0" xmlns:proc="urn:x-lcnp:proc" xmlns:wmsc="urn:x-lcnp:wmsc" xmlns:cinclude="http://apache.org/cocoon/include/1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<proc:page>
		<!-- generate a GFI call to the right service -->
		
		<!-- for each of those layers, we must send a proper gfi queries to the real server -->
		<xsl:variable name="param" select="/h:request/h:requestParameters"/>
		<xsl:variable name="config" select="/h:request/wmsc:config"/>
		<!-- for each query_layers -->
		<xsl:for-each select="tokenize(/h:request/h:requestParameters/h:parameter[@name='QUERY_LAYERS']/h:value,',')">
		<xsl:variable name="ql"><xsl:value-of select="."/></xsl:variable> 
		<xsl:variable name="proxiedLayer" select="$config/wmsc:layers/wmsc:layer[@name=$ql]/wmsc:proxiedGetFeatureInfo/@layer"/>
		<debug><xsl:copy-of select="$config/wmsc:layers/wmsc:layer[@name=$ql]"/></debug>
			<proc:gfi>
			<xsl:variable name="url"><xsl:value-of select="$config/wmsc:mapserver"/>?map=<xsl:value-of select="$config/wmsc:template"/>&amp;REQUEST=GetFeatureInfo&amp;SERVICE=WMS&amp;VERSION=<xsl:value-of select="$param/h:parameter[@name='VERSION']/h:value"/>&amp;QUERY_LAYERS=<xsl:value-of select="$proxiedLayer"/>&amp;LAYERS=<xsl:value-of select="$proxiedLayer"/>&amp;BBOX=<xsl:value-of select="$param/h:parameter[@name='BBOX']/h:value"/>&amp;SRS=<xsl:value-of select="$param/h:parameter[@name='SRS']/h:value"/>&amp;INFO_FORMAT=text/html&amp;HEIGHT=<xsl:value-of select="$param/h:parameter[@name='HEIGHT']/h:value"/>&amp;WIDTH=<xsl:value-of select="$param/h:parameter[@name='WIDTH']/h:value"/>&amp;X=<xsl:value-of select="$param/h:parameter[@name='X']/h:value"/>&amp;Y=<xsl:value-of select="$param/h:parameter[@name='Y']/h:value"/></xsl:variable>
			<proc:url><xsl:value-of select="$url"/></proc:url>
			<cinclude:include src="{$url}"/>
			</proc:gfi>
		</xsl:for-each>
		
		</proc:page>
	</xsl:template>
</xsl:stylesheet>
