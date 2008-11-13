<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:gwml="http://www.nrcan.gc.ca/xml/gwml/1">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<!-- this should force all the namespaces in -->
	<xsl:copy-of select="."/>
	</xsl:template>
</xsl:stylesheet>
