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
  <rule context="//gsmlb:MappedFeature">
   <assert test="gsmlb:specification">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}specification is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="MappedFeature.mappingFrame">
  <title>Testing presence of gsmlb:mappingFrame</title>
  <rule context="//gsmlb:MappedFeature">
   <assert test="gsmlb:mappingFrame">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}mappingFrame is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="MappedFeature.shape">
  <title>Testing presence of gsmlb:shape</title>
  <rule context="//gsmlb:MappedFeature">
   <assert test="gsmlb:shape">Property
    {http://xmlns.geosciml.org/geologybasic/4.0}shape is mandatory - use nil if
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
  <p>It isn't clear what should be done if there is no value as this is voidable
   in INSPIRE but gml:name does not have a nilReason attribute. Would it be OK
   to use a blank name or should it have at least "unnamed" in?</p>
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
    {http://xmlns.geosciml.org/geologybasic/4.0}geologicHistory is mandatory -
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
 <!-- In INSPIRE GeologicEvent isn't a sub-type of GeologicFeature but it does
  have the name property in common. -->
 <pattern id="GeologicEvent.name" is-a="GeologicFeature.name.abstract">
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
    {http://xmlns.geosciml.org/geologybasic/4.0}material is mandatory - use nil
    if a value cannot be provided</assert>
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
    {http://xmlns.geosciml.org/geologybasic/4.0}proportion is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>

 <!-- Borehole -->
 <pattern id="Borehole.identifier">
  <title>Testing presence of gml:identifier</title>
  <rule context="//gsmlbh:Borehole">
   <assert test="gml:identifier">Property
    {http://www.opengis.net/gml/3.2}identifier is mandatory - use nil if a value
    cannot be provided</assert>
  </rule>
 </pattern>
 <pattern id="Borehole.referenceLocation">
  <title>Testing presence of gsmlbh:referenceLocation</title>
  <rule context="//gsmlbh:Borehole">
   <assert test="gsmlbh:referenceLocation">Property
    {http://xmlns.geosciml.org/borehole/4.0}referenceLocation is mandatory - use
    nil if a value cannot be provided</assert>
  </rule>
 </pattern>
</schema>
