<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:stx="http://stx.sourceforge.net/2002/ns" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
xmlns:wfs="http://www.opengis.net/wfs" 
xmlns:sf="http://stx.sourceforge.net/2003/functions"
xmlns:h="http://apache.org/cocoon/request/2.0"
xmlns:gml="http://www.opengis.net/gml"
xmlns:cat="urn:x-ngwd:cat">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:param name="host"/>
	<!-- this is ridicule.. stx does not accept a variable as filter-src, so I must generate a STX file from scratch.. -->
	<xsl:template match="/">
	<xsl:variable name="xslt" select="/h:request/h:requestParameters/h:parameter[@name='xslt']/h:value"/>
	<xsl:variable name="path">url('<xsl:value-of select="$host"/>/<xsl:value-of select="$xslt"/>.pxslt')</xsl:variable>
	<stx:transform 
pass-through="none" output-method="xml" strip-space="no" version="1.0" >
<stx:template match="/">
<stx:process-children/>
</stx:template>
<stx:template match="wfs:FeatureCollection">
<wfs:FeatureCollection gml:id="urn:cgi:feature:CGI:1"><stx:process-children/></wfs:FeatureCollection>
</stx:template>
<stx:template match="gml:featureMember">
<gml:featureMember>
<stx:process-children filter-method="http://www.w3.org/1999/XSL/Transform" filter-src="{$path}"/>
</gml:featureMember>
</stx:template>
</stx:transform>

	</xsl:template>
</xsl:stylesheet>
