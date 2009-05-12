<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:h="http://apache.org/cocoon/request/2.0" xmlns:include="http://apache.org/cocoon/include/1.0" xmlns:proc="urn:x-lcnp:proc" xmlns:wmsc="urn:x-lcnp:wmsc" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<proc:job>
		<xsl:choose>
			<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='REQUEST']/h:value = 'GetMap'">
		<proc:wms_image_type><xsl:value-of select="/h:request/h:requestParameters/h:parameter[@name='FORMAT']/h:value"/></proc:wms_image_type>
			<!-- get the relevant variables -->
			<!-- we must calculate a new ext base on current w and heigth -->
						<xsl:variable name="w" select="/h:request/h:requestParameters/h:parameter[@name='WIDTH']/h:value"/>
			<xsl:variable name="h" select="/h:request/h:requestParameters/h:parameter[@name='HEIGHT']/h:value"/>
			<!--
			<xsl:variable name="ext">
			<xsl:call-template name="cal_bbox">
			<xsl:with-param name="w" select="$w"/>
			<xsl:with-param name="h" select="$h"/>
			<xsl:with-param name="bbox" select="/h:request/h:requestParameters/h:parameter[@name='BBOX']/h:value"/>
			</xsl:call-template>
			</xsl:variable>
			-->

			<xsl:variable name="ext" select="translate(/h:request/h:requestParameters/h:parameter[@name='BBOX']/h:value,',','+')"/>

			<xsl:variable name="format">
			<xsl:choose>
				<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='FORMAT']">/h:request/h:requestParameters/h:parameter[@name='FORMAT']/h:value</xsl:when>
				<xsl:otherwise>image/png</xsl:otherwise>
			</xsl:choose>
			</xsl:variable>
			<!--<xsl:variable name="layers" select="tokenize(/h:request/h:requestParameters/h:parameter[@name='LAYERS']/h:value,',')"/>-->
			<xsl:variable name="root" select="/"/>
			<!-- build a list of layers from the proxies -->
			<xsl:variable name="proxiedLayers">
				<xsl:for-each select="tokenize(/h:request/h:requestParameters/h:parameter[@name='LAYERS']/h:value,',')">
					<xsl:variable name="c" select="."/>
					<xsl:choose>
						<xsl:when test="$root/h:request/wmsc:config/wmsc:layers/wmsc:layer[@name=$c]">,<xsl:value-of select="$root/h:request/wmsc:config/wmsc:layers/wmsc:layer[@name=$c]/wmsc:proxiedLayers/@names"/>
						</xsl:when>
						<xsl:otherwise>,<xsl:value-of select="$c"/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</xsl:variable>
			<xsl:variable name="proj" select="/h:request/h:requestParameters/h:parameter[@name='SRS']/h:value"/>
			<xsl:variable name="url">cocoon:/wms-getmap?m_map=/ngwd/map/xml_template/wells.map&amp;m_mapext=<xsl:value-of select="$ext"/>&amp;m_layers=<xsl:value-of select="translate(substring-after($proxiedLayers,','),',',' ')"/>&amp;m_width=<xsl:value-of select="$w"/>&amp;m_height=<xsl:value-of select="$h"/>&amp;m_map_projection=init%3D<xsl:value-of select="$proj"/>
			</xsl:variable>
			<include:include src="{$url}"/>
			</xsl:when>
			<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='REQUEST']/h:value = 'GetCapabilities'">
			<include:include src="cocoon:/wms-getcapabilities"/>
			</xsl:when>
			<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='REQUEST']/h:value = 'GetFeatureInfo'">
			<include:include src="cocoon:/wms-getfeatureinfo"/>
			</xsl:when>
		</xsl:choose>
		</proc:job>
	</xsl:template>
	<xsl:template name="cal_bbox">
	<xsl:param name="w"/>
	<xsl:param name="h"/>
	<xsl:param name="bbox"/>
	<xsl:variable name="coord" select="tokenize($bbox,',')"/>
	<xsl:variable name="minx" as="xs:double"><xsl:value-of select="$coord[1]"/></xsl:variable>
	<xsl:variable name="miny" as="xs:double"><xsl:value-of select="$coord[2]"/></xsl:variable>
	<xsl:variable name="maxx" as="xs:double"><xsl:value-of select="$coord[3]"/></xsl:variable>
	<xsl:variable name="maxy" as="xs:double"><xsl:value-of select="$coord[4]"/></xsl:variable>
	<xsl:variable name="ratio_frame" select="$w div $h" as="xs:double"/>
	<xsl:variable name="ratio_bbox" select="($maxx - $minx) div ($maxy - $miny)" as="xs:double"/>
	<xsl:choose>
		<xsl:when test="$ratio_bbox &lt; $ratio_frame">
		<xsl:variable name="d" select="($maxy - $miny) * $ratio_frame * 0.5"/>
		<xsl:variable name="cx" select="($maxx + $minx) * 0.5"/>
		<xsl:value-of select="$cx - $d"/>+<xsl:value-of select="$miny"/>+<xsl:value-of select="$cx + $d"/>+<xsl:value-of select="$maxy"/>
		</xsl:when>
		<xsl:otherwise>
		<xsl:variable name="d" select="($maxx - $minx) * (1  div  $ratio_frame) * 0.5"/>
		<xsl:variable name="cy" select="($maxy + $miny) * 0.5"/>
		<xsl:value-of select="$minx"/>+<xsl:value-of select="$cy - $d"/>+<xsl:value-of select="$maxx"/>+<xsl:value-of select="$cy + $d"/>
		</xsl:otherwise>
	</xsl:choose>
	</xsl:template>

</xsl:stylesheet>
