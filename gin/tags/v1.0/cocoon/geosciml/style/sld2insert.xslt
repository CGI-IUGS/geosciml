<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions"
xmlns:gml="http://www.opengis.net/gml" xmlns:gsml="http://www.cgi-iugs.org/xml/GeoSciML/2" xmlns:ogc="http://www.opengis.net/ogc" xmlns:sld="http://www.opengis.net/sld" xmlns:xlink="http://www.w3.org/1999/xlink" >
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
-- inserts ages into a database ||
<xsl:apply-templates select="sld:StyledLayerDescriptor/sld:UserLayer/sld:UserStyle/sld:FeatureTypeStyle/sld:Rule"/>
	</xsl:template>
	<xsl:template match="sld:Rule">
	<!-- insert into this table
age_urn character varying(200) NOT NULL,
  age_name character varying(100),
  age_min double precision DEFAULT 0,
  age_max double precision DEFAULT 0,
-->
<!-- fetch the values -->
<xsl:variable name="age_bracket" select="tokenize(substring-before(substring-after(sld:Title,'('),')'),' ')"/>
		INSERT INTO lk_iugs_age (age_urn,age_name,age_min,age_max) values ('<xsl:value-of select="ogc:Filter/ogc:PropertyIsEqualTo/ogc:Literal"/>','<xsl:value-of select="sld:Name"/>',<xsl:value-of select="$age_bracket[1]"/>,<xsl:value-of select="$age_bracket[3]"/>);
	</xsl:template>
</xsl:stylesheet>
