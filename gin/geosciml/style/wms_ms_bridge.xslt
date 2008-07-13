<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:h="http://apache.org/cocoon/request/2.0" xmlns:include="http://apache.org/cocoon/include/1.0" xmlns:proc="urn:x-lcnp:proc" xmlns:wmsc="urn:x-lcnp:wmsc" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<proc:job>
		<xsl:choose>
			<xsl:when test="/h:request/h:requestParameters/h:parameter[@name='REQUEST']/h:value = 'GetMap'">
		<proc:wms_image_type><xsl:value-of select="/h:request/h:requestParameters/h:parameter[@name='FORMAT']/h:value"/></proc:wms_image_type>
		<xsl:variable name="config" select="/h:request/wmsc:config"/>
		<xsl:variable name="layer"><xsl:for-each select="tokenize(/h:request/h:requestParameters/h:parameter[@name='LAYERS']/h:value,',')">
			<xsl:variable name="l"><xsl:value-of select="."/></xsl:variable>,<xsl:choose><xsl:when test="$config/wmsc:layers/wmsc:layer[@name = $l]"><xsl:value-of select="$config/wmsc:layers/wmsc:layer[@name = $l]/wmsc:proxiedLayers/@names"/></xsl:when>
				<xsl:otherwise><xsl:value-of select="."/></xsl:otherwise>
			</xsl:choose>
			</xsl:for-each>
		</xsl:variable>
		<!-- rebuild the request -->
		<xsl:variable name="p"><xsl:for-each select="/h:request/h:requestParameters/h:parameter">&amp;<xsl:choose><xsl:when test="@name = 'LAYERS'">LAYERS=<xsl:value-of select="substring-after($layer,',')"/></xsl:when><xsl:otherwise><xsl:value-of select="@name"/>=<xsl:value-of select="h:value"/></xsl:otherwise></xsl:choose></xsl:for-each></xsl:variable>
			<!-- the complete url -->
			<xsl:variable name="url"><xsl:value-of select="/h:request/wmsc:config/wmsc:mapserver"/>?map=<xsl:value-of select="/h:request/wmsc:config/wmsc:template"/><xsl:value-of select="$p"/></xsl:variable>
			<proc:GetMap><xsl:value-of select="$url"/></proc:GetMap>
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
