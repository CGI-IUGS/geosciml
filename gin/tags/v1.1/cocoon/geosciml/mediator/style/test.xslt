<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:proc="urn:x-lcnp:proc"  xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<proc:test>
			<proc:root><xsl:value-of select="local-name(/*)"/></proc:root>
		</proc:test>
	</xsl:template>
</xsl:stylesheet>
