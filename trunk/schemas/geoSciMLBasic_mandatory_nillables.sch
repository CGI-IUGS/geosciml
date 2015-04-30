<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/gwml/2.0/xml-rules.sch" see="http://www.opengis.net/spec/gwml/2.0/req/xsd-xml-rules" queryBinding="xslt2">
	<title>nillable property rules</title>
	<p>This sch enforces mandatory nillable properties originally defined in XSD.  This series of rules has been generated automatically for a properties that have nillable=true and minOccurs=0</p>
<ns prefix= "n9" uri="http://www.isotc211.org/2005/gts"/>
<ns prefix= "n7" uri="http://www.isotc211.org/2005/gco"/>
<ns prefix= "n6" uri="http://www.w3.org/1999/xlink"/>
<ns prefix= "n0" uri="http://xmlns.geosciml.org/geologybasic/4.0"/>
<ns prefix= "n2" uri="http://www.opengis.net/gml/3.2"/>
<ns prefix= "n8" uri="http://www.isotc211.org/2005/gss"/>
<ns prefix= "n11" uri="http://www.opengis.net/gml/3.3/exr"/>
<ns prefix= "n10" uri="http://www.isotc211.org/2005/gsr"/>
<ns prefix= "n4" uri="http://www.opengis.net/swe/2.0"/>
<ns prefix= "n5" uri="http://www.isotc211.org/2005/gmd"/>
<ns prefix= "n1" uri="http://www.opengis.net/sampling/2.0"/>
<ns prefix= "n3" uri="http://www.opengis.net/om/2.0"/>
<pattern id="GeologicFeatureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:GeologicFeature">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:GeologicFeature">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeomorphologicFeatureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:GeomorphologicFeature">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeomorphologicFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:GeomorphologicFeature">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeomorphologicFeatureType.gmFeatureDescription">
		<title>Testing presence of property gmFeatureDescription</title>
		<rule context="//n0:GeomorphologicFeature">
			<assert test="n0:gmFeatureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gmFeatureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="AnthropogenicGeomorphologicFeatureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:AnthropogenicGeomorphologicFeature">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="AnthropogenicGeomorphologicFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:AnthropogenicGeomorphologicFeature">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="AnthropogenicGeomorphologicFeatureType.gmFeatureDescription">
		<title>Testing presence of property gmFeatureDescription</title>
		<rule context="//n0:AnthropogenicGeomorphologicFeature">
			<assert test="n0:gmFeatureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gmFeatureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="CompositionPartType.material">
		<title>Testing presence of property material</title>
		<rule context="//n0:CompositionPart">
			<assert test="n0:material">Property {http://xmlns.geosciml.org/geologybasic/4.0}material is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="CompositionPartType.proportion">
		<title>Testing presence of property proportion</title>
		<rule context="//n0:CompositionPart">
			<assert test="n0:proportion">Property {http://xmlns.geosciml.org/geologybasic/4.0}proportion is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicStructureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:GeologicStructure">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicStructureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:GeologicStructure">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ContactType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:Contact">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ContactType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:Contact">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ContactType.stContactDescription">
		<title>Testing presence of property stContactDescription</title>
		<rule context="//n0:Contact">
			<assert test="n0:stContactDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}stContactDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoldType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:Fold">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoldType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:Fold">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoldType.stFoldDescription">
		<title>Testing presence of property stFoldDescription</title>
		<rule context="//n0:Fold">
			<assert test="n0:stFoldDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}stFoldDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoldType.profileType">
		<title>Testing presence of property profileType</title>
		<rule context="//n0:Fold">
			<assert test="n0:profileType">Property {http://xmlns.geosciml.org/geologybasic/4.0}profileType is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoliationType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:Foliation">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoliationType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:Foliation">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoliationType.stFoliationDescription">
		<title>Testing presence of property stFoliationDescription</title>
		<rule context="//n0:Foliation">
			<assert test="n0:stFoliationDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}stFoliationDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoliationType.orientation">
		<title>Testing presence of property orientation</title>
		<rule context="//n0:Foliation">
			<assert test="n0:orientation">Property {http://xmlns.geosciml.org/geologybasic/4.0}orientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicEventType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:GeologicEvent">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicEventType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:GeologicEvent">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicEventType.numericAge">
		<title>Testing presence of property numericAge</title>
		<rule context="//n0:GeologicEvent">
			<assert test="n0:numericAge">Property {http://xmlns.geosciml.org/geologybasic/4.0}numericAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicEventType.gaEventDescription">
		<title>Testing presence of property gaEventDescription</title>
		<rule context="//n0:GeologicEvent">
			<assert test="n0:gaEventDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gaEventDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicEventType.olderNamedAge">
		<title>Testing presence of property olderNamedAge</title>
		<rule context="//n0:GeologicEvent">
			<assert test="n0:olderNamedAge">Property {http://xmlns.geosciml.org/geologybasic/4.0}olderNamedAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicEventType.youngerNamedAge">
		<title>Testing presence of property youngerNamedAge</title>
		<rule context="//n0:GeologicEvent">
			<assert test="n0:youngerNamedAge">Property {http://xmlns.geosciml.org/geologybasic/4.0}youngerNamedAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicEventType.eventEnvironment">
		<title>Testing presence of property eventEnvironment</title>
		<rule context="//n0:GeologicEvent">
			<assert test="n0:eventEnvironment">Property {http://xmlns.geosciml.org/geologybasic/4.0}eventEnvironment is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:GeologicUnit">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:GeologicUnit">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitType.gbUnitDescription">
		<title>Testing presence of property gbUnitDescription</title>
		<rule context="//n0:GeologicUnit">
			<assert test="n0:gbUnitDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gbUnitDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitType.rank">
		<title>Testing presence of property rank</title>
		<rule context="//n0:GeologicUnit">
			<assert test="n0:rank">Property {http://xmlns.geosciml.org/geologybasic/4.0}rank is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitType.composition">
		<title>Testing presence of property composition</title>
		<rule context="//n0:GeologicUnit">
			<assert test="n0:composition">Property {http://xmlns.geosciml.org/geologybasic/4.0}composition is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitType.hierarchyLink">
		<title>Testing presence of property hierarchyLink</title>
		<rule context="//n0:GeologicUnit">
			<assert test="n0:hierarchyLink">Property {http://xmlns.geosciml.org/geologybasic/4.0}hierarchyLink is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitHierarchyType.proportion">
		<title>Testing presence of property proportion</title>
		<rule context="//n0:GeologicUnitHierarchy">
			<assert test="n0:proportion">Property {http://xmlns.geosciml.org/geologybasic/4.0}proportion is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="MappedFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:MappedFeature">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="MappedFeatureType.resolutionRepresentativeFraction">
		<title>Testing presence of property resolutionRepresentativeFraction</title>
		<rule context="//n0:MappedFeature">
			<assert test="n0:resolutionRepresentativeFraction">Property {http://xmlns.geosciml.org/geologybasic/4.0}resolutionRepresentativeFraction is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="MappedFeatureType.exposure">
		<title>Testing presence of property exposure</title>
		<rule context="//n0:MappedFeature">
			<assert test="n0:exposure">Property {http://xmlns.geosciml.org/geologybasic/4.0}exposure is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="MappedFeatureType.positionalAccuracy">
		<title>Testing presence of property positionalAccuracy</title>
		<rule context="//n0:MappedFeature">
			<assert test="n0:positionalAccuracy">Property {http://xmlns.geosciml.org/geologybasic/4.0}positionalAccuracy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="NaturalGeomorphologicFeatureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:NaturalGeomorphologicFeature">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="NaturalGeomorphologicFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:NaturalGeomorphologicFeature">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
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
<pattern id="ShearDisplacementStructureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:ShearDisplacementStructure">
			<assert test="n0:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ShearDisplacementStructureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:ShearDisplacementStructure">
			<assert test="n0:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ShearDisplacementStructureType.stStructureDescription">
		<title>Testing presence of property stStructureDescription</title>
		<rule context="//n0:ShearDisplacementStructure">
			<assert test="n0:stStructureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}stStructureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
</schema>
