<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:wfs="http://www.opengis.net/wfs" xmlns:cinclude="http://apache.org/cocoon/include/1.0" xmlns:proc="urn:x-lcnp:proc" >
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:param name="mapping"/>
	<!-- insert a mapping component into the GetFeature to provided mapping -->
	<xsl:template match="wfs:Query">

	<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
		<!-- at the end, add the insertion -->
		<proc:map>
	<cinclude:include src="mapping/{$mapping}"/>
	</proc:map>
	</xsl:template>
	<!-- identitity -->
		<xsl:template match="@*|node()" priority="-2">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
