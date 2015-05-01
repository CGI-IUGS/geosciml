<?xml version="1.0" encoding="UTF-8"?>
<!-- ************************************
Author: Eric Boisvert, Laboratoire de cartographie numérique et de photogrammétrie, Geological Survey of Canada - Quebec , Natural Resources Canada
Date: 2015/3/30
Description: Converts a GML XSD from nillable 1..? to nillable 0..?
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- catch all properties that are normally sequences under complexType -->
	<xsl:template match="xsd:complexType//xsd:sequence/xsd:element[@nillable='true']">
		<xsl:comment>replaced</xsl:comment>
		<!-- just replace with minOccur 1 -->
		<xsl:copy>
			<!-- default for minOccurs = 0, so if there are none, force minOccurs -->
			<xsl:if test="@minOccurs=0">
				<xsl:attribute name="minOccurs">1</xsl:attribute>
			</xsl:if>
			<!-- loop in all present attributes, catch minOccurs and replace to 0 -->
			<xsl:for-each select="@*">
				<xsl:choose>
					<xsl:when test="fn:local-name() = 'minOccurs'">
						<xsl:attribute name="minOccurs">1</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:copy/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each><xsl:apply-templates/>
		</xsl:copy>
		
	</xsl:template>
	<!-- copy all the rest unmodified -->
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
