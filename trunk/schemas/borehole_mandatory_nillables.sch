<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/gwml/2.0/xml-rules.sch" see="http://www.opengis.net/spec/gwml/2.0/req/xsd-xml-rules" queryBinding="xslt2">
	<title>nillable property rules</title>
	<p>This sch enforces mandatory nillable properties originally defined in XSD.  This series of rules has been generated automatically for a properties that have nillable=true and minOccurs=0</p>
<ns prefix= "n9" uri="http://standards.iso.org/19115/-3/mcc/1.0"/>
<ns prefix= "n13" uri="http://www.isotc211.org/2005/gts"/>
<ns prefix= "n11" uri="http://www.isotc211.org/2005/gco"/>
<ns prefix= "n8" uri="http://standards.iso.org/19115/-3/gco/1.0"/>
<ns prefix= "n1" uri="http://www.opengis.net/samplingSpatial/2.0"/>
<ns prefix= "n10" uri="http://www.w3.org/1999/xlink"/>
<ns prefix= "n0" uri="http://xmlns.geosciml.org/borehole/4.0"/>
<ns prefix= "n2" uri="http://standards.iso.org/19115/-3/cit/1.0"/>
<ns prefix= "n3" uri="http://www.opengis.net/gml/3.2"/>
<ns prefix= "n12" uri="http://www.isotc211.org/2005/gss"/>
<ns prefix= "n14" uri="http://www.isotc211.org/2005/gsr"/>
<ns prefix= "n4" uri="http://www.opengis.net/swe/2.0"/>
<ns prefix= "n7" uri="http://www.isotc211.org/2005/gmd"/>
<ns prefix= "n5" uri="http://www.opengis.net/sampling/2.0"/>
<ns prefix= "n6" uri="http://www.opengis.net/om/2.0"/>
<pattern id="BoreholeType.indexData">
		<title>Testing presence of property indexData</title>
		<rule context="//n0:Borehole">
			<assert test="n0:indexData">Property {http://xmlns.geosciml.org/borehole/4.0}indexData is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeType.downholeDrillingDetails">
		<title>Testing presence of property downholeDrillingDetails</title>
		<rule context="//n0:Borehole">
			<assert test="n0:downholeDrillingDetails">Property {http://xmlns.geosciml.org/borehole/4.0}downholeDrillingDetails is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeType.logElement">
		<title>Testing presence of property logElement</title>
		<rule context="//n0:Borehole">
			<assert test="n0:logElement">Property {http://xmlns.geosciml.org/borehole/4.0}logElement is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeDetailsType.operator">
		<title>Testing presence of property operator</title>
		<rule context="//n0:BoreholeDetails">
			<assert test="n0:operator">Property {http://xmlns.geosciml.org/borehole/4.0}operator is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeDetailsType.driller">
		<title>Testing presence of property driller</title>
		<rule context="//n0:BoreholeDetails">
			<assert test="n0:driller">Property {http://xmlns.geosciml.org/borehole/4.0}driller is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeDetailsType.dateOfDrilling">
		<title>Testing presence of property dateOfDrilling</title>
		<rule context="//n0:BoreholeDetails">
			<assert test="n0:dateOfDrilling">Property {http://xmlns.geosciml.org/borehole/4.0}dateOfDrilling is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeDetailsType.startPoint">
		<title>Testing presence of property startPoint</title>
		<rule context="//n0:BoreholeDetails">
			<assert test="n0:startPoint">Property {http://xmlns.geosciml.org/borehole/4.0}startPoint is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeDetailsType.inclinationType">
		<title>Testing presence of property inclinationType</title>
		<rule context="//n0:BoreholeDetails">
			<assert test="n0:inclinationType">Property {http://xmlns.geosciml.org/borehole/4.0}inclinationType is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeDetailsType.boreholeMaterialCustodian">
		<title>Testing presence of property boreholeMaterialCustodian</title>
		<rule context="//n0:BoreholeDetails">
			<assert test="n0:boreholeMaterialCustodian">Property {http://xmlns.geosciml.org/borehole/4.0}boreholeMaterialCustodian is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeDetailsType.purpose">
		<title>Testing presence of property purpose</title>
		<rule context="//n0:BoreholeDetails">
			<assert test="n0:purpose">Property {http://xmlns.geosciml.org/borehole/4.0}purpose is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeDetailsType.dataCustodian">
		<title>Testing presence of property dataCustodian</title>
		<rule context="//n0:BoreholeDetails">
			<assert test="n0:dataCustodian">Property {http://xmlns.geosciml.org/borehole/4.0}dataCustodian is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BoreholeDetailsType.boreholeLength">
		<title>Testing presence of property boreholeLength</title>
		<rule context="//n0:BoreholeDetails">
			<assert test="n0:boreholeLength">Property {http://xmlns.geosciml.org/borehole/4.0}boreholeLength is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="DrillingDetailsType.drillingMethod">
		<title>Testing presence of property drillingMethod</title>
		<rule context="//n0:DrillingDetails">
			<assert test="n0:drillingMethod">Property {http://xmlns.geosciml.org/borehole/4.0}drillingMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="DrillingDetailsType.boreholeDiameter">
		<title>Testing presence of property boreholeDiameter</title>
		<rule context="//n0:DrillingDetails">
			<assert test="n0:boreholeDiameter">Property {http://xmlns.geosciml.org/borehole/4.0}boreholeDiameter is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="OriginPositionType.location">
		<title>Testing presence of property location</title>
		<rule context="//n0:OriginPosition">
			<assert test="n0:location">Property {http://xmlns.geosciml.org/borehole/4.0}location is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="OriginPositionType.elevation">
		<title>Testing presence of property elevation</title>
		<rule context="//n0:OriginPosition">
			<assert test="n0:elevation">Property {http://xmlns.geosciml.org/borehole/4.0}elevation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
</schema>
