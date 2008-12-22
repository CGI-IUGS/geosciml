<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:fn="http://www.w3.org/2005/xpath-functions"
xmlns:h="http://apache.org/cocoon/request/2.0"
xmlns:wfs="http://www.opengis.net/wfs"
xmlns:saxon="http://saxon.sf.net/"
xmlns:gml="http://www.opengis.net/gml">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<wfs:GetFeature>
	<wfs:Query  typeName="{//h:parameter[@name='TYPENAME']/h:value}">
	<!-- all this contraption because the filter clause does not declare any namespaces, but some might do..-->
	<xsl:variable name="f">&lt;Filter&gt;</xsl:variable>
	<xsl:variable name="ft">&lt;Filter xmlns:gml="http://www.opengis.net/gml" xmlns="http://www.opengis.net/ogc"&gt;</xsl:variable>
	<!-- if we have a filter clause, let's turn it into a node-set
This might need some tweaking depending of your backend WFS, the filter passed as a KVP is not valid as such because there is no namespace declaration (filter is implied)-->
<xsl:if test="//h:parameter[@name='FILTER']">
	<xsl:variable name="filter" select="//h:parameter[@name='FILTER']/h:value"/>
	<xsl:variable name="filter-clause"><xsl:choose>
	<!-- if the string contains a straight <Filter>, therefore, there are not ns declaration -->
		<xsl:when test="contains($filter,$f)"><xsl:value-of select="replace($filter,$f,$ft)"/></xsl:when>
		<xsl:otherwise><xsl:value-of select="$filter"/></xsl:otherwise>
	</xsl:choose></xsl:variable>
	<!-- this saxon function turns a string into a nodeset -->
	<xsl:copy-of select="saxon:parse($filter-clause)"/>
	</xsl:if>
	</wfs:Query>
	</wfs:GetFeature>
	</xsl:template>
</xsl:stylesheet>
