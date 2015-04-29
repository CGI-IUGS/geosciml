
<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/gwml/2.0/xml-rules.sch" see="http://www.opengis.net/spec/gwml/2.0/req/xsd-xml-rules" queryBinding="xslt2">
	<title>nillable property rules</title>
	<p>This sch enforces mandatory nillable properties originally defined in XSD.  This series of rules has been generated automatically for a properties that have nillable=true and minOccurs=0</p>
<ns prefix= "n10" uri="http://www.isotc211.org/2005/gts"/>
<ns prefix= "n8" uri="http://www.isotc211.org/2005/gco"/>
<ns prefix= "n0" uri="http://xmlns.geosciml.org/geologyextension/4.0"/>
<ns prefix= "n7" uri="http://www.w3.org/1999/xlink"/>
<ns prefix= "n1" uri="http://xmlns.geosciml.org/geologybasic/4.0"/>
<ns prefix= "n2" uri="http://www.opengis.net/gml/3.2"/>
<ns prefix= "n12" uri="http://www.opengis.net/gml/3.3/exr"/>
<ns prefix= "n9" uri="http://www.isotc211.org/2005/gss"/>
<ns prefix= "n11" uri="http://www.isotc211.org/2005/gsr"/>
<ns prefix= "n3" uri="http://www.opengis.net/swe/2.0"/>
<ns prefix= "n6" uri="http://www.isotc211.org/2005/gmd"/>
<ns prefix= "n13" uri="http://www.w3.org/XML/1998/namespace"/>
<ns prefix= "n4" uri="http://www.opengis.net/sampling/2.0"/>
<ns prefix= "n5" uri="http://www.opengis.net/om/2.0"/>
<pattern id="AlterationDescriptionType.alterationProduct">
		<title>Testing presence of property alterationProduct</title>
		<rule context="//n0:AlterationDescription">
			<assert test="n0:alterationProduct">Property {http://xmlns.geosciml.org/geologyextension/4.0}alterationProduct is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="AlterationDescriptionType.alterationDistribution">
		<title>Testing presence of property alterationDistribution</title>
		<rule context="//n0:AlterationDescription">
			<assert test="n0:alterationDistribution">Property {http://xmlns.geosciml.org/geologyextension/4.0}alterationDistribution is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BeddingDescriptionType.beddingPattern">
		<title>Testing presence of property beddingPattern</title>
		<rule context="//n0:BeddingDescription">
			<assert test="n0:beddingPattern">Property {http://xmlns.geosciml.org/geologyextension/4.0}beddingPattern is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BeddingDescriptionType.beddingStyle">
		<title>Testing presence of property beddingStyle</title>
		<rule context="//n0:BeddingDescription">
			<assert test="n0:beddingStyle">Property {http://xmlns.geosciml.org/geologyextension/4.0}beddingStyle is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="BeddingDescriptionType.beddingThickness">
		<title>Testing presence of property beddingThickness</title>
		<rule context="//n0:BeddingDescription">
			<assert test="n0:beddingThickness">Property {http://xmlns.geosciml.org/geologyextension/4.0}beddingThickness is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="CompoundMaterialDescriptionType.particleGeometry">
		<title>Testing presence of property particleGeometry</title>
		<rule context="//n0:CompoundMaterialDescription">
			<assert test="n0:particleGeometry">Property {http://xmlns.geosciml.org/geologyextension/4.0}particleGeometry is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="CompoundMaterialDescriptionType.compositionCategory">
		<title>Testing presence of property compositionCategory</title>
		<rule context="//n0:CompoundMaterialDescription">
			<assert test="n0:compositionCategory">Property {http://xmlns.geosciml.org/geologyextension/4.0}compositionCategory is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="CompoundMaterialDescriptionType.geneticCategory">
		<title>Testing presence of property geneticCategory</title>
		<rule context="//n0:CompoundMaterialDescription">
			<assert test="n0:geneticCategory">Property {http://xmlns.geosciml.org/geologyextension/4.0}geneticCategory is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="CompoundMaterialDescriptionType.constituent">
		<title>Testing presence of property constituent</title>
		<rule context="//n0:CompoundMaterialDescription">
			<assert test="n0:constituent">Property {http://xmlns.geosciml.org/geologyextension/4.0}constituent is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ConstituentPartType.constituentMaterial">
		<title>Testing presence of property constituentMaterial</title>
		<rule context="//n0:ConstituentPart">
			<assert test="n0:constituentMaterial">Property {http://xmlns.geosciml.org/geologyextension/4.0}constituentMaterial is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ConstituentPartType.proportion">
		<title>Testing presence of property proportion</title>
		<rule context="//n0:ConstituentPart">
			<assert test="n0:proportion">Property {http://xmlns.geosciml.org/geologyextension/4.0}proportion is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ConstituentPartType.constituentParticleGeometry">
		<title>Testing presence of property constituentParticleGeometry</title>
		<rule context="//n0:ConstituentPart">
			<assert test="n0:constituentParticleGeometry">Property {http://xmlns.geosciml.org/geologyextension/4.0}constituentParticleGeometry is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ConstituentPartType.relatedMaterial">
		<title>Testing presence of property relatedMaterial</title>
		<rule context="//n0:ConstituentPart">
			<assert test="n0:relatedMaterial">Property {http://xmlns.geosciml.org/geologyextension/4.0}relatedMaterial is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="DisplacementEventType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:DisplacementEvent">
			<assert test="n1:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="DisplacementEventType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:DisplacementEvent">
			<assert test="n1:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="DisplacementEventType.numericAge">
		<title>Testing presence of property numericAge</title>
		<rule context="//n0:DisplacementEvent">
			<assert test="n1:numericAge">Property {http://xmlns.geosciml.org/geologybasic/4.0}numericAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="DisplacementEventType.gaEventDescription">
		<title>Testing presence of property gaEventDescription</title>
		<rule context="//n0:DisplacementEvent">
			<assert test="n1:gaEventDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}gaEventDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="DisplacementEventType.olderNamedAge">
		<title>Testing presence of property olderNamedAge</title>
		<rule context="//n0:DisplacementEvent">
			<assert test="n1:olderNamedAge">Property {http://xmlns.geosciml.org/geologybasic/4.0}olderNamedAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="DisplacementEventType.youngerNamedAge">
		<title>Testing presence of property youngerNamedAge</title>
		<rule context="//n0:DisplacementEvent">
			<assert test="n1:youngerNamedAge">Property {http://xmlns.geosciml.org/geologybasic/4.0}youngerNamedAge is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="DisplacementEventType.eventEnvironment">
		<title>Testing presence of property eventEnvironment</title>
		<rule context="//n0:DisplacementEvent">
			<assert test="n1:eventEnvironment">Property {http://xmlns.geosciml.org/geologybasic/4.0}eventEnvironment is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoldSystemType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:FoldSystem">
			<assert test="n1:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoldSystemType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:FoldSystem">
			<assert test="n1:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoldSystemType.foldSystemMember">
		<title>Testing presence of property foldSystemMember</title>
		<rule context="//n0:FoldSystem">
			<assert test="n0:foldSystemMember">Property {http://xmlns.geosciml.org/geologyextension/4.0}foldSystemMember is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoldSystemType.periodic">
		<title>Testing presence of property periodic</title>
		<rule context="//n0:FoldSystem">
			<assert test="n0:periodic">Property {http://xmlns.geosciml.org/geologyextension/4.0}periodic is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FoldSystemType.wavelength">
		<title>Testing presence of property wavelength</title>
		<rule context="//n0:FoldSystem">
			<assert test="n0:wavelength">Property {http://xmlns.geosciml.org/geologyextension/4.0}wavelength is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FractureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:Fracture">
			<assert test="n1:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="FractureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:Fracture">
			<assert test="n1:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicDateEstimateType.quality">
		<title>Testing presence of property quality</title>
		<rule context="//n0:GeologicDateEstimate">
			<assert test="n0:quality">Property {http://xmlns.geosciml.org/geologyextension/4.0}quality is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitDescriptionType.bedding">
		<title>Testing presence of property bedding</title>
		<rule context="//n0:GeologicUnitDescription">
			<assert test="n0:bedding">Property {http://xmlns.geosciml.org/geologyextension/4.0}bedding is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitDescriptionType.bodyMorphology">
		<title>Testing presence of property bodyMorphology</title>
		<rule context="//n0:GeologicUnitDescription">
			<assert test="n0:bodyMorphology">Property {http://xmlns.geosciml.org/geologyextension/4.0}bodyMorphology is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitDescriptionType.unitComposition">
		<title>Testing presence of property unitComposition</title>
		<rule context="//n0:GeologicUnitDescription">
			<assert test="n0:unitComposition">Property {http://xmlns.geosciml.org/geologyextension/4.0}unitComposition is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="GeologicUnitDescriptionType.outcropCharacter">
		<title>Testing presence of property outcropCharacter</title>
		<rule context="//n0:GeologicUnitDescription">
			<assert test="n0:outcropCharacter">Property {http://xmlns.geosciml.org/geologyextension/4.0}outcropCharacter is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="JointType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:Joint">
			<assert test="n1:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="JointType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:Joint">
			<assert test="n1:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="LayeringType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:Layering">
			<assert test="n1:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="LayeringType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:Layering">
			<assert test="n1:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="LayeringType.stFoliationDescription">
		<title>Testing presence of property stFoliationDescription</title>
		<rule context="//n0:Layering">
			<assert test="n1:stFoliationDescription">Property {http://xmlns.geosciml.org/geologybasic/4.0}stFoliationDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="LayeringType.orientation">
		<title>Testing presence of property orientation</title>
		<rule context="//n0:Layering">
			<assert test="n1:orientation">Property {http://xmlns.geosciml.org/geologybasic/4.0}orientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="LineationType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:Lineation">
			<assert test="n1:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="LineationType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:Lineation">
			<assert test="n1:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="LineationType.definingElement">
		<title>Testing presence of property definingElement</title>
		<rule context="//n0:Lineation">
			<assert test="n0:definingElement">Property {http://xmlns.geosciml.org/geologyextension/4.0}definingElement is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="LineationType.mineralElement">
		<title>Testing presence of property mineralElement</title>
		<rule context="//n0:Lineation">
			<assert test="n0:mineralElement">Property {http://xmlns.geosciml.org/geologyextension/4.0}mineralElement is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="LineationType.orientation">
		<title>Testing presence of property orientation</title>
		<rule context="//n0:Lineation">
			<assert test="n0:orientation">Property {http://xmlns.geosciml.org/geologyextension/4.0}orientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="MetamorphicDescriptionType.metamorphicFacies">
		<title>Testing presence of property metamorphicFacies</title>
		<rule context="//n0:MetamorphicDescription">
			<assert test="n0:metamorphicFacies">Property {http://xmlns.geosciml.org/geologyextension/4.0}metamorphicFacies is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="MetamorphicDescriptionType.metamorphicGrade">
		<title>Testing presence of property metamorphicGrade</title>
		<rule context="//n0:MetamorphicDescription">
			<assert test="n0:metamorphicGrade">Property {http://xmlns.geosciml.org/geologyextension/4.0}metamorphicGrade is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="MetamorphicDescriptionType.peakPressureValue">
		<title>Testing presence of property peakPressureValue</title>
		<rule context="//n0:MetamorphicDescription">
			<assert test="n0:peakPressureValue">Property {http://xmlns.geosciml.org/geologyextension/4.0}peakPressureValue is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="MetamorphicDescriptionType.peakTemperatureValue">
		<title>Testing presence of property peakTemperatureValue</title>
		<rule context="//n0:MetamorphicDescription">
			<assert test="n0:peakTemperatureValue">Property {http://xmlns.geosciml.org/geologyextension/4.0}peakTemperatureValue is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="MetamorphicDescriptionType.protolithLithology">
		<title>Testing presence of property protolithLithology</title>
		<rule context="//n0:MetamorphicDescription">
			<assert test="n0:protolithLithology">Property {http://xmlns.geosciml.org/geologyextension/4.0}protolithLithology is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="NonDirectionalStructureType.classifer">
		<title>Testing presence of property classifer</title>
		<rule context="//n0:NonDirectionalStructure">
			<assert test="n1:classifer">Property {http://xmlns.geosciml.org/geologybasic/4.0}classifer is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="NonDirectionalStructureType.observationMethod">
		<title>Testing presence of property observationMethod</title>
		<rule context="//n0:NonDirectionalStructure">
			<assert test="n1:observationMethod">Property {http://xmlns.geosciml.org/geologybasic/4.0}observationMethod is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ParticleGeometryDescriptionType.aspectRatio">
		<title>Testing presence of property aspectRatio</title>
		<rule context="//n0:ParticleGeometryDescription">
			<assert test="n0:aspectRatio">Property {http://xmlns.geosciml.org/geologyextension/4.0}aspectRatio is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ParticleGeometryDescriptionType.shape">
		<title>Testing presence of property shape</title>
		<rule context="//n0:ParticleGeometryDescription">
			<assert test="n0:shape">Property {http://xmlns.geosciml.org/geologyextension/4.0}shape is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ParticleGeometryDescriptionType.size">
		<title>Testing presence of property size</title>
		<rule context="//n0:ParticleGeometryDescription">
			<assert test="n0:size">Property {http://xmlns.geosciml.org/geologyextension/4.0}size is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ParticleGeometryDescriptionType.sorting">
		<title>Testing presence of property sorting</title>
		<rule context="//n0:ParticleGeometryDescription">
			<assert test="n0:sorting">Property {http://xmlns.geosciml.org/geologyextension/4.0}sorting is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="ParticleGeometryDescriptionType.sourceOrganism">
		<title>Testing presence of property sourceOrganism</title>
		<rule context="//n0:ParticleGeometryDescription">
			<assert test="n0:sourceOrganism">Property {http://xmlns.geosciml.org/geologyextension/4.0}sourceOrganism is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
<pattern id="RockMaterialDescriptionType.consolidationDegree">
		<title>Testing presence of property consolidationDegree</title>
		<rule context="//n0:RockMaterialDescription">
			<assert test="n0:consolidationDegree">Property {http://xmlns.geosciml.org/geologyextension/4.0}consolidationDegree is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
</schema>
