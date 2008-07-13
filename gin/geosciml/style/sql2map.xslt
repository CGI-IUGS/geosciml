<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:sql="http://apache.org/cocoon/SQL/2.0" xmlns:proc="urn:x-lcnp:proc">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<!-- map the sql result of pub_value and priv_value into a <property value="public">private</property> -->
	<xsl:template match="/">
	<proc:mapping>
		<xsl:apply-templates select="sql:rowset/sql:row"/>
	</proc:mapping>
	</xsl:template>
	<xsl:template match="sql:row">
		<proc:property value="{sql:pub_value}"><xsl:value-of select="sql:priv_value"/></proc:property>
	</xsl:template>
</xsl:stylesheet>
