<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/gwml/2.0/xml-rules.sch" see="http://www.opengis.net/spec/gwml/2.0/req/xsd-xml-rules" queryBinding="xslt2">
	<title>nillable property rules</title>
	<p>This sch enforces mandatory nillable properties originally defined in XSD</p>
	<ns prefix="n" uri="http://xmlns.geosciml.org/geologybasic/4.0"/>
	<pattern id="GeologicFeatureType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:GeologicFeature">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicFeatureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:GeologicFeature">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:GeologicFeature">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeomorphologicFeatureType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:GeomorphologicFeature">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeomorphologicFeatureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:GeomorphologicFeature">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeomorphologicFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:GeomorphologicFeature">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeomorphologicFeatureType.gmFeatureDescription">
		<title>Testing presence of property gmFeatureDescription</title>
		<rule context="//n:GeomorphologicFeature">
			<assert test="n:gmFeatureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gmFeatureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="AnthropogenicGeomorphologicFeatureType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:AnthropogenicGeomorphologicFeature">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="AnthropogenicGeomorphologicFeatureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:AnthropogenicGeomorphologicFeature">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="AnthropogenicGeomorphologicFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:AnthropogenicGeomorphologicFeature">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="AnthropogenicGeomorphologicFeatureType.gmFeatureDescription">
		<title>Testing presence of property gmFeatureDescription</title>
		<rule context="//n:AnthropogenicGeomorphologicFeature">
			<assert test="n:gmFeatureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gmFeatureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="CompositionPartType.material">
		<title>Testing presence of property material</title>
		<rule context="//n:CompositionPart">
			<assert test="n:material">Property {http://xmlns.geosciml.org/geologybasic/4.0}material is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="CompositionPartType.proportion">
		<title>Testing presence of property proportion</title>
		<rule context="//n:CompositionPart">
			<assert test="n:proportion">Property {http://xmlns.geosciml.org/geologybasic/4.0}proportion is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicStructureType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:GeologicStructure">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicStructureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:GeologicStructure">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicStructureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:GeologicStructure">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="ContactType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:Contact">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="ContactType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:Contact">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="ContactType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:Contact">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="ContactType.stContactDescription">
		<title>Testing presence of property stContactDescription</title>
		<rule context="//n:Contact">
			<assert test="n:stContactDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}stContactDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoldType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:Fold">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoldType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:Fold">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoldType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:Fold">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoldType.stFoldDescription">
		<title>Testing presence of property stFoldDescription</title>
		<rule context="//n:Fold">
			<assert test="n:stFoldDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}stFoldDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoldType.profileType">
		<title>Testing presence of property profileType</title>
		<rule context="//n:Fold">
			<assert test="n:profileType">Property {http://xmlns.geosciml.org/geologybasic/4.0}profileType is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoliationType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:Foliation">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoliationType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:Foliation">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoliationType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:Foliation">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoliationType.stFoliationDescription">
		<title>Testing presence of property stFoliationDescription</title>
		<rule context="//n:Foliation">
			<assert test="n:stFoliationDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}stFoliationDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="FoliationType.orientation">
		<title>Testing presence of property orientation</title>
		<rule context="//n:Foliation">
			<assert test="n:orientation">Property {http://xmlns.geosciml.org/geologybasic/4.0}orientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GSMLType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:GSML">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicEventType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:GeologicEvent">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicEventType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:GeologicEvent">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicEventType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:GeologicEvent">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicEventType.numericAge">
		<title>Testing presence of property numericAge</title>
		<rule context="//n:GeologicEvent">
			<assert test="n:numericAge">Property {http://xmlns.geosciml.org/geologybasic/4.0}numericAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicEventType.gaEventDescription">
		<title>Testing presence of property gaEventDescription</title>
		<rule context="//n:GeologicEvent">
			<assert test="n:gaEventDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gaEventDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicEventType.olderNamedAge">
		<title>Testing presence of property olderNamedAge</title>
		<rule context="//n:GeologicEvent">
			<assert test="n:olderNamedAge">Property {http://xmlns.geosciml.org/geologybasic/4.0}olderNamedAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicEventType.youngerNamedAge">
		<title>Testing presence of property youngerNamedAge</title>
		<rule context="//n:GeologicEvent">
			<assert test="n:youngerNamedAge">Property {http://xmlns.geosciml.org/geologybasic/4.0}youngerNamedAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicEventType.eventEnvironment">
		<title>Testing presence of property eventEnvironment</title>
		<rule context="//n:GeologicEvent">
			<assert test="n:eventEnvironment">Property {http://xmlns.geosciml.org/geologybasic/4.0}eventEnvironment is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicUnitType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:GeologicUnit">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicUnitType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:GeologicUnit">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicUnitType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:GeologicUnit">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicUnitType.gbUnitDescription">
		<title>Testing presence of property gbUnitDescription</title>
		<rule context="//n:GeologicUnit">
			<assert test="n:gbUnitDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gbUnitDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicUnitType.rank">
		<title>Testing presence of property rank</title>
		<rule context="//n:GeologicUnit">
			<assert test="n:rank">Property {http://xmlns.geosciml.org/geologybasic/4.0}rank is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicUnitType.composition">
		<title>Testing presence of property composition</title>
		<rule context="//n:GeologicUnit">
			<assert test="n:composition">Property {http://xmlns.geosciml.org/geologybasic/4.0}composition is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicUnitType.hierarchyLink">
		<title>Testing presence of property hierarchyLink</title>
		<rule context="//n:GeologicUnit">
			<assert test="n:hierarchyLink">Property {http://xmlns.geosciml.org/geologybasic/4.0}hierarchyLink is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="GeologicUnitHierarchyType.proportion">
		<title>Testing presence of property proportion</title>
		<rule context="//n:GeologicUnitHierarchy">
			<assert test="n:proportion">Property {http://xmlns.geosciml.org/geologybasic/4.0}proportion is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="MappedFeatureType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:MappedFeature">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="MappedFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:MappedFeature">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="MappedFeatureType.resolutionRepresentativeFraction">
		<title>Testing presence of property resolutionRepresentativeFraction</title>
		<rule context="//n:MappedFeature">
			<assert test="n:resolutionRepresentativeFraction">Property {http://xmlns.geosciml.org/geologybasic/4.0}resolutionRepresentativeFraction is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="MappedFeatureType.exposure">
		<title>Testing presence of property exposure</title>
		<rule context="//n:MappedFeature">
			<assert test="n:exposure">Property {http://xmlns.geosciml.org/geologybasic/4.0}exposure is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="MappedFeatureType.positionalAccuracy">
		<title>Testing presence of property positionalAccuracy</title>
		<rule context="//n:MappedFeature">
			<assert test="n:positionalAccuracy">Property {http://xmlns.geosciml.org/geologybasic/4.0}positionalAccuracy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="NaturalGeomorphologicFeatureType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:NaturalGeomorphologicFeature">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="NaturalGeomorphologicFeatureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:NaturalGeomorphologicFeature">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="NaturalGeomorphologicFeatureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:NaturalGeomorphologicFeature">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="NaturalGeomorphologicFeatureType.gmFeatureDescription">
		<title>Testing presence of property gmFeatureDescription</title>
		<rule context="//n:NaturalGeomorphologicFeature">
			<assert test="n:gmFeatureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gmFeatureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="NaturalGeomorphologicFeatureType.activity">
		<title>Testing presence of property activity</title>
		<rule context="//n:NaturalGeomorphologicFeature">
			<assert test="n:activity">Property {http://xmlns.geosciml.org/geologybasic/4.0}activity is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="ShearDisplacementStructureType.boundedBy">
		<title>Testing presence of property boundedBy</title>
		<rule context="//n:ShearDisplacementStructure">
			<assert test="n:boundedBy">Property {http://www.opengis.net/gml/3.2}boundedBy is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="ShearDisplacementStructureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n:ShearDisplacementStructure">
			<assert test="n:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="ShearDisplacementStructureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n:ShearDisplacementStructure">
			<assert test="n:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern><pattern id="ShearDisplacementStructureType.stStructureDescription">
		<title>Testing presence of property stStructureDescription</title>
		<rule context="//n:ShearDisplacementStructure">
			<assert test="n:stStructureDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}stStructureDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
</schema>