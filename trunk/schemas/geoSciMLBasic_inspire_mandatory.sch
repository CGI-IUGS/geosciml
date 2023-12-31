<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
 xmlns:fn="http://www.w3.org/2005/xpath-functions"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">
 <!-- Only for use with Schema aware processor
 <xsl:import-schema schema-location="geoSciMLBasic.xsd"
  namespace="http://www.opengis.net/gsml/4.1/GeoSciML-Basic"/>
 -->
 <!-- To Do
  - For complex properties should ensure they have content or are nil
 -->
 <title>Properties mandatory for INSPIRE</title>
 <p>This Schematron enforces mandatory properties required by INSPIRE but not
  the GeoSciML Basic or Borehole XML Schemas</p>
 <ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
 <ns prefix="gsmlb" uri="http://www.opengis.net/gsml/4.1/GeoSciML-Basic"/>
 <ns prefix="gsmlbh" uri="http://www.opengis.net/gsml/4.1/Borehole"/>
 <ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
 <ns prefix="sa" uri="http://www.opengis.net/sampling/2.0"/>
 <ns prefix="swe" uri="http://www.opengis.net/swe/2.0"/>

 <!-- MappedFeature -->
 <pattern id="MappedFeature.specification">
  <title>Testing presence of gsmlb:specification</title>
  <rule context="//gsmlb:MappedFeature">
   <assert test="gsmlb:specification">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}specification is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="MappedFeature.mappingFrame">
  <title>Testing presence of gsmlb:mappingFrame</title>
  <rule context="//gsmlb:MappedFeature">
   <assert test="gsmlb:mappingFrame">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}mappingFrame is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="MappedFeature.shape">
  <title>Testing presence of gsmlb:shape</title>
  <rule context="//gsmlb:MappedFeature">
   <assert test="gsmlb:shape">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}shape is mandatory - use nil if
    a value cannot be provided</assert>
  </rule>
 </pattern>

 <!-- GeologicFeature -->

 <pattern abstract="true" id="GeologicFeature.identifier.abstract">
  <title>Testing presence and content of gml:identifier to encode
   inspireId</title>
  <rule context="$feature_path">
   <assert test="gml:identifier">Property
    {http://www.opengis.net/gml/3.2}identifier is mandatory</assert>
   <assert test="
     string-length(normalize-space(gml:identifier)) >
     0"
    >{http://www.opengis.net/gml/3.2}identifier must not be empty</assert>
   <assert
    test="
     string-length(normalize-space(gml:identifier/@codeSpace)) >
     0"
    >{http://www.opengis.net/gml/3.2}identifier/@codeSpace must not be
    empty</assert>
  </rule>
 </pattern>

 <pattern abstract="true" id="GeologicFeature.name.abstract">
  <title>Testing presence of gml:name</title>
  <p>This is voidable in INSPIRE but gml:name does not have a nilReason attribute.</p>
  <rule context="$feature_path">
   <assert test="gml:name">Property {http://www.opengis.net/gml/3.2}name is
    mandatory - say "unnamed" if a value cannot be provided</assert>
   <assert test="
     string-length(normalize-space(gml:name)) >
     0"
    >{http://www.opengis.net/gml/3.2}name must not be empty</assert>
  </rule>
 </pattern>

 <pattern abstract="true" id="GeologicFeature.geologicHistory.abstract">
  <title>Testing presence of gsmlb:geologicHistory</title>
  <rule context="$feature_path">
   <assert test="gsmlb:geologicHistory">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}geologicHistory is mandatory -
    use nil if a value cannot be provided</assert>
  </rule>
  <!-- Need to check nil or by ref or inline and this isn't a generic GML
   property type so will have to apply here specifically. Might re-use a generic
   rule though? -->
 </pattern>

 <!-- Only for use with Schema aware processor
 <pattern id="GeologicFeature.identifier" is-a="GeologicFeature.identifier.abstract">
  <param name="feature_path" value="//schema-element(gsmlb:GeologicFeature)[not(self::gsmlb:GeologicEvent)]"/>
 </pattern>
 <pattern id="GeologicFeature.name" is-a="GeologicFeature.name.abstract">
  <param name="feature_path" value="//schema-element(gsmlb:GeologicFeature)"/>
 </pattern>
 <pattern id="GeologicFeature.geologicHistory" is-a="GeologicFeature.geologicHistory.abstract">
  <param name="feature_path" value="//schema-element(gsmlb:GeologicFeature)[not(self::gsmlb:GeologicEvent)]"/>
 </pattern>
 -->

 <!-- Explicit listing of sub-types of GeologicFeature for non-Schema-aware
  processors -->

 <pattern id="GeologicUnit.identifier"
  is-a="GeologicFeature.identifier.abstract">
  <param name="feature_path" value="//gsmlb:GeologicUnit"/>
 </pattern>
 <pattern id="ShearDisplacementStructure.identifier"
  is-a="GeologicFeature.identifier.abstract">
  <param name="feature_path" value="//gsmlb:ShearDisplacementStructure"/>
 </pattern>
 <pattern id="Fold.identifier" is-a="GeologicFeature.identifier.abstract">
  <param name="feature_path" value="//gsmlb:Fold"/>
 </pattern>
 <pattern id="AnthropogenicGeomorphologicFeature.identifier"
  is-a="GeologicFeature.identifier.abstract">
  <param name="feature_path" value="//gsmlb:AnthropogenicGeomorphologicFeature"
  />
 </pattern>
 <pattern id="NaturalGeomorphologicFeature.identifier"
  is-a="GeologicFeature.identifier.abstract">
  <param name="feature_path" value="//gsmlb:NaturalGeomorphologicFeature"/>
 </pattern>

 <pattern id="GeologicUnit.name" is-a="GeologicFeature.name.abstract">
  <param name="feature_path" value="//gsmlb:GeologicUnit"/>
 </pattern>
 <pattern id="ShearDisplacementStructure.name"
  is-a="GeologicFeature.name.abstract">
  <param name="feature_path" value="//gsmlb:ShearDisplacementStructure"/>
 </pattern>
 <pattern id="Fold.name" is-a="GeologicFeature.name.abstract">
  <param name="feature_path" value="//gsmlb:Fold"/>
 </pattern>
 <pattern id="AnthropogenicGeomorphologicFeature.name"
  is-a="GeologicFeature.name.abstract">
  <param name="feature_path" value="//gsmlb:AnthropogenicGeomorphologicFeature"
  />
 </pattern>
 <pattern id="NaturalGeomorphologicFeature.name"
  is-a="GeologicFeature.name.abstract">
  <param name="feature_path" value="//gsmlb:NaturalGeomorphologicFeature"/>
 </pattern>

 <pattern id="GeologicUnit.geologicHistory"
  is-a="GeologicFeature.geologicHistory.abstract">
  <param name="feature_path" value="//gsmlb:GeologicUnit"/>
 </pattern>
 <pattern id="ShearDisplacementStructure.geologicHistory"
  is-a="GeologicFeature.geologicHistory.abstract">
  <param name="feature_path" value="//gsmlb:ShearDisplacementStructure"/>
 </pattern>
 <pattern id="Fold.geologicHistory"
  is-a="GeologicFeature.geologicHistory.abstract">
  <param name="feature_path" value="//gsmlb:Fold"/>
 </pattern>
 <pattern id="AnthropogenicGeomorphologicFeature.geologicHistory"
  is-a="GeologicFeature.geologicHistory.abstract">
  <param name="feature_path" value="//gsmlb:AnthropogenicGeomorphologicFeature"
  />
 </pattern>
 <pattern id="NaturalGeomorphologicFeature.geologicHistory"
  is-a="GeologicFeature.geologicHistory.abstract">
  <param name="feature_path" value="//gsmlb:NaturalGeomorphologicFeature"/>
 </pattern>

 <!-- GeologicUnit -->
 
 <pattern id="GeologicUnit.geologicUnitType">
  <title>Testing presence of gsmlb:geologicUnitType</title>
  <rule context="//gsmlb:GeologicUnit">
   <assert test="gsmlb:geologicUnitType">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}geologicUnitType is mandatory -
    use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <!-- Schema enforces having Composition part inside composition element. -->
 <pattern id="GeologicUnit.composition">
  <title>Testing presence of gsmlb:composition</title>
  <rule context="//gsmlb:GeologicUnit">
   <assert test="gsmlb:composition">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}composition is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 
 <!-- ShearDisplacementStructure -->
 
 <pattern id="ShearDisplacementStructure.faultType">
  <title>Testing presence of gsmlb:faultType</title>
  <rule context="//gsmlb:ShearDisplacementStructure">
   <assert test="gsmlb:faultType">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}faultType is mandatory - use nil
    if a value cannot be provided</assert>
  </rule>
 </pattern>
 
 <!-- Fold -->
 
 <pattern id="Fold.profileType">
  <title>Testing presence of gsmlb:profileType</title>
  <rule context="//gsmlb:Fold">
   <assert test="gsmlb:profileType">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}profileType is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 
 <!-- NaturalGeomorphologicFeature -->
 
 <pattern id="NaturalGeomorphologicFeature.naturalGeomorphologicFeatureType">
  <title>Testing presence of gsmlb:naturalGeomorphologicFeatureType</title>
  <rule context="//gsmlb:NaturalGeomorphologicFeature">
   <assert test="gsmlb:naturalGeomorphologicFeatureType">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}naturalGeomorphologicFeatureType
    is mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="NaturalGeomorphologicFeature.activity">
  <title>Testing presence of gsmlb:activity</title>
  <rule context="//gsmlb:NaturalGeomorphologicFeature">
   <assert test="gsmlb:activity">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}activity is mandatory - use nil
    if a value cannot be provided</assert>
  </rule>
 </pattern>
 
 <!-- AnthropogenicGeomorphologicFeature -->
 
 <pattern
  id="AnthropogenicGeomorphologicFeature.anthropogenicGeomorphologicFeatureType">
  <title>Testing presence of
   gsmlb:anthropogenicGeomorphologicFeatureType</title>
  <rule context="//gsmlb:AnthropogenicGeomorphologicFeature">
   <assert test="gsmlb:anthropogenicGeomorphologicFeatureType">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}anthropogenicGeomorphologicFeatureType
    is mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 
 <!-- GeologicEvent -->
 
 <pattern id="GeologicEvent.name" is-a="GeologicFeature.name.abstract">
  <param name="feature_path" value="//gsmlb:GeologicEvent"/>
 </pattern>
<!-- eventProcess younger and older NamedAge are gml:ReferenceType so a generic test of
  nilReason vs xlink attributes should be fine for "content" -->
 <pattern id="GeologicEvent.eventProcess">
  <title>Testing presence of gsmlb:eventProcess</title>
  <rule context="//gsmlb:GeologicEvent">
   <assert test="gsmlb:eventProcess">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}eventProcess is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicEvent.olderNamedAge">
  <title>Testing presence of gsmlb:olderNamedAge</title>
  <rule context="//gsmlb:GeologicEvent">
   <assert test="gsmlb:olderNamedAge">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}olderNamedAge is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicEvent.youngerNamedAge">
  <title>Testing presence of gsmlb:youngerNamedAge</title>
  <rule context="//gsmlb:GeologicEvent">
   <assert test="gsmlb:youngerNamedAge">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}youngerNamedAge is mandatory -
    use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <!-- eventEnvironment will need nil/by-ref/inline checks explicitly applying. -->
 <pattern id="GeologicEvent.eventEnvironment">
  <title>Testing presence of gsmlb:eventEnvironment</title>
  <rule context="//gsmlb:GeologicEvent">
   <assert test="gsmlb:eventEnvironment">Property
    http://www.opengis.net/gsml/4.1/GeoSciML-Basic}eventEnvironment is mandatory - use nil if a
    value cannot be provided</assert>
  </rule>
 </pattern>

 <!-- CompositionPart -->
 
 <pattern id="CompositionPart.material">
  <title>Testing presence of gsmlb:material and contained lithology</title>
  <rule context="//gsmlb:CompositionPart">
   <assert test="gsmlb:material/gsmlb:RockMaterial/gsmlb:lithology">Mandatory to
    include
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}material/{http://www.opengis.net/gsml/4.1/GeoSciML-Basic}R
    ockMaterial/{http://www.opengis.net/gsml/4.1/GeoSciML-Basic}/lithology - use nil
    on lithology if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="CompositionPart.role">
  <title>Testing presence of gsmlb:role</title>
  <rule context="//gsmlb:CompositionPart">
   <assert test="gsmlb:role">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}role is mandatory - use nil if a
    value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="CompositionPart.proportion">
  <title>Testing presence of gsmlb:proportion</title>
  <rule context="//gsmlb:CompositionPart">
   <assert test="gsmlb:proportion">Property
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}proportion is mandatory - use
    nil if a value cannot be provided</assert>
   <assert test="gsmlb:proportion/swe:QuantityRange or
    gsmlb:proportion/gsmlb:GSML_QuantityRange">Must use
    {http://www.opengis.net/swe/2.0}QuantityRange or
    {http://www.opengis.net/gsml/4.1/GeoSciML-Basic}GSML_QuantityRange to encode
    proportion.</assert>
  </rule>
 </pattern>

 <!-- SWE allows value to be omitted for use in template structures but we must
  have a value for useful data. These rules may belong in a different profile
  file from other nillable related rules. -->
 <pattern id="swe_QuantityRange">
  <rule context="//swe:QuantityRange">
   <assert test="swe:value">Must include value in data instance document.</assert>
  </rule>
 </pattern>
 <!-- GeoSciML allows lowerValue and upperValue to be omitted from
  GSML_QuantityRange, presumably just
  to be consistent with the parent swe:QuantityRange type. -->
 <pattern id="GSML_QuantityRange">
  <rule context="//gsmlb:GSML_QuantityRange">
   <assert test="swe:value">Must include value in data instance document.</assert>
   <assert test="gsmlb:lowerValue">Must include lowerValue in data instance document.</assert>
   <assert test="gsmlb:upperValue">Must include upperValue in data instance document.</assert>
  </rule>
 </pattern>
 
 <!-- Borehole -->

 <pattern id="Borehole.identifier" is-a="GeologicFeature.identifier.abstract">
  <param name="feature_path" value="//gsmlbh:Borehole"/>
 </pattern>
 <pattern id="Borehole.referenceLocation">
  <title>Testing presence of gsmlbh:referenceLocation</title>
  <rule context="//gsmlbh:Borehole">
   <assert test="gsmlbh:referenceLocation">Property
    {http://www.opengis.net/gsml/4.1/Borehole}referenceLocation is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="Borehole.purpose">
  <title>Testing presence of at least one gsmlbh:purpose</title>
  <rule context="//gsmlbh:Borehole">
   <assert test="gsmlbh:indexData/gsmlbh:BoreholeDetails/gsmlbh:purpose">Property
    {http://www.opengis.net/gsml/4.1/Borehole}indexData/{http://www.opengis.net/gsml/4.1/Borehole}BoreholeDetails/{http://www.opengis.net/gsml/4.1/Borehole}purpose is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="Borehole.boreholeLength">
  <title>Testing presence of gsmlbh:boreholeLength</title>
  <rule context="//gsmlbh:Borehole">
   <assert test="gsmlbh:indexData/gsmlbh:BoreholeDetails/gsmlbh:boreholeLength">Property
    {http://www.opengis.net/gsml/4.1/Borehole}indexData/{http://www.opengis.net/gsml/4.1/Borehole}BoreholeDetails/{http://www.opengis.net/gsml/4.1/Borehole}b
    oreholeLength is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="Borehole.logElement">
  <title>Testing presence of gsmlbh:logElement</title>
  <rule context="//gsmlbh:Borehole">
   <assert test="gsmlbh:logElement">Property
    {http://www.opengis.net/gsml/4.1/Borehole}logElement is mandatory - use nil if
   a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="BoreholeInterval.mandatoryProperties">
  <title>Make sure BoreholeInterval properties required by INSPIRE are present</title>
  <!-- Making sure logElement is encoded inline for convenience of other tests -->
  <rule context="//gsmlbh:Borehole/gsmlbh:logElement">
   <assert test="gsmlbh:BoreholeInterval">Must encode {http://www.opengis.net/gsml/4.1/Borehole}BoreholeInterval inline
    to ensure other INSPIRE required properties are included</assert>
   <assert
    test="gsmlbh:BoreholeInterval/gsmlbh:shape">{http://www.opengis.net/gsml/4.1/Borehole}shape is mandatory</assert>
   <assert test="gsmlbh:BoreholeInterval/gsmlbh:mappedIntervalBegin">{http://www.opengis.net/gsml/4.1/Borehole}mappedIntervalBegin is mandatory</assert>
   <assert test="gsmlbh:BoreholeInterval/gsmlbh:mappedIntervalEnd">{http://www.opengis.net/gsml/4.1/Borehole}mappedIntervalEnd is mandatory</assert>
   <assert
    test="gsmlbh:BoreholeInterval/gsmlbh:specification">{http://www.opengis.net/gsml/4.1/Borehole}sp
    ecification is mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
</schema>
