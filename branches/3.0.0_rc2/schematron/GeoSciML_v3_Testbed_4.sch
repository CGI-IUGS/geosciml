<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:interop="urn:csiro:schematron:lib" queryBinding="xslt" defaultPhase="structure">
	<title>GeoSciML v3 Profile conformance validation.</title>
	<p>This schema checks GeoSciML v3 Profile conformance by stages.</p>
	<interop:script language="JavaScript" implements-prefix="js">
		<![CDATA[
		function urlDecode(uri)
		{
			return decodeURI(uri);
		}

		function matches(value, re)
		{
			return value == null ? false : Boolean(value.match(re));
		}

		function isValidUrn(urn)
		{
			return /^urn:([A-Z0-9]([A-Z0-9\-]){1,31}):([A-Z0-9\.:=_\-]|(%[A-F0-9]{2}))+$/i.test(urn);
		}

		function isValidHttpUri(uri)
		{
			return /^https?:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&amp;=%\$#_]*)?$/i.test(uri);
		}

		function isResolvable(url)
		{
			try
			{
				var xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				xmlHttp.open("GET", url, false);
				xmlHttp.send(null);
				return xmlHttp.readyState == 4 && xmlHttp.status == 200;
			}
			catch (e)
			{
				return false;
			}
		}
		]]>
	</interop:script>
	<ns prefix="js" uri="urn:x-csiro:interoperability:js" />
	<ns prefix="wfs" uri="http://www.opengis.net/wfs" />
	<ns prefix="xsi" uri="http://www.w3.org/2001/XMLSchema-instance" />
	<ns prefix="xlink" uri="http://www.w3.org/1999/xlink" />
	<ns prefix="gml" uri="http://www.opengis.net/gml" />
	<ns prefix="gsml" uri="urn:cgi:xmlns:CGI:GeoSciML:2.0" />
	<ns prefix="sa" uri="http://www.opengis.net/sampling/1.0" />

	<phase id="structure">
		<active pattern="xml.grammar"/>
		<active pattern="data.consistency"/>
		<active pattern="spatial.data.integrity"/>
	</phase>

	<phase id="referential.integrity">
		<active pattern="internal.referential.integrity"/>
	</phase>

	<phase id="full.referential.integrity">
		<active pattern="internal.referential.integrity"/>
		<active pattern="external.referential.integrity"/>
		<active pattern="vocabulary.bindings"/>
	</phase>

	<phase id="profile">
		<active pattern="xml.grammar"/>
		<active pattern="data.consistency"/>
		<active pattern="profiling"/>
	</phase>


	<pattern id="xml.grammar">
		<title>XML Grammar</title>
		<p>Validate XML Grammar of the document.</p>

		<rule context="/wfs:FeatureCollection">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Feature_collection_schema_location"
				test="@xsi:schemaLocation">
				xsi:schemaLocation attribute must always be provided for wfs:FeatureCollection.
			</assert>

			<let name="actualNumberOfFeatures" value="count(//child::*[starts-with(local-name(), 'featureMember')]/child::*)" />
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Number_of_features"
				test="$actualNumberOfFeatures = @numberOfFeatures">
				Value of numberOfFeatures attribute (<value-of select="@numberOfFeatures" />) must be consistent with an actual number of features returned (<value-of select="$actualNumberOfFeatures" />).
			</assert>
		</rule>

		<rule context="//gsml:GeologicUnit">
			<let name="geologicUnitType" value="gsml:geologicUnitType/@xlink:href"/>

			<let name="isChronostratigraphicUnit" value="contains($geologicUnitType, 'chronostratigraphic_unit')" />
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isChronostratigraphicUnit) or $isChronostratigraphicUnit and count(gsml:geologicHistory) > 0 and count(gsml:geologicHistory) = count(gsml:geologicHistory/gsml:GeologicEvent/gsml:eventAge/gsml:olderNamedAge) and count(gsml:geologicHistory) = count(gsml:geologicHistory/gsml:GeologicEvent/gsml:youngerNamedAge)">
				ChronostratigraphicUnit geologic unit (<value-of select="@gml:id"/>) must have one valid gsml:geologicHistory property defined.
			</assert>
	
			<report
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="$isChronostratigraphicUnit and count(gsml:geologicHistory) > 1">
				ChronostratigraphicUnit geologic unit (<value-of select="@gml:id"/>) has more than one gsml:geologicHistory property defined.
			</report>
	
			<let name="isLithologicUnit" value="contains($geologicUnitType, 'lithologic_unit')"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isLithologicUnit) or $isLithologicUnit and count(gsml:composition) > 0 and count(gsml:composition) = count(gsml:composition/gsml:CompositionPart/gsml:material/gsml:RockMaterial/gsml:lithology)">
				LithologicUnit geologic unit (<value-of select="@gml:id" />) must have at least one valid gsml:composition property defined. 
			</assert>
	
			<let name="isLithostratigraphicUnit" value="contains($geologicUnitType, 'litholostratigraphic_unit')"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isLithostratigraphicUnit) or $isLithostratigraphicUnit and count(gsml:composition) > 0 and count(gsml:composition) = count(gsml:composition/gsml:CompositionPart/gsml:material/gsml:RockMaterial/gsml:lithology)">
				LithostratigraphicUnit geologic unit (<value-of select="@gml:id" />) must have at least one valid gsml:composition property defined. 
			</assert>
			
			<let name="isLithodemicUnit" value="contains($geologicUnitType, 'lithodemic_unit')"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isLithodemicUnit) or $isLithodemicUnit and count(gsml:composition) > 0 and count(gsml:composition) = count(gsml:composition/gsml:CompositionPart/gsml:material/gsml:RockMaterial/gsml:lithology)">
				LithodemicUnit geologic unit (<value-of select="@gml:id" />) must have at least one valid gsml:composition property defined.
			</assert>

			<let name="isDeformationUnit" value="contains($geologicUnitType, 'deformation_unit')"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Geologic_unit_type"
				test="not($isDeformationUnit) or $isDeformationUnit and count(gsml:definingStructure) > 0 and gsml:definingStructure/@xlink:href">
				DeformationUnit geologic unit (<value-of select="@gml:id" />) must have at least one gsml:definingStructure property defined with a valid xlink:href value.
			</assert>
		</rule>
	</pattern>

	<pattern id="data.consistency">
		<title>Data consistency</title>
		<p>Validate data for consistency.</p>

		<rule context="/wfs:FeatureCollection/child::*[starts-with(local-name(), 'featureMember')]/child::*">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Identifiers_on_persistent_features"
				test="count(gml:identifier[@codeSpace = 'http://www.ietf.org/rfc/rfc2616']) = 1">
				Persistent feature <value-of select="name(.)" /> (<value-of select="@gml:id" />) must have a gml:identifier with a specific codeSpace attribute.
			</assert>
		</rule>

		<rule context="/wfs:FeatureCollection/child::*[starts-with(local-name(), 'featureMember')]/child::*/gml:name">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Data_provider_specific_GML names"
				test="js:isValidHttpUri(string(@codeSpace))">
				Data provider specific gml:name elements for <value-of select="name(..)" /> (<value-of select="../@gml:id" />) must use HTTP-URIs in codeSpace attributes. 
			</assert>
		</rule>

		<rule context="//*[@xlink:href]">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#xlink_href_requires_xlink_title"
				test="@xlink:title">
				The property <value-of select="name(.)" /> does not have an xlink:title value.
			</assert>
		</rule>

		<rule context="//*[@xlink:title]">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#xlink_title_requires_xlink_href"
				test="@xlink:href">
				The property <value-of select="name(.)" /> does not have an xlink:href value.
			</assert>
		</rule>
	</pattern>

	<pattern id="spatial.data.integrity">
		<title>Spatial data integrity</title>
		<p>Validate integrity of spatial data.</p>

		<rule context="//gml:GeometricComplex | //gml:MultiCurve | //gml:MultiGeometry | //gml:MultiLineString | //gml:MultiPoint | //gml:MultiPolygon | //gml:MultiSolid | //gml:MultiSurface | //gml:Point | //gml:CompositeCurve | //gml:Curve | //gml:LineString | //gml:OrientableCurve | //gml:CompositeSolid | //gml:Solid | //gml:CompositeSurface | //gml:OrientableSurface | //gml:Polygon | //gml:Surface | //gml:PolyhedralSurface | //gml:TriangulatedSurface | //gml:Tin | //gml:Grid | //gml:RectifiedGrid | //gml:LinearRing | //gml:Ring">
			<report
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Missing_attributes_on_spatial_types"
				test="not(@srsName) or not(@srsDimension)">
				Spatial object <value-of select="name(.)" /> must have srsName and srsDimension attributes.
			</report>
		</rule>	

		<rule context="//sa:shape">
			 <report
			 	see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#sa_shape_gml_LineString_encoding"
				test="not(gml:LineString/gml:posList)">
				gml:LineString element of <value-of select="name(.)" /> property must be encoded as gml:posList.
			</report>			
		</rule>
	</pattern>

	<pattern id="internal.referential.integrity">
		<title>Internal referential integrity</title>
		<p>Validate internal referential integrity.</p>

		<rule context="//*[@xlink:href]">
			<let name="isValidHttpUri" value="js:isValidHttpUri(string(@xlink:href))"/>
			<let name="isXPointer" value="starts-with(@xlink:href, '#')"/>

			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Acceptable_links"
				test="$isValidHttpUri or $isXPointer">
				Encountered <value-of select="@xlink:href" /> XLink that is neither an internal XPointer or an HTTP-URI.
			</assert>

			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Internal_XPointers"
				test="not($isXPointer) or ($isXPointer and //*[@gml:id = substring(current()/@xlink:href, 2)])">
				Internal XLink <value-of select="@xlink:href" /> cannot be resolved within the document.
			</assert>

			<let name="isThisSamplingFrameProperty" value="local-name(.) = 'samplingFrame' and namespace-uri(.) = 'urn:cgi:xmlns:CGI:GeoSciML:3.0'"/>
			<let name="isThisSamplingFramePropertyOfBorehole" value="$isThisSamplingFrameProperty and local-name(..) = 'Borehole' and namespace-uri(..) = 'urn:cgi:xmlns:CGI:GeoSciML:2.0'"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#gsml_samplingFrame_internal links_in_Borehole"
				test="not($isThisSamplingFramePropertyOfBorehole) or ($isThisSamplingFramePropertyOfBorehole and $isXPointer and //sa:shape[@gml:id = substring(current()/@xlink:href, 2)])">
				gsml:Borehole/gsml:samplingFrame/@xlink:href (<value-of select="@xlink:href" />) must resolve to the sa:shape object.
			</assert>
		</rule>

		<rule context="//*[@codeSpace = 'http://www.ietf.org/rfc/rfc2141']">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Pseudo-xlinks"
				test="js:isValidUrn(string(./text()))">
				<value-of select="name(.)" /> (<value-of select="./text()" />) must contain a valid URN.
			</assert>
		</rule>
		<rule context="//*[@codeSpace = 'http://www.ietf.org/rfc/rfc2616']">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Pseudo-xlinks"
				test="js:isValidHttpUri(string(./text()))">
				<value-of select="name(.)" /> (<value-of select="./text()" />) must contain a valid HTTP-URI.
			</assert>
		</rule>
	</pattern>

	<pattern id="external.referential.integrity">
		<title>External referential integrity</title>
		<p>Validate external referential integrity.</p>

		<rule context="//gsml:Borehole/gsml:samplingFrame[js:isValidHttpUri(string(@xlink:href)) and js:isResolvable(string(@xlink:href))]">
			<let name="target" value="document(@xlink:href)"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#gsml_samplingFrame_external_links_in_Borehole"
				test="local-name($target/*[1]) = 'shape' and namespace-uri($target/*[1]) = 'http://www.opengis.net/sampling/1.0'">
				gsml:Borehole/gsml:samplingFrame/@xlink:href (<value-of select="@xlink:href" />) must resolve to the sa:shape object.
			</assert>
		</rule>

		<rule context="//*[js:isValidHttpUri(string(@xlink:href))]">
			<let name="isResolvable" value="js:isResolvable(string(@xlink:href))"/>
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#External_links"
				test="$isResolvable">
				External link (<value-of select="@xlink:href" />) must be resolvable.
			</assert>
		</rule>

		<rule context="//*[@codeSpace = 'http://www.ietf.org/rfc/rfc2616' and js:isValidHttpUri(string(./text()))]">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#External_pseudo-xlinks"
				test="js:isResolvable(string(./text()))">
				External link (<value-of select="./text()" />) must be resolvable.
			</assert>
		</rule>
	</pattern>

	<pattern id="vocabulary.bindings">
		<title>Vocabulary bindings</title>
		<p>Validate common vocabulary terms.</p>

		<let name="docUcumUom" value="document('http://aurora.regenstrief.org/~ucum/ucum-essence.xml')" />
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
	</pattern>

	<pattern id="profiling">
		<title>Profiling</title>
		<p>Validate document conformity to community profile.</p>

		<rule context="//gsml:MappedFeature/gsml:specification">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#MappedFeature_specification"
				test="starts-with(@xlink:href, 'urn:ogc:def:nil:OGC::') or starts-with(@xlink:href, 'http://www.opengis.net/def/nil/OGC/0/') or starts-with(@xlink:href, '#') or (not(@xlink:href) and count(child::*) = 1)">
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

		<rule context="//gsml:GeologicFeature/gsml:part | //gsml:GeologicFeature/gsml:definingStructure | //gsml:GeologicFeatureRelation/gsml:source | //gsml:GeologicFeatureRelation/gsml:target">
			<assert
				see="https://www.seegrid.csiro.au/wiki/CGIModel/GeoSciML3SchematronRules#Related_GeologicFeatures"
				test="@xlink:href and count(child::*) = 0">
				Related GeologicFeature <value-of select="name(..)" />/<value-of select="name(.)" /> must be encoded by reference.
			</assert>
		</rule>
	</pattern>
</schema>
