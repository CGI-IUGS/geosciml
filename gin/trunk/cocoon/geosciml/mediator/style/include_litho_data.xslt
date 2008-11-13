<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:proc="urn:x-lcnp:proc" xmlns:include="http://apache.org/cocoon/include/1.0">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<proc:job>
		<proc:request>
		<xsl:copy-of select="."/>
		</proc:request>
		<proc:data>
			<include:include src="cocoon:/registry/vocabulary/CGI_SimpleLithology_2008.xml"/>
		</proc:data>
	</proc:job>
	</xsl:template>
</xsl:stylesheet>
