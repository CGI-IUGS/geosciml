<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
 xmlns:fn="http://www.w3.org/2005/xpath-functions"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" queryBinding="xslt2">
 <!-- Only for use with Schema aware processor
 <xsl:import-schema schema-location="geoSciMLBasic.xsd"
  namespace="http://xmlns.geosciml.org/geologybasic/4.0"/>
 -->
 <!-- To Do
  - For complex properties should ensure they have content or are nil
 -->
 <title>Properties mandatory for INSPIRE</title>
 <p>This Schematron enforces mandatory properties required by INSPIRE but not
  the GeoSciML Basic XML Schema</p>
 <ns prefix="xlink" uri="http://www.w3.org/1999/xlink"/>
 <ns prefix="gsmlb" uri="http://xmlns.geosciml.org/geologybasic/4.0"/>
 <ns prefix="gsmlbh" uri="http://xmlns.geosciml.org/borehole/4.0"/>
 <ns prefix="gml" uri="http://www.opengis.net/gml/3.2"/>
 <ns prefix="sa" uri="http://www.opengis.net/sampling/2.0"/>
 
 <!-- MappedFeature -->
 <pattern id="MappedFeature.specification">
  <title>Testing presence of gsmlb:specification</title>
  <rule context="//gsmlb:MappingFrame">
   <assert test="gsmlb:specification">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}specification is mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="MappedFeature.mappingFrame">
  <title>Testing presence of gsmlb:mappingFrame</title>
  <rule context="//gsmlb:MappingFrame">
   <assert test="gsmlb:mappingFrame">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}mappingFrame is mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="MappedFeature.shape">
  <title>Testing presence of gsmlb:shape</title>
  <rule context="//gsmlb:MappingFrame">
   <assert test="gsmlb:shape">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}shape is mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 
 <!-- GeologicFeature -->
 <!-- Only for use with Schema aware processor
 <pattern id="GeologicFeature.identifier">
  <title>Testing presence of gml:identifier</title>
  <rule
   context="//schema-element(gsmlb:GeologicFeature)[not(self::gsmlb:GeologicEvent)]">
   <assert test="gml:identifier">Property
    {http://www.opengis.net/gml/3.2}identifier is mandatory - use nil if a value
    cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicFeature.name">
  <title>Testing presence of gml:name</title>
  <rule context="//schema-element(gsmlb:GeologicFeature)">
   <assert test="gml:name">Property {http://www.opengis.net/gml/3.2}name is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicFeature.geologicHistory">
  <title>Testing presence of gsmlb:geologicHistory</title>
  <rule
   context="//schema-element(gsmlb:GeologicFeature)[not(self::gsmlb:GeologicEvent)]">
   <assert test="gsmlb:geologicHistory">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}geologicHistory is mandatory -
    use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 -->
 <!-- Explicit listing of sub-types of GeologicFeature for non-Schema-aware
  processors -->
 <pattern id="GeologicUnit.identifier">
  <title>Testing presence of gml:identifier</title>
  <rule
   context="//gsmlb:GeologicUnit">
   <assert test="gml:identifier">Property
    {http://www.opengis.net/gml/3.2}identifier is mandatory - use nil if a value
    cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="ShearDisplacementStructure.identifier">
  <title>Testing presence of gml:identifier</title>
  <rule
   context="//gsmlb:ShearDisplacementStructure">
   <assert test="gml:identifier">Property
    {http://www.opengis.net/gml/3.2}identifier is mandatory - use nil if a value
    cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="Fold.identifier">
  <title>Testing presence of gml:identifier</title>
  <rule
   context="//gsmlb:Fold">
   <assert test="gml:identifier">Property
    {http://www.opengis.net/gml/3.2}identifier is mandatory - use nil if a value
    cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="AnthropogenicGeomorphologicFeature.identifier">
  <title>Testing presence of gml:identifier</title>
  <rule
   context="//gsmlb:AnthropogenicGeomorphologicFeature">
   <assert test="gml:identifier">Property
    {http://www.opengis.net/gml/3.2}identifier is mandatory - use nil if a value
    cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="NaturalGeomorphologicFeature.identifier">
  <title>Testing presence of gml:identifier</title>
  <rule
   context="//gsmlb:NaturalGeomorphologicFeature">
   <assert test="gml:identifier">Property
    {http://www.opengis.net/gml/3.2}identifier is mandatory - use nil if a value
    cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicUnit.name">
  <title>Testing presence of gml:name</title>
  <rule context="//gsmlb:GeologicUnit">
   <assert test="gml:name">Property {http://www.opengis.net/gml/3.2}name is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="ShearDisplacementStructure.name">
  <title>Testing presence of gml:name</title>
  <rule context="//gsmlb:ShearDisplacementStructure">
   <assert test="gml:name">Property {http://www.opengis.net/gml/3.2}name is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="Fold.name">
  <title>Testing presence of gml:name</title>
  <rule context="//gsmlb:Fold">
   <assert test="gml:name">Property {http://www.opengis.net/gml/3.2}name is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="AnthropogenicGeomorphologicFeature.name">
  <title>Testing presence of gml:name</title>
  <rule context="//gsmlb:AnthropogenicGeomorphologicFeature">
   <assert test="gml:name">Property {http://www.opengis.net/gml/3.2}name is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="NaturalGeomorphologicFeature.name">
  <title>Testing presence of gml:name</title>
  <rule context="//gsmlb:NaturalGeomorphologicFeature">
   <assert test="gml:name">Property {http://www.opengis.net/gml/3.2}name is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicUnit.geologicHistory">
  <title>Testing presence of gsmlb:geologicHistory</title>
  <rule context="//gsmlb:GeologicUnit">
   <assert test="gsmlb:geologicHistory">Property {http://xmlns.geosciml.org/geologybasic/4.0}geologicHistory is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="ShearDisplacementStructure.geologicHistory">
  <title>Testing presence of gsmlb:geologicHistory</title>
  <rule context="//gsmlb:ShearDisplacementStructure">
   <assert test="gsmlb:geologicHistory">Property {http://xmlns.geosciml.org/geologybasic/4.0}geologicHistory is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="Fold.geologicHistory">
  <title>Testing presence of gsmlb:geologicHistory</title>
  <rule context="//gsmlb:Fold">
   <assert test="gsmlb:geologicHistory">Property {http://xmlns.geosciml.org/geologybasic/4.0}geologicHistory is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="AnthropogenicGeomorphologicFeature.geologicHistory">
  <title>Testing presence of gsmlb:geologicHistory</title>
  <rule context="//gsmlb:AnthropogenicGeomorphologicFeature">
   <assert test="gsmlb:geologicHistory">Property {http://xmlns.geosciml.org/geologybasic/4.0}geologicHistory is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="NaturalGeomorphologicFeature.geologicHistory">
  <title>Testing presence of gsmlb:geologicHistory</title>
  <rule context="//gsmlb:NaturalGeomorphologicFeature">
   <assert test="gsmlb:geologicHistory">Property {http://xmlns.geosciml.org/geologybasic/4.0}geologicHistory is
    mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 
 <!-- GeologicUnit -->
 <pattern id="GeologicUnit.geologicUnitType">
  <title>Testing presence of gsmlb:geologicUnitType</title>
  <rule context="//gsmlb:GeologicUnit">
   <assert test="gsmlb:geologicUnitType">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}geologicUnitType is mandatory -
    use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicUnit.composition">
  <title>Testing presence of gsmlb:composition</title>
  <rule context="//gsmlb:GeologicUnit">
   <assert test="gsmlb:composition">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}composition is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <!-- ShearDisplacementStructure -->
 <pattern id="ShearDisplacementStructure.faultType">
  <title>Testing presence of gsmlb:faultType</title>
  <rule context="//gsmlb:ShearDisplacementStructure">
   <assert test="gsmlb:faultType">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}faultType is mandatory - use nil
    if a value cannot be provided</assert>
  </rule>
 </pattern>
 <!-- Fold -->
 <pattern id="Fold.profileType">
  <title>Testing presence of gsmlb:profileType</title>
  <rule context="//gsmlb:Fold">
   <assert test="gsmlb:profileType">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}profileType is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <!-- NaturalGeomorphologicFeature -->
 <pattern id="NaturalGeomorphologicFeature.naturalGeomorphologicFeatureType">
  <title>Testing presence of gsmlb:naturalGeomorphologicFeatureType</title>
  <rule context="//gsmlb:NaturalGeomorphologicFeature">
   <assert test="gsmlb:naturalGeomorphologicFeatureType">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}naturalGeomorphologicFeatureType
    is mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="NaturalGeomorphologicFeature.activity">
  <title>Testing presence of gsmlb:activity</title>
  <rule context="//gsmlb:NaturalGeomorphologicFeature">
   <assert test="gsmlb:activity">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}activity is mandatory - use nil
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
    {http://xmlns.geosciml.org/geologybasic/4.0}anthropogenicGeomorphologicFeatureType
    is mandatory - use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <!-- GeologicEvent -->
 <pattern id="GeologicEvent.name">
  <title>Testing presence of gml:name</title>
  <rule context="//gml:GeologicEvent">
   <assert test="gml:name">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}name is mandatory - use nil if a
    value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicEvent.youngerNamedAge">
  <title>Testing presence of gsmlb:youngerNamedAge</title>
  <rule context="//gsmlb:GeologicEvent">
   <assert test="gsmlb:youngerNamedAge">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}youngerNamedAge is mandatory -
    use nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicEvent.olderNamedAge">
  <title>Testing presence of gsmlb:olderNamedAge</title>
  <rule context="//gsmlb:GeologicEvent">
   <assert test="gsmlb:olderNamedAge">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}olderNamedAge is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicEvent.eventProcess">
  <title>Testing presence of gsmlb:eventProcess</title>
  <rule context="//gsmlb:GeologicEvent">
   <assert test="gsmlb:eventProcess">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}eventProcess is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="GeologicEvent.eventEnvironment">
  <title>Testing presence of gsmlb:eventEnvironment</title>
  <rule context="//gsmlb:GeologicEvent">
   <assert test="gsmlb:eventEnvironment">Property
    {http://www.opengis.net/gml/3.2}eventEnvironment is mandatory - use nil if a
    value cannot be provided</assert>
  </rule>
 </pattern>
 
 <!-- CompositionPart -->
 <pattern id="CompositionPart.material">
  <title>Testing presence of gsmlb:material</title>
  <rule context="//gsmlb:CompositionPart">
   <assert test="gsmlb:material">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}material is mandatory - use nil if a
    value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="CompositionPart.role">
  <title>Testing presence of gsmlb:role</title>
  <rule context="//gsmlb:CompositionPart">
   <assert test="gsmlb:role">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}role is mandatory - use nil if a
    value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="CompositionPart.proportion">
  <title>Testing presence of gsmlb:proportion</title>
  <rule context="//gsmlb:CompositionPart">
   <assert test="gsmlb:proportion">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}proportion is mandatory - use nil if a
    value cannot be provided</assert>
  </rule>
 </pattern>
 
 <!-- Borehole -->
 <pattern id="Borehole.identifier">
  <title>Testing presence of gml:identifier</title>
  <rule
   context="//gsmlbh:Borehole">
   <assert test="gml:identifier">Property
    {http://www.opengis.net/gml/3.2}identifier is mandatory - use nil if a value
    cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="Borehole.referenceLocation">
  <title>Testing presence of gsmlbh:referenceLocation</title>
  <rule context="//gsmlbh:Borehole">
   <assert test="gsmlbh:referenceLocation">Property
    {http://xmlns.geosciml.org/borehole/4.0}referenceLocation is mandatory - use nil if a
    value cannot be provided</assert>
  </rule>
 </pattern>
</schema>
