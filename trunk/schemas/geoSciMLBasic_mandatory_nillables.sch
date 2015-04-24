<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/gwml/2.0/xml-rules.sch" see="http://www.opengis.net/spec/gwml/2.0/req/xsd-xml-rules" queryBinding="xslt2">
	<title>nillable property rules</title>
	<p>This sch enforces mandatory nillable properties originally defined in XSD</p>
	<ns prefix="n" uri="http://xmlns.geosciml.org/geologybasic/4.0/20150422"/>
	<pattern id="material">
		<title>Testing presence of property material</title>
		<rule context="n:CompositionPart">
			<assert test="n:material">Property material is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="proportion">
		<title>Testing presence of property proportion</title>
		<rule context="n:CompositionPart">
			<assert test="n:proportion">Property proportion is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="stContactDescription">
		<title>Testing presence of property stContactDescription</title>
		<rule context="n:Contact">
			<assert test="n:stContactDescription">Property stContactDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="stFoldDescription">
		<title>Testing presence of property stFoldDescription</title>
		<rule context="n:Fold">
			<assert test="n:stFoldDescription">Property stFoldDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="profileType">
		<title>Testing presence of property profileType</title>
		<rule context="n:Fold">
			<assert test="n:profileType">Property profileType is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="stFoliationDescription">
		<title>Testing presence of property stFoliationDescription</title>
		<rule context="n:Foliation">
			<assert test="n:stFoliationDescription">Property stFoliationDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="orientation">
		<title>Testing presence of property orientation</title>
		<rule context="n:Foliation">
			<assert test="n:orientation">Property orientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="numericAge">
		<title>Testing presence of property numericAge</title>
		<rule context="n:GeologicEvent">
			<assert test="n:numericAge">Property numericAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="gaEventDescription">
		<title>Testing presence of property gaEventDescription</title>
		<rule context="n:GeologicEvent">
			<assert test="n:gaEventDescription">Property gaEventDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="olderNamedAge">
		<title>Testing presence of property olderNamedAge</title>
		<rule context="n:GeologicEvent">
			<assert test="n:olderNamedAge">Property olderNamedAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="youngerNamedAge">
		<title>Testing presence of property youngerNamedAge</title>
		<rule context="n:GeologicEvent">
			<assert test="n:youngerNamedAge">Property youngerNamedAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="eventEnvironment">
		<title>Testing presence of property eventEnvironment</title>
		<rule context="n:GeologicEvent">
			<assert test="n:eventEnvironment">Property eventEnvironment is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="classifer">
		<title>Testing presence of property classifer</title>
		<rule context="n:GeologicFeature">
			<assert test="n:classifer">Property classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="observationMethod2">
		<title>Testing presence of property observationMethod</title>
		<rule context="n:GeologicFeature">
			<assert test="n:observationMethod">Property observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="gbUnitDescription">
		<title>Testing presence of property gbUnitDescription</title>
		<rule context="n:GeologicUnit">
			<assert test="n:gbUnitDescription">Property gbUnitDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="rank">
		<title>Testing presence of property rank</title>
		<rule context="n:GeologicUnit">
			<assert test="n:rank">Property rank is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="composition">
		<title>Testing presence of property composition</title>
		<rule context="n:GeologicUnit">
			<assert test="n:composition">Property composition is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="hierarchyLink">
		<title>Testing presence of property hierarchyLink</title>
		<rule context="n:GeologicUnit">
			<assert test="n:hierarchyLink">Property hierarchyLink is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="proportion2">
		<title>Testing presence of property proportion</title>
		<rule context="n:GeologicUnitHierarchy">
			<assert test="n:proportion">Property proportion is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="gmFeatureDescription">
		<title>Testing presence of property gmFeatureDescription</title>
		<rule context="n:GeomorphologicFeature">
			<assert test="n:gmFeatureDescription">Property gmFeatureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="observationMethod3">
		<title>Testing presence of property observationMethod</title>
		<rule context="n:MappedFeature">
			<assert test="n:observationMethod">Property observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="resolutionRepresentativeFraction">
		<title>Testing presence of property resolutionRepresentativeFraction</title>
		<rule context="n:MappedFeature">
			<assert test="n:resolutionRepresentativeFraction">Property resolutionRepresentativeFraction is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="exposure">
		<title>Testing presence of property exposure</title>
		<rule context="n:MappedFeature">
			<assert test="n:exposure">Property exposure is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="positionalAccuracy">
		<title>Testing presence of property positionalAccuracy</title>
		<rule context="n:MappedFeature">
			<assert test="n:positionalAccuracy">Property positionalAccuracy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="activity">
		<title>Testing presence of property activity</title>
		<rule context="n:NaturalGeomorphologicFeature">
			<assert test="n:activity">Property activity is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="stStructureDescription">
		<title>Testing presence of property stStructureDescription</title>
		<rule context="n:ShearDisplacementStructure">
			<assert test="n:stStructureDescription">Property stStructureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
</schema>