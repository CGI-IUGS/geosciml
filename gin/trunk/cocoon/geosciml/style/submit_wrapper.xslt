<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:xs="http://www.w3.org/2001/XMLSchema" 
xmlns:fn="http://www.w3.org/2005/xpath-functions" 
xmlns:proc="urn:x-lcnp:proc" 
xmlns:include="http://apache.org/cocoon/include/1.0" exclude-result-prefixes="#all">
<xsl:param name="config"/>
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
	<!-- The submit wrapper wraps the request into a larger document that also contains the config, so the following stx transformer can detect key information to send to the remote server -->
	<xsl:template match="/">
	<proc:process>		
		<include:include src="../config/{$config}.xml"/>
<proc:remote>
			<xsl:copy-of select="."/>
			</proc:remote>
	</proc:process>
	</xsl:template>
</xsl:stylesheet>
