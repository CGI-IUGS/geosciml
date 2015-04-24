<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:sch="http://purl.oclc.org/dsdl/schematron" fpi="http://schemas.opengis.net/gwml/2.0/xml-rules.sch" see="http://www.opengis.net/spec/gwml/2.0/req/xsd-xml-rules" queryBinding="xslt2">
	<title>nillable property rules</title>
	<p>This sch enforces mandatory nillable properties originally defined in XSD</p>
	<ns prefix="n" uri="http://xmlns.geosciml.org/geologyextension/4.0"/>
	<pattern id="alterationProduct">
		<title>Testing presence of property alterationProduct</title>
		<rule context="n:AlterationDescription">
			<assert test="n:alterationProduct">Property alterationProduct is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="alterationDistribution">
		<title>Testing presence of property alterationDistribution</title>
		<rule context="n:AlterationDescription">
			<assert test="n:alterationDistribution">Property alterationDistribution is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="alterationEvent">
		<title>Testing presence of property alterationEvent</title>
		<rule context="n:AlterationDescription">
			<assert test="n:alterationEvent">Property alterationEvent is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="beddingPattern">
		<title>Testing presence of property beddingPattern</title>
		<rule context="n:BeddingDescription">
			<assert test="n:beddingPattern">Property beddingPattern is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="beddingStyle">
		<title>Testing presence of property beddingStyle</title>
		<rule context="n:BeddingDescription">
			<assert test="n:beddingStyle">Property beddingStyle is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="beddingThickness">
		<title>Testing presence of property beddingThickness</title>
		<rule context="n:BeddingDescription">
			<assert test="n:beddingThickness">Property beddingThickness is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="particleGeometry">
		<title>Testing presence of property particleGeometry</title>
		<rule context="n:CompoundMaterialDescription">
			<assert test="n:particleGeometry">Property particleGeometry is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="compositionCategory">
		<title>Testing presence of property compositionCategory</title>
		<rule context="n:CompoundMaterialDescription">
			<assert test="n:compositionCategory">Property compositionCategory is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="geneticCategory">
		<title>Testing presence of property geneticCategory</title>
		<rule context="n:CompoundMaterialDescription">
			<assert test="n:geneticCategory">Property geneticCategory is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="constituent">
		<title>Testing presence of property constituent</title>
		<rule context="n:CompoundMaterialDescription">
			<assert test="n:constituent">Property constituent is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="constituentMaterial">
		<title>Testing presence of property constituentMaterial</title>
		<rule context="n:ConstituentPart">
			<assert test="n:constituentMaterial">Property constituentMaterial is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="proportion">
		<title>Testing presence of property proportion</title>
		<rule context="n:ConstituentPart">
			<assert test="n:proportion">Property proportion is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="constituentParticleGeometry">
		<title>Testing presence of property constituentParticleGeometry</title>
		<rule context="n:ConstituentPart">
			<assert test="n:constituentParticleGeometry">Property constituentParticleGeometry is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="relatedMaterial">
		<title>Testing presence of property relatedMaterial</title>
		<rule context="n:ConstituentPart">
			<assert test="n:relatedMaterial">Property relatedMaterial is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="contactCharacter">
		<title>Testing presence of property contactCharacter</title>
		<rule context="n:ContactDescription">
			<assert test="n:contactCharacter">Property contactCharacter is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="orientation">
		<title>Testing presence of property orientation</title>
		<rule context="n:ContactDescription">
			<assert test="n:orientation">Property orientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="correlatesWith">
		<title>Testing presence of property correlatesWith</title>
		<rule context="n:ContactDescription">
			<assert test="n:correlatesWith">Property correlatesWith is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="hangingWallDirection">
		<title>Testing presence of property hangingWallDirection</title>
		<rule context="n:DisplacementValue">
			<assert test="n:hangingWallDirection">Property hangingWallDirection is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="movementSense">
		<title>Testing presence of property movementSense</title>
		<rule context="n:DisplacementValue">
			<assert test="n:movementSense">Property movementSense is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="movementType">
		<title>Testing presence of property movementType</title>
		<rule context="n:DisplacementValue">
			<assert test="n:movementType">Property movementType is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="displacementEvent">
		<title>Testing presence of property displacementEvent</title>
		<rule context="n:DisplacementValue">
			<assert test="n:displacementEvent">Property displacementEvent is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="amplitude">
		<title>Testing presence of property amplitude</title>
		<rule context="n:FoldDescription">
			<assert test="n:amplitude">Property amplitude is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="axialSurfaceOrientation">
		<title>Testing presence of property axialSurfaceOrientation</title>
		<rule context="n:FoldDescription">
			<assert test="n:axialSurfaceOrientation">Property axialSurfaceOrientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="geneticModel">
		<title>Testing presence of property geneticModel</title>
		<rule context="n:FoldDescription">
			<assert test="n:geneticModel">Property geneticModel is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="hingeLineCurvature">
		<title>Testing presence of property hingeLineCurvature</title>
		<rule context="n:FoldDescription">
			<assert test="n:hingeLineCurvature">Property hingeLineCurvature is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="hingeLineOrientation">
		<title>Testing presence of property hingeLineOrientation</title>
		<rule context="n:FoldDescription">
			<assert test="n:hingeLineOrientation">Property hingeLineOrientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="hingeShape">
		<title>Testing presence of property hingeShape</title>
		<rule context="n:FoldDescription">
			<assert test="n:hingeShape">Property hingeShape is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="interLimbAngle">
		<title>Testing presence of property interLimbAngle</title>
		<rule context="n:FoldDescription">
			<assert test="n:interLimbAngle">Property interLimbAngle is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="limbShape">
		<title>Testing presence of property limbShape</title>
		<rule context="n:FoldDescription">
			<assert test="n:limbShape">Property limbShape is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="span">
		<title>Testing presence of property span</title>
		<rule context="n:FoldDescription">
			<assert test="n:span">Property span is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="symmetry">
		<title>Testing presence of property symmetry</title>
		<rule context="n:FoldDescription">
			<assert test="n:symmetry">Property symmetry is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="system">
		<title>Testing presence of property system</title>
		<rule context="n:FoldDescription">
			<assert test="n:system">Property system is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="foldSystemMember">
		<title>Testing presence of property foldSystemMember</title>
		<rule context="n:FoldSystem">
			<assert test="n:foldSystemMember">Property foldSystemMember is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="periodic">
		<title>Testing presence of property periodic</title>
		<rule context="n:FoldSystem">
			<assert test="n:periodic">Property periodic is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="wavelength">
		<title>Testing presence of property wavelength</title>
		<rule context="n:FoldSystem">
			<assert test="n:wavelength">Property wavelength is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="definingElement">
		<title>Testing presence of property definingElement</title>
		<rule context="n:FoliationDescription">
			<assert test="n:definingElement">Property definingElement is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="continuity">
		<title>Testing presence of property continuity</title>
		<rule context="n:FoliationDescription">
			<assert test="n:continuity">Property continuity is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="intensity">
		<title>Testing presence of property intensity</title>
		<rule context="n:FoliationDescription">
			<assert test="n:intensity">Property intensity is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="mineralElement">
		<title>Testing presence of property mineralElement</title>
		<rule context="n:FoliationDescription">
			<assert test="n:mineralElement">Property mineralElement is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="spacing">
		<title>Testing presence of property spacing</title>
		<rule context="n:FoliationDescription">
			<assert test="n:spacing">Property spacing is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="quality">
		<title>Testing presence of property quality</title>
		<rule context="n:GeologicDateEstimate">
			<assert test="n:quality">Property quality is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="bedding2">
		<title>Testing presence of property bedding</title>
		<rule context="n:GeologicUnitDescription">
			<assert test="n:bedding">Property bedding is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="bodyMorphology">
		<title>Testing presence of property bodyMorphology</title>
		<rule context="n:GeologicUnitDescription">
			<assert test="n:bodyMorphology">Property bodyMorphology is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="unitComposition">
		<title>Testing presence of property unitComposition</title>
		<rule context="n:GeologicUnitDescription">
			<assert test="n:unitComposition">Property unitComposition is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="outcropCharacter">
		<title>Testing presence of property outcropCharacter</title>
		<rule context="n:GeologicUnitDescription">
			<assert test="n:outcropCharacter">Property outcropCharacter is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="unitThickness">
		<title>Testing presence of property unitThickness</title>
		<rule context="n:GeologicUnitDescription">
			<assert test="n:unitThickness">Property unitThickness is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="lithology">
		<title>Testing presence of property lithology</title>
		<rule context="n:LayerComposition">
			<assert test="n:lithology">Property lithology is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="stLayerDescription">
		<title>Testing presence of property stLayerDescription</title>
		<rule context="n:Layering">
			<assert test="n:stLayerDescription">Property stLayerDescription is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="definingElement">
		<title>Testing presence of property definingElement</title>
		<rule context="n:Lineation">
			<assert test="n:definingElement">Property definingElement is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="intensity">
		<title>Testing presence of property intensity</title>
		<rule context="n:Lineation">
			<assert test="n:intensity">Property intensity is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="mineralElement">
		<title>Testing presence of property mineralElement</title>
		<rule context="n:Lineation">
			<assert test="n:mineralElement">Property mineralElement is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="orientation">
		<title>Testing presence of property orientation</title>
		<rule context="n:Lineation">
			<assert test="n:orientation">Property orientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="metamorphicFacies">
		<title>Testing presence of property metamorphicFacies</title>
		<rule context="n:MetamorphicDescription">
			<assert test="n:metamorphicFacies">Property metamorphicFacies is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="metamorphicGrade">
		<title>Testing presence of property metamorphicGrade</title>
		<rule context="n:MetamorphicDescription">
			<assert test="n:metamorphicGrade">Property metamorphicGrade is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="peakPressureValue">
		<title>Testing presence of property peakPressureValue</title>
		<rule context="n:MetamorphicDescription">
			<assert test="n:peakPressureValue">Property peakPressureValue is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="peakTemperatureValue">
		<title>Testing presence of property peakTemperatureValue</title>
		<rule context="n:MetamorphicDescription">
			<assert test="n:peakTemperatureValue">Property peakTemperatureValue is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="protolithLithology">
		<title>Testing presence of property protolithLithology</title>
		<rule context="n:MetamorphicDescription">
			<assert test="n:protolithLithology">Property protolithLithology is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="metamorphicEvent">
		<title>Testing presence of property metamorphicEvent</title>
		<rule context="n:MetamorphicDescription">
			<assert test="n:metamorphicEvent">Property metamorphicEvent is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="slipComponent">
		<title>Testing presence of property slipComponent</title>
		<rule context="n:NetSlipValue">
			<assert test="n:slipComponent">Property slipComponent is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="aspectRatio">
		<title>Testing presence of property aspectRatio</title>
		<rule context="n:ParticleGeometryDescription">
			<assert test="n:aspectRatio">Property aspectRatio is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="shape">
		<title>Testing presence of property shape</title>
		<rule context="n:ParticleGeometryDescription">
			<assert test="n:shape">Property shape is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="size">
		<title>Testing presence of property size</title>
		<rule context="n:ParticleGeometryDescription">
			<assert test="n:size">Property size is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="sorting">
		<title>Testing presence of property sorting</title>
		<rule context="n:ParticleGeometryDescription">
			<assert test="n:sorting">Property sorting is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="sourceOrganism">
		<title>Testing presence of property sourceOrganism</title>
		<rule context="n:ParticleGeometryDescription">
			<assert test="n:sourceOrganism">Property sourceOrganism is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="consolidationDegree">
		<title>Testing presence of property consolidationDegree</title>
		<rule context="n:RockMaterialDescription">
			<assert test="n:consolidationDegree">Property consolidationDegree is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="stPhysicalProperty">
		<title>Testing presence of property stPhysicalProperty</title>
		<rule context="n:ShearDisplacementStructureDescription">
			<assert test="n:stPhysicalProperty">Property stPhysicalProperty is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="planeOrientation">
		<title>Testing presence of property planeOrientation</title>
		<rule context="n:ShearDisplacementStructureDescription">
			<assert test="n:planeOrientation">Property planeOrientation is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="heave">
		<title>Testing presence of property heave</title>
		<rule context="n:SlipComponents">
			<assert test="n:heave">Property heave is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="horizontalSlip">
		<title>Testing presence of property horizontalSlip</title>
		<rule context="n:SlipComponents">
			<assert test="n:horizontalSlip">Property horizontalSlip is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
	<pattern id="throw">
		<title>Testing presence of property throw</title>
		<rule context="n:SlipComponents">
			<assert test="n:throw">Property throw is mandatory - use nil if a value cannot be provided</assert>
		</rule>
	</pattern>
</schema>