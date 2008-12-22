<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:h="http://apache.org/cocoon/request/2.0" xmlns:cat="urn:x-ngwd:cat" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<cat:Request type="query" maxFeature="10" maxDepth="1" language="en" >
		<cat:Query id="1" typeName="Any">
		<xsl:variable name="id"><xsl:value-of select="h:request/h:requestParameters/h:parameter/@name"/></xsl:variable>
			<Filter xmlns="http://www.opengis.net/ogc">
				<FeatureId fid="{$id}"/>
			</Filter>
		</cat:Query>
	</cat:Request>
	</xsl:template>
</xsl:stylesheet>
