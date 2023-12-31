<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/gwml/2.0/xml-rules.sch" see="http://www.opengis.net/spec/gwml/2.0/req/xsd-xml-rules" queryBinding="xslt2">
	<title>nillable property rules</title>
	<p>This sch enforces mandatory nillable properties originally defined in XSD.  This series of rules has been generated automatically for a properties that have nillable=true and minOccurs=0</p>
<ns prefix= "n9" uri="http://www.isotc211.org/2005/gts"/>
<ns prefix= "n7" uri="http://www.isotc211.org/2005/gco"/>
<ns prefix= "n2" uri="http://www.opengis.net/gml/3.2"/>
<ns prefix= "n0" uri="http://xmlns.geosciml.org/GeoSciML-Basic/4.0"/>
<ns prefix= "n11" uri="http://www.opengis.net/gml/3.3/exr"/>
<ns prefix= "n8" uri="http://www.isotc211.org/2005/gss"/>
<ns prefix= "n10" uri="http://www.isotc211.org/2005/gsr"/>
<ns prefix= "n4" uri="http://www.opengis.net/swe/2.0"/>
<ns prefix= "n5" uri="http://www.isotc211.org/2005/gmd"/>
<ns prefix= "n6" uri="http://www.w3.org/1999/xlink"/>
<ns prefix= "n3" uri="http://www.opengis.net/om/2.0"/>
<ns prefix= "n1" uri="http://www.opengis.net/sampling/2.0"/>
<pattern id="GeomorphologicFeatureType.gmFeatureDescription">
		<title>Testing presence of property gmFeatureDescription</title>
		<rule context="//n0:GeomorphologicFeature">
			<assert test="n0:gmFeatureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gmFeatureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="AnthropogenicGeomorphologicFeatureType.gmFeatureDescription">
		<title>Testing presence of property gmFeatureDescription</title>
		<rule context="//n0:AnthropogenicGeomorphologicFeature">
			<assert test="n0:gmFeatureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gmFeatureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="NaturalGeomorphologicFeatureType.gmFeatureDescription">
		<title>Testing presence of property gmFeatureDescription</title>
		<rule context="//n0:NaturalGeomorphologicFeature">
			<assert test="n0:gmFeatureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gmFeatureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="NaturalGeomorphologicFeatureType.activity">
		<title>Testing presence of property activity</title>
		<rule context="//n0:NaturalGeomorphologicFeature">
			<assert test="n0:activity">Property {http://xmlns.geosciml.org/geologybasic/4.0}activity is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
</schema>