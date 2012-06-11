<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:interop="urn:csiro:schematron:lib" queryBinding="xslt2" defaultPhase="model.constraints"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:gsmlst="http://xmlns.geosciml.org/GeologicStructure/3.0"
	xsi:schemaLocation="http://xmlns.geosciml.org/GeologicStructure/3.0 http://schemas.geosciml.org/geologicstructure/3.0/geologicStructure.xsd">
	<title>GeoSciML v3 Profile conformance validation.</title>
	<p>This schema checks GeoSciML v3 Profile conformance by stages.</p>
	<ns prefix="fn" uri="http://www.w3.org/2005/xpath-functions"/>
	<ns prefix="wfs" uri="http://www.opengis.net/wfs/2.0" />
	<ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
	<ns prefix="xlink" uri="http://www.w3.org/1999/xlink" />
	<ns prefix="gml" uri="http://www.opengis.net/gml/3.2" />
	<ns prefix="gsml" uri="http://xmlns.geosciml.org/GeoSciML-Core/3.0" />
	<ns prefix="gsmlgu" uri="http://xmlns.geosciml.org/GeologicUnit/3.0" />
	<ns prefix="gsmlga" uri="http://xmlns.geosciml.org/GeologicAge/3.0" />
	<ns prefix="gsmlem" uri="http://xmlns.geosciml.org/EarthMaterial/3.0" />
	<ns prefix="gsmlst" uri="http://xmlns.geosciml.org/GeologicStructure/3.0" />
	<ns prefix="sa" uri="http://www.opengis.net/sampling/1.0" />
	<ns prefix="swe" uri="http://www.opengis.net/swe/2.0" />
	<ns prefix="rdf" uri="http://www.w3.org/1999/02/22-rdf-syntax-ns#" />
	<ns prefix="skos" uri="http://www.w3.org/2004/02/skos/core#" />
	
	<phase id="model.constraints">
		<p>Check constraints that belong as part of the model that can't be enforced by GeoSciML XML Schema
			or aren't enforced by imported schemas outside the governance of GeoSciML.. 
			Some might be included as Schematron constraints embedded in the XML Schema 
			generated from constraints specified in the UML at some time in the future.</p>
		<active pattern="GeologicUnit.constraints"/>
		<active pattern="Borehole.constraints"/>
		<active pattern="property.constraints"/>
		<active pattern="cgi.geologicunittype.vocabulary"/>
		<active pattern="spatial.data.constraints"/>
		<active pattern="uri.codespace.element"/>
		<active pattern="internal.referential.integrity"/>
		<active pattern="gml.metaDataProperty"/>
		<active pattern="gml.description"/>
		<active pattern="gml.location"/>
	</phase>

	<phase id="full.referential.integrity">
		<p>Check that by reference propeties and URI valued properties point to something appropriate.</p>
		<active pattern="internal.referential.integrity"/>
		<active pattern="external.referential.integrity"/>
	</phase>

	<phase id="cgi.profile">
		<p>Some extra constraints to conform to a standard "CGI profile", mainly meaning using CGI approved dictionaries where they exist for particular properties.</p>
		<active pattern="isccgi.age.vocabulary.older"/>
		<active pattern="isccgi.age.vocabulary.younger"/>
		<active pattern="cgi.lithology.vocabulary"/>
		<active pattern="cgi.valuequalifier.vocabulary"/>
		<active pattern="cgi.MappedFeature_observationMethod"/>
		<active pattern="cgi.geologicunittype.vocabulary"/>
		<active pattern="cgi.gsmlgu_GeologicUnit_observationMethod"/>
		<active pattern="cgi.stratigraphicrank.vocabulary"/>
		<active pattern="cgi.eventprocess.vocabulary"/>
		<active pattern="cgi.geologicunitpartrole.vocabulary"/>
		<active pattern="cgi.gsmlgu_GeologicUnit_bodyMorphology"/>
		<active pattern="cgi.gsmlga_GeologicEvent_eventEnvironment"/>
		<active pattern="cgi.gsmlem_RockMaterial_compositionCategory"/>
		<active pattern="ucum.vocabulary"/>
		<active pattern="spatial.crs.uri"/>
		<active pattern="profiling"/>
	</phase>

	<phase id="wfs2">
		<p>Rules particular to instance documents returned by WFS v2 services.</p>
		<active pattern="wfs2.collection" />
	</phase>
	
	<!-- Just copied from Pavel's JavaScript versions with minimal changes to make XPATH2 RE syntax compatible. -->
	<let name="httpUriRegExp" value="'^https?://[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(/?)([a-zA-Z0-9\-\.\?,&amp;apos;/\\\+&amp;=%\$#_]*)?$'"/>
	<let name="urnRegExp" value="'^urn:([A-Z0-9]([A-Z0-9\-]){1,31}):([A-Z0-9\.:=_\-]|(%[A-F0-9]{2}))+$'"/>
	
	<pattern id="gml.metaDataProperty">
		<title>Don't use deprecated GML metaDataProperty</title>
		<rule context="//gml:metaDataProperty">
			<report test="true()">gml:metaDataProperty is deprecated. (GML v3.2.1 Section 7.2.6)</report>
		</rule>
	</pattern>
	
	<pattern id="gml.description">
		<title>Don't use gml:description by reference</title>
		<rule context="//gml:description">
			<report test="@xlink:href">Using gml:description by reference is deprecated. Use gml:descriptionReference instead.</report>
		</rule>
	</pattern>
	
	<pattern id="gml.location">
		<title>Don't use deprecated gml:location property</title>
		<rule context="//gml:location">
			<report test="true()">gml:location property is deprecated.</report>
		</rule>
	</pattern>

	<pattern id="GeologicUnit.constraints">
		<title>Geologic Unit Constraints</title>
		<p>Validate model constraints on GeologicUnit not enforced by XML Schema</p>
		<rule context="//gsmlgu:GeologicUnit">
			<let name="geologicUnitType" value="gsmlgu:geologicUnitType/@xlink:href"/>

			<let name="isChronostratigraphicUnit" value="$geologicUnitType = 'http://resource.geosciml.org/classifier/cgi/geologicunittype/chronostratigraphic_unit'" />
			<!-- Chronostratigraphic units must have at least one GeologicEvent
			Maybe this doesn't have to be true; the GeologicEvent information might be implicit in a ControlledConcept pointed to by
			the classifier property. Therefore, this rule would be part of an "inline profile".
			Don't bother with further constraints on content (will be handled by rules on GeologicEvent TODO.
			On GeologicEvent either numericAgeDate isn't null or (olderNamedAge and youngerNamedAge aren't null).
			-->
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isChronostratigraphicUnit) or $isChronostratigraphicUnit and count(gsml:relatedFeature/gsmlga:GeologicHistory/gsml:relatedFeature/gsmlga:GeologicEvent) > 0">
				Chronostratigraphic unit (<value-of select="@gml:id"/>) must have at least one Geologic Event defined.
			</assert>
	<!-- As this isn't actually an error it should probably be put into a separate optional reporting phase rather than model.constraints phase -->
			<report
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="$isChronostratigraphicUnit and count(gsml:relatedFeature/gsmlga:GeologicHistory/gsml:relatedFeature/gsmlga:GeologicEvent) > 1">
				ChronostratigraphicUnit geologic unit (<value-of select="@gml:id"/>) has more than one Geologic Event defined.
			</report>
	
	<!-- Change namespaces. Make sure composition is not null (has a CompositionPart).
	Change second half of rule so that there is at least one lithology property in one of the nested RockMaterials-->
			<let name="isLithologicUnit" value="$geologicUnitType = 'http://resource.geosciml.org/classifier/cgi/geologicunittype/lithologic_unit'"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isLithologicUnit) or $isLithologicUnit and count(gsmlgu:composition) > 0 and count(gsmlgu:composition) = count(gsmlgu:composition/gsmlgu:CompositionPart/gsmlgu:material/gsmlem:RockMaterial/gsmlem:lithology)">
				LithologicUnit geologic unit (<value-of select="@gml:id" />) must have at least one valid gsml:composition property defined. 
			</assert>
			<let name="isLithostratigraphicUnit" value="$geologicUnitType = 'http://resource.geosciml.org/classifier/cgi/geologicunittype/lithostratigraphic_unit'"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isLithostratigraphicUnit) or $isLithostratigraphicUnit and count(gsmlgu:composition) > 0 and count(gsmlgu:composition) = count(gsmlgu:composition/gsmlgu:CompositionPart/gsmlgu:material/gsmlem:RockMaterial/gsmlem:lithology)">
				LithostratigraphicUnit geologic unit (<value-of select="@gml:id" />) must have at least one valid gsml:composition property defined. 
			</assert>
	<!-- Probably should make lithostratigraphic unit have an age as well. -->	
			<let name="isLithodemicUnit" value="$geologicUnitType = 'http://resource.geosciml.org/classifier/cgi/geologicunittype/lithodemic_unit'"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isLithodemicUnit) or $isLithodemicUnit and count(gsmlgu:composition) > 0 and count(gsmlgu:composition) = count(gsmlgu:composition/gsmlgu:CompositionPart/gsmlgu:material/gsmlem:RockMaterial/gsmlem:lithology)">
				LithodemicUnit geologic unit (<value-of select="@gml:id" />) must have at least one valid gsml:composition property defined.
			</assert>
<!-- Add test for lithodemic unit that bedding property is nil inapplicable.  -->
			<!-- TODO how can I use schema-element function to successfully check substitutable elements; need to import Schema somehow. 
			<let name="isDeformationUnit" value="$geologicUnitType = 'http://resource.geosciml.org/classifier/cgi/geologicunittype/deformation_unit'"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isDeformationUnit) or $isDeformationUnit and count(gsml:relatedFeature/gsmlst:DefiningStructure/gsml:relatedFeature/schema-element(gsmlst:GeologicStructure) > 0 ">
				DeformationUnit geologic unit (<value-of select="@gml:id" />) must have at least one Geologic Structure
			</assert>
-->
		</rule>
	</pattern>
	
	<pattern id="Borehole.constraints">
		<title>Borehole Constraints</title>
		<p>Validate model constraints on Borehole not enforced by XML Schema</p>
		<rule context="//gsml:Borehole">
			<assert 
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Borehole_intervals_orientation"
				test="true()">
				Placeholder test not yet written.
			</assert>
			<assert 
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Borehole_intervals_order"
				test="true()">
				Placeholder test not yet written.
			</assert>
			<assert 
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Borehole_depth"
				test="true()">
				Placeholder test not yet written.
			</assert>
			<assert 
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Borehole_length"
				test="true()">
				Placeholder test not yet written.
			</assert>
		</rule>
	</pattern>

	<pattern id="property.constraints">
		<title>Property Constraints</title>
		<p>General constraints on feature properties not enforceable by XML Schema. (Expecting @xlink:href's will just be on property
		elements although these tests will look at any on any elements.)</p>
		
		<rule context="//*[@xlink:href]">
			<assert 
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Acceptable_links"
				test="fn:matches(@xlink:href, $httpUriRegExp, 'i' ) or starts-with(@xlink:href, '#')">
				Encountered <value-of select="@xlink:href"/> XLink that is neither an internal XPointer or an HTTP-URI.
			</assert>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#xlink_href_requires_xlink_title"
				test="@xlink:title">
				The property <value-of select="name(.)" /> does not have an xlink:title value.
			</assert>
			<!-- This is actually included in the GML XML Schema as an embedded Schematron rule so if validator uses them it may not be necessary.  -->
			<report test="node()">
				The property <value-of select="name(.)" /> has inline content as well as a by reference link.
			</report>
		</rule>

		<rule context="//*[@xlink:title]">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#xlink_title_requires_xlink_href"
				test="@xlink:href">
				The property <value-of select="name(.)" /> does not have an xlink:href value.
			</assert>
		</rule>
	</pattern>

	<pattern id="spatial.data.constraints">
		<title>Spatial Data Constraints</title>
		<p>Additional constraints on spatial elements not enforced by GML Schema. Are these tighter constraints GeoSciML community wants for some reason?</p>
<!-- Forget this -->
		<rule context="//gml:GeometricComplex | //gml:MultiCurve | //gml:MultiGeometry | //gml:MultiLineString | //gml:MultiPoint | //gml:MultiPolygon | //gml:MultiSolid | //gml:MultiSurface | //gml:Point | //gml:CompositeCurve | //gml:Curve | //gml:LineString | //gml:OrientableCurve | //gml:CompositeSolid | //gml:Solid | //gml:CompositeSurface | //gml:OrientableSurface | //gml:Polygon | //gml:Surface | //gml:PolyhedralSurface | //gml:TriangulatedSurface | //gml:Tin | //gml:Grid | //gml:RectifiedGrid | //gml:LinearRing | //gml:Ring">
			<report
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Missing_attributes_on_spatial_types"
				test="not(@srsName) or not(@srsDimension)">
				Spatial object <value-of select="name(.)" /> must have srsName and srsDimension attributes.
			</report>
		</rule>	
<!-- Forget this -->
		<rule context="//sa:shape">
			 <report
			 	see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#sa_shape_gml_LineString_encoding"
				test="not(gml:LineString/gml:posList)">
				gml:LineString element of <value-of select="name(.)" /> property must be encoded as gml:posList.
			</report>			
		</rule>
	</pattern>
	<!-- For 1GG must support epsg:4326 -->

<!-- Forget this rule as it is mainly dependent on software behaviour and it isn't really for us to specify, more for OGC to persuade. -->
	<pattern id="spatial.crs.uri">
		<title>Spatial CRS URIs</title>
		<p>Restrict the values that can be used to identify coordinate reference systems in spatial elements.</p>
		<rule context="//@srsName">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#spatial.crs.uri"
				test="starts-with(., 'http://www.opengis.net/def/crs/')">
				<value-of select="."/> should contain a URI from the OGC set of coordinate reference system identifiers.
			</assert>
		</rule>
	</pattern>

<!-- Don't think @codeSpace is used on properties anymore so delete these rules after double checking. -->
	<pattern id="uri.codespace.element">
		<rule context="//*[@codeSpace = 'http://www.ietf.org/rfc/rfc2141']">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Pseudo-xlinks"
				test="fn:matches( text(), $urnRegExp, 'i')">
				<value-of select="name(.)" /> (<value-of select="./text()" />) must contain a valid URN.
			</assert>
		</rule>
		<rule context="//*[@codeSpace = 'http://www.ietf.org/rfc/rfc2616']">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Pseudo-xlinks"
				test="fn:matches( text(), $httpUriRegExp, 'i')">
				<value-of select="name(.)" /> (<value-of select="./text()" />) must contain a valid HTTP-URI.
			</assert>
		</rule>
	</pattern>

	<pattern id="internal.referential.integrity">
		<title>Internal referential integrity</title>
		<p>Validate internal referential integrity.</p>
		
		<rule context="//*[@xlink:href]">
			<let name="isXPointer" value="starts-with(@xlink:href, '#')"/>
			
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Internal_XPointers"
				test="not($isXPointer) or ($isXPointer and //*[@gml:id = substring(current()/@xlink:href, 2)])">
				Internal XLink <value-of select="@xlink:href" /> cannot be resolved within the document.
			</assert>
		</rule>
	</pattern>
	
	<pattern id="external.referential.integrity">
		<title>External referential integrity</title>
		<p>Validate external referential integrity.</p>
		
		<rule context="//*[fn:matches( @xlink:href, $httpUriRegExp, 'i')]">
			<let name="isResolvable" value="document(@xlink:href)"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#External_links"
				test="$isResolvable">
				External link (<value-of select="@xlink:href" />) must be resolvable.
			</assert>
		</rule>
		<!-- Resolving external links might work better using teamengine ctl functions. -->
		<rule context="//*[@codeSpace = 'http://www.ietf.org/rfc/rfc2616' and fn:matches( text(), $httpUriRegExp, 'i')]">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#External_pseudo-xlinks"
				test="document(text())">
				External link (<value-of select="./text()" />) must be resolvable.
			</assert>
		</rule>
	</pattern>
	
	<!-- General pattern for testing simple by reference properties against list of URIs in vocabulary -->
	<pattern abstract="true" id="by-ref.property.vocabulary">
		<title>Abstract pattern for testing that by reference property href's come from a given vocabulary.</title>
		<p>Test that the specified property elements xlink:href attributes come from the specified vocabulary.</p>
		<rule context="$property">
			<assert 
				test="$vocabulary//uri/@xlink:href[ . = current()/@xlink:href]">
				Property value <value-of select="@xlink:href"/> should come from the list <value-of select="$vocabulary//uri/@xlink:href"/>
			</assert>
		</rule>
	</pattern>
	
	<!-- General pattern testing properties specified by inline swe:Category against list of URIs in vocabulary-->
	<pattern abstract="true" id="swe_Category">
		<rule context="$category_path">
			<assert test="$vocabulary//uri/@xlink:href[ . = current()/swe:identifier]">
				The category identifier <value-of select="swe:identifier"/> should come from the list <value-of select="$vocabulary//uri/@xlink:href"/>
			</assert>
			<assert test="swe:label">label should not be empty</assert>
			<assert 
				test="swe:codeSpace/@xlink:href = $vocab_uri">
				The codeSpace <value-of select="swe:codeSpace/@xlink:href"/> should be "<value-of select="$vocab_uri"/>".</assert>
		</rule>
	</pattern>
	
	<pattern id="isccgi.age.vocabulary.older" is-a="by-ref.property.vocabulary">
		<title>ISC-CGI Age Vocabulary</title>
		<p>Check that age properties use values from the combined ICS-CGI standard age vocabulary with CGI Fenno-Scandian additions to the ICS ages.</p>
		<param name="property" value="//gsmlga:GeologicEvent/gsmlga:olderNamedAge[not(@xsi:nil = true())]"/>
		<param name="vocabulary" value="document('vocabs_isccgi/CGI2011TimeScale.xml')"/>
	</pattern>
	
	<pattern id="isccgi.age.vocabulary.younger" is-a="by-ref.property.vocabulary">
		<title>ISC-CGI Age Vocabulary</title>
		<p>Check that age properties use values from the combined ICS-CGI standard age vocabulary with CGI Fenno-Scandian additions to the ICS ages.</p>
		<param name="property" value="//gsmlga:GeologicEvent/gsmlga:youngerNamedAge[not(@xsi:nil = true())]"/>
		<param name="vocabulary" value="document('vocabs_isccgi/CGI2011TimeScale.xml')"/>
	</pattern>
	
	<pattern id="cgi.lithology.vocabulary" is-a="by-ref.property.vocabulary">
		<title>CGI Lithology Vocabulary</title>
		<p>Check that lithology properties use values from the CGI simple lithology vocabulary.</p>
		<param name="property" value="//gsmlem:RockMaterial/gsmlem:lithology"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/SimpleLithology201202.xml')"/>
<!--		<let name="cgisimplelithology" value="document('http://resource.geosciml.org/classifierscheme/cgi/201202/simplelithology.rdf')"/>-->
<!--			<assert 
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#cgi.lithology.vocabulary"
				test="$cgisimplelithology//rdf:Description/@rdf:about[../skos:inScheme/@rdf:resource = 'http://resource.geosciml.org/classifierscheme/cgi/201202/simplelithology' and . = current()/gsmlem:lithology/@xlink:href]">
				Lithology <value-of select="gsmlem:lithology/@xlink:href"/> should come from CGI vocabulary  <value-of select="$cgisimplelithology//rdf:Description/@rdf:about[../skos:inScheme/@rdf:resource = 'http://resource.geosciml.org/classifierscheme/cgi/201202/simplelithology']"/>
			</assert>
-->
	</pattern>
	
	<pattern id="cgi.geologicunittype.vocabulary" is-a="by-ref.property.vocabulary">
		<title>CGI Geologic Unit Type Vocabulary</title>
		<p>Check that the geologic unit type of a geologic unit comes from the CGI dictionary. This needs to be true for any GeoSciML instance, not just those conforming to a CGI profile.</p>
		<param name="property" value="//gsmlgu:GeologicUnit/gsmlgu:geologicUnitType"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/GeologicUnitType201202.xml')"/>
	</pattern>
	
	<pattern id="cgi.stratigraphicrank.vocabulary" is-a="by-ref.property.vocabulary">
		<title>CGI Stratigraphic Rank Vocabulary</title>
		<p>Check that the rank of a geologic unit comes from the CGI dictionary.</p>
		<param name="property" value="//gsmlgu:GeologicUnit/gsmlgu:rank"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/StratigraphicRank201202.xml')"/>
	</pattern>
	
	<pattern id="cgi.eventprocess.vocabulary" is-a="by-ref.property.vocabulary">
		<title>CGI Event Process Vocabulary</title>
		<p>Check that the event process of a geologic event comes from the CGI dictionary.</p>
		<param name="property" value="//gsmlga:GeologicEvent/gsmlga:eventProcess"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/EventProcess201202.xml')"/>
	</pattern>
	
	<pattern id="cgi.geologicunitpartrole.vocabulary" is-a="by-ref.property.vocabulary">
		<title>CGI Geologic Unit Part Role Vocabulary</title>
		<p>Check that the role of a composition part comes from the CGI dictionary.</p>
		<param name="property" value="//gsmlgu:CompositionPart/gsmlgu:role"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/GeologicUnitPartRole201202.xml')"/>
	</pattern>
	
	<pattern id="cgi.valuequalifier.vocabulary" is-a="swe_Category">
		<title>CGI Value Qualifier Dictionary</title>
		<p>Check that the CGI Value Qualifier dictionary is used in swe:extension elements.</p>
		<param name="category_path" value="//swe:Category/swe:extension/swe:Category"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/ValueQualifier201202.xml')"/>
		<param name="vocab_uri" value="'http://resource.geosciml.org/classifierscheme/cgi/201202/valuequalifier'"/>
	</pattern>
	
	<pattern id="ucum.vocabulary">
		<title>UCUM Vocabulary</title>
		<p>Check units of measure use the Unified Codes for Units of Measure units and symbols.</p>
		<!-- Just check OGC UCUM uri prefix at first . -->
		<!-- This rule is no longer correct as use swe:uom element not gsml:principalValue. Might be able to make a new one? -->
		<!--		<let name="docUcumUom" value="document('http://aurora.regenstrief.org/~ucum/ucum-essence.xml')" />
			<rule context="//gsml:principalValue">
			<let name="uom" value="js:urlDecode(substring(@uom, 23))" />
			<let name="prefix1" value="$docUcumUom/root/prefix[@Code = substring($uom, 1, 1)]/@Code" />
			<let name="prefix2" value="$docUcumUom/root/prefix[@Code = substring($uom, 1, 2)]/@Code" />
			<let name="uomMatch" value="$docUcumUom/root/*[local-name() = 'base-unit' or local-name() = 'unit']/@Code = $uom" />
			<let name="uomMatch1" value="$docUcumUom/root[boolean($prefix1)]/*[local-name() = 'base-unit' or local-name() = 'unit']/@Code = substring($uom, 2)" />
			<let name="uomMatch2" value="$docUcumUom/root[boolean($prefix2)]/*[local-name() = 'base-unit' or local-name() = 'unit']/@Code = substring($uom, 3)" />
			<assert test="starts-with(@uom, 'urn:ogc:def:nil:OGC::') or starts-with(@uom, 'http://www.opengis.net/def/nil/OGC/0/') or $uomMatch or $uomMatch1 or $uomMatch2">
			'<value-of select="@uom" />' is not conformant to the Unified Code for Units of Measure.
			</assert>
			</rule>
		-->
	</pattern>
	
	<!-- Make some borehole property vocab tests as email from Guillaume Duclaux to auscope list 2011-09-23 07:17 -->
	
	<!-- Vocabs by Feature property -->
	<!-- gsml:MappedFeature -->
	<!-- gsml:MappedFeature/gml:identifier -->
	<!-- Will a generic identifier rule do here? In what cases do we make existence compulsory? -->
	<!-- gsml:MappedFeature/gsml:observationMethod -->
	<!-- Only dealing with inline content; external content is for different phase, internal links could be checked later. -->
	<pattern id="cgi.MappedFeature_observationMethod" is-a="swe_Category">
		<param name="category_path" value="//gsml:MappedFeature/gsml:observationMethod/swe:Category"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/MappedFeatureObservationMethod201202.xml')"/>
		<param name="vocab_uri" value="'http://resource.geosciml.org/classifierscheme/cgi/201202/mappedfeatureobservationmethod'"/>
	</pattern>
	<!-- gsml:MappedFeature/gsml:positionalAccuracy -->
	<!-- uom should be a length unit, should we fix to m for cgi.profile or SI.profile? -->
	
	<!-- gsml:MappedFeature/gsml:samplingFrame -->
	<!-- Don't know what rules we could have for this -->
	
	<!-- gsmlgu:GeologicUnit -->
	<!-- gsmlgu:GeologicUnit/gml:identifier -->
	<!-- Will a generic identifier rule do here? In what cases do we make existence compulsory? -->
	<!-- gsmlgu:GeologicUnit/gsml:observationMethod -->
	<!-- Only dealing with inline content; external content is for different phase, internal links could be checked later. -->
	<pattern id="cgi.gsmlgu_GeologicUnit_observationMethod" is-a="swe_Category">
		<param name="category_path" value="//gsmlgu:GeologicUnit/gsml:observationMethod/swe:Category"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/FeatureObservationMethod201202.xml')"/>
		<param name="vocab_uri" value="'http://resource.geosciml.org/classifierscheme/cgi/201202/featureobservationmethod'"/>
	</pattern>
	
	<pattern id="cgi.gsmlgu_GeologicUnit_bodyMorphology" is-a="swe_Category">
		<param name="category_path" value="//gsmlgu:GeologicUnit/gsmlgu:bodyMorphology/swe:Category"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/GeologicUnitMorphology201202.xml')"/>
		<param name="vocab_uri" value="'http://resource.geosciml.org/classifierscheme/cgi/201202/geologicunitmorphology'"/>
	</pattern>
	
	<pattern id="cgi.gsmlga_GeologicEvent_eventEnvironment" is-a="swe_Category">
		<param name="category_path" value="//gsmlga:GeologicEvent/gsmlga:eventEnvironment/swe:Category"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/EventEnvironment201202.xml')"/>
		<param name="vocab_uri" value="'http://resource.geosciml.org/classifierscheme/cgi/201202/eventenvironment'"/>
	</pattern>
	
	<pattern id="cgi.gsmlem_RockMaterial_compositionCategory" is-a="swe_Category">
		<param name="category_path" value="//gsmlem:RockMaterial/gsmlem:compositionCategory/swe:Category"/>
		<param name="vocabulary" value="document('vocabs_cgi_201202/CompositionCategory201202.xml')"/>
		<param name="vocab_uri" value="'http://resource.geosciml.org/classifierscheme/cgi/201202/compositioncategory'"/>
	</pattern>
	
	<pattern id="profiling">
		<title>Profiling</title>
		<p>Validate document conformity to community profile.</p>

		<rule context="//gsml:MappedFeature/gsml:specification">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#MappedFeature_specification"
				test="@xsi:nil = 'true' or starts-with(@xlink:href, '#') or (not(@xlink:href) and count(child::*) = 1)">
				gsml:MappedFeature/gsml:specification property must be encoded inline.
			</assert>
		</rule>

		<rule context="//gsml:GeologicFeature/gsml:occurrence">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#GeologicFeature_occurrence"
				test="@xlink:href and count(child::*) = 0">
				gsml:GeologicFeature/gsml:occurrence property must be encoded by reference.
			</assert>
		</rule>
	</pattern>

	<pattern id="wfs2.collection">
		<title>WFS 2 Collection</title>
		<p>Test that instance is a WFS2 feature collection and any relevant further tests given that.</p>
		<rule context="/">
			<assert test="wfs:FeatureCollection">
				Root element should be a wfs:FeatureCollection
			</assert>
		</rule>
		<!-- See if can add test to check contents of schemaLocation -->
		<rule context="/wfs:FeatureCollection">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Feature_collection_schema_location"
				test="@xsi:schemaLocation">
				xsi:schemaLocation attribute must always be provided for wfs:FeatureCollection.
			</assert>
		</rule>
		
		<rule context="/wfs:FeatureCollection/wfs:member/*">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Identifiers_on_persistent_features"
				test="count(gml:identifier[@codeSpace = 'http://www.ietf.org/rfc/rfc2616']) = 1">
				Persistent feature <value-of select="name(.)" /> (<value-of select="@gml:id" />) must have a gml:identifier with codeSpace http://www.ietf.org/rfc/rfc2616.
			</assert>
		</rule>
		
	</pattern>
	
</schema>
