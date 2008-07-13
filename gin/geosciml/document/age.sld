<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns:gml="http://www.opengis.net/gml" xmlns:gsml="http://www.cgi-iugs.org/xml/GeoSciML/2" xmlns:ogc="http://www.opengis.net/ogc" xmlns="http://www.opengis.net/sld" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0.0">
	<UserLayer>
		<Name>GeologyByAge</Name>
		<LayerFeatureConstraints>
			<FeatureTypeConstraint>
				<FeatureTypeName>gsml:MappedFeature</FeatureTypeName>
			</FeatureTypeConstraint>
		</LayerFeatureConstraints>
		<UserStyle>
			<Name>ColorByAge</Name>
			<Title>Color unit by Age</Title>
			<Abstract>The color has been picked from the IUGS International stratigraphic chart (International Commission on Stratigraphy).  This color scheme has been chosen to demonstrate rendering of maps from various sources in the context of the IUGS/CGI GeoSciML Testbed 2.  See https://www.seegrid.csiro.au/twiki/bin/view/CGIModel/TestBed2 for TestBed informations
				This SLD assumes that MappedFeature is the context node</Abstract>
			<IsDefault>1</IsDefault>
			<FeatureTypeStyle>
				<Rule>
					<Name>Holocene</Name>
					<Title>Holocene(0 - 0.0118 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Holocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFBF0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Upper Pleistocene</Name>
					<Title>Upper Pleistocene(0.0118 - 0.126 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:UpperPleistocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFF7B0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Middle Pleistocene</Name>
					<Title>Middle Pleistocene(0.126 - 0.781 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:MiddlePleistocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFF7B0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lower Pleistocene</Name>
					<Title>Lower Pleistocene(0.781 - 1.806 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:LowerPleistocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFF7B0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Pleistocene</Name>
					<Title>Pleistocene(0.0118 - 1.806 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Pleistocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFF7B0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Gelasian</Name>
					<Title>Gelasian(1.806 - 2.588 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Gelasian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFFF9</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Piacenzian</Name>
					<Title>Piacenzian(2.588 - 3.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Piacenzian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFFF9</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Zanclean</Name>
					<Title>Zanclean(3.6 - 5.332 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Zanclean</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFFF9</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Pliocene</Name>
					<Title>Pliocene(1.806 - 2.332 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Pliocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFFF9</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Quaternary</Name>
					<Title>Quaternary(0 - 2.588 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Quaternary</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FEF692</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Messinian</Name>
					<Title>Messinian(2.332 - 7.256 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Messinian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFF00</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Tortonian</Name>
					<Title>Tortonian(7.256 - 11.608 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Tortonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFF00</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Serravalian</Name>
					<Title>Serravalian(11.608 - 13.65 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Serravalian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFF00</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Langhian</Name>
					<Title>Langhian(13.65 - 15.97 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Langhian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFF00</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Burdigalian</Name>
					<Title>Burdigalian(15.97 - 20.43 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Burdigalian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFF00</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Aquitanian</Name>
					<Title>Aquitanian(20.43 - 23.03 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Aquitanian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFF00</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Miocene</Name>
					<Title>Miocene(5.332 - 23.03 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Miocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFFF00</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Neogene</Name>
					<Title>Neogene(0 - 23.03 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Neogene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FFE800</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Chattian</Name>
					<Title>Chattian(23.03 - 28.4 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Chattian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FEE090</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Rupelian</Name>
					<Title>Rupelian(28.4 - 33.9 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Rupelian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FEE090</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Oligocene</Name>
					<Title>Oligocene(23.03 - 33.9 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Oligocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FEE090</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Priabonian</Name>
					<Title>Priabonian(33.9 - 37.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Priabonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FED13B</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Bartonian</Name>
					<Title>Bartonian(37.2 - 40.4 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Bartonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FED13B</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lutetian</Name>
					<Title>Lutetian(40.4 - 48.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Lutetian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FED13B</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Ypresian</Name>
					<Title>Ypresian(48.6 - 55.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Ypresian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FED13B</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Eocene</Name>
					<Title>Eocene(48.6 - 55.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Eocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FED13B</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Thanetian</Name>
					<Title>Thanetian(55.8 - 58.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Thanetian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#EBC06D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Selandian</Name>
					<Title>Selandian(58.7 - 61.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Selandian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#EBC06D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Danian</Name>
					<Title>Danian(61.7 - 65.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Danian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#EBC06D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Paleocene</Name>
					<Title>Paleocene(55.8 - 65.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Paleocene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#EBC06D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Paleogene</Name>
					<Title>Paleogene(23.03 - 65.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Paleogene</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FD9A52</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Cenozoic</Name>
					<Title>Cenozoic(0 - 65.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Cenozoic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FAFD01</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Maastrichtian</Name>
					<Title>Maastrichtian(65.5 - 70.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Maastrichtian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F398</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Campanian</Name>
					<Title>Campanian(70.6 - 83.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Campanian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F398</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Santonian</Name>
					<Title>Santonian(83.5 - 85.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Santonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F398</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Coniacian</Name>
					<Title>Coniacian(85.8 - 89.3 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Coniacian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F398</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Turonian</Name>
					<Title>Turonian(89.3 - 93.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Turonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F398</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Cenomanian</Name>
					<Title>Cenomanian(93.5 - 99.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Cenomanian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F398</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Upper Cretaceous</Name>
					<Title>Upper Cretaceous(65.5 - 99.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:UpperCretaceous</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F398</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Albian</Name>
					<Title>Albian(99.6 - 112 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Albian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#41AA94</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Aptian</Name>
					<Title>Aptian(112 - 125 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Aptian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#41AA94</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Barremian</Name>
					<Title>Barremian(125 - 130 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Barremian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#41AA94</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Hauterivian</Name>
					<Title>Hauterivian(130 - 136.4 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Hauterivian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#41AA94</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Valanginian</Name>
					<Title>Valanginian(136.4 - 140.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Valanginian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#41AA94</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Berriasian</Name>
					<Title>Berriasian(140.2 - 145.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Berriasian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#41AA94</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lower Cretaceous</Name>
					<Title>Lower Cretaceous(99.6 - 145.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:LowerCretaceous</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#41AA94</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Cretaceous</Name>
					<Title>Cretaceous(65.5 - 145.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Cretaceous</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#C5E547</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Tithonian</Name>
					<Title>Tithonian(145.5 - 150.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Tithonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3E2E6</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Kimmeridgian</Name>
					<Title>Kimmeridgian(150.8 - 155.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Kimmeridgian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3E2E6</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Oxfordian</Name>
					<Title>Oxfordian(155.7 - 161.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Oxfordian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3E2E6</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Upper Jurassic</Name>
					<Title>Upper Jurassic(145.5 - 161.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:UpperJurassic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3E2E6</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Callovian</Name>
					<Title>Callovian(161.2 - 164.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Callovian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3D7E8</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Bathonian</Name>
					<Title>Bathonian(164.7 - 167.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Bathonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3D7E8</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Bajocian</Name>
					<Title>Bajocian(167.7 - 171.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Bajocian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3D7E8</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Aelenian</Name>
					<Title>Aelenian(171.6 - 175.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Aelenian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3D7E8</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Middle Jurassic</Name>
					<Title>Middle Jurassic(161.2 - 175.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:MiddleJurassic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3D7E8</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Toarcian</Name>
					<Title>Toarcian(175.6 - 183 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Toarcian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#00A0C6</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Pliensbachian</Name>
					<Title>Pliensbachian(183 - 189.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Pliensbachian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#00A0C6</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Sinemurian</Name>
					<Title>Sinemurian(189.6 - 186.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Sinemurian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#00A0C6</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Hettangian</Name>
					<Title>Hettangian(186.5 - 199.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Hettangian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#00A0C6</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lower Jurassic</Name>
					<Title>Lower Jurassic(175.6 - 199.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:LowerJurassic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#00A0C6</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Jurassic</Name>
					<Title>Jurassic(145.5 - 199.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Jurassic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F4E0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Rhaetian</Name>
					<Title>Rhaetian(199.6 - 203.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Rhaetian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E4C5E1</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Norian</Name>
					<Title>Norian(203.6 - 216.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Norian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E4C5E1</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Carnian</Name>
					<Title>Carnian(216.5 - 228 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Carnian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E4C5E1</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Upper Triassic</Name>
					<Title>Upper Triassic(199.6 - 228 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:UpperTriassic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E4C5E1</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Ladinian</Name>
					<Title>Ladinian(228 - 237 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Ladinian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B189C1</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Anisian</Name>
					<Title>Anisian(237 - 245 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Anisian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B189C1</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Middle Triassic</Name>
					<Title>Middle Triassic(228 - 245 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:MiddleTriassic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B189C1</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Olenekian</Name>
					<Title>Olenekian(245 - 249.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Olenekian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#983999</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Induan</Name>
					<Title>Induan(249.7 - 251 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Induan</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#983999</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lower Triassic</Name>
					<Title>Lower Triassic(245 - 251 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:LowerTriassic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#983999</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Triassic</Name>
					<Title>Triassic(199.6 - 251 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Triassic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#6B017D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Mesozoic</Name>
					<Title>Mesozoic(65.5 - 251 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Mesozoic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#67C5CB</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Changhsingian</Name>
					<Title>Changhsingian(251 - 253.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Changhsingian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FA9AA3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Wuchiapingian</Name>
					<Title>Wuchiapingian(253.8 - 260.4 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Wuchiapingian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FA9AA3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lopingian</Name>
					<Title>Lopingian(251 - 260.4 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Lopingian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FA9AA3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Capitanian</Name>
					<Title>Capitanian(260.4 - 265.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Capitanian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F04652</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Wordian</Name>
					<Title>Wordian(265.8 - 268 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Wordian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F04652</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Roadian</Name>
					<Title>Roadian(268 - 270.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Roadian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F04652</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Guadalupian</Name>
					<Title>Guadalupian(260.4 - 270.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Guadalupian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F04652</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Kungurian</Name>
					<Title>Kungurian(270.6 - 275.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Kungurian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#CA3C40</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Artinskian</Name>
					<Title>Artinskian(275.6 - 284.4 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Artinskian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#CA3C40</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Sakmarian</Name>
					<Title>Sakmarian(284.4 - 294.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Sakmarian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#CA3C40</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Asselian</Name>
					<Title>Asselian(294.6 - 299 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Asselian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#CA3C40</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Cisuralian</Name>
					<Title>Cisuralian(270.6 - 299 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Cisuralian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#CA3C40</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Permian</Name>
					<Title>Permian(251 - 299 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Permian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F04028</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Ghzelian</Name>
					<Title>Ghzelian(299 - 303.9 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Ghzelian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99C4B5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Kasimovian</Name>
					<Title>Kasimovian(303.9 - 306.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Kasimovian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99C4B5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Moscovian</Name>
					<Title>Moscovian(306.5 - 311.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Moscovian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99C4B5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Bashkirian</Name>
					<Title>Bashkirian(311.7 - 318.1 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Bashkirian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99C4B5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Upper Pennsylvanian</Name>
					<Title>Upper Pennsylvanian(299 - 306.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:UpperPennsylvanian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99C4B5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Middle Pennsylvanian</Name>
					<Title>Middle Pennsylvanian(306.5 - 311.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:MiddlePennsylvanian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99C4B5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lower Pennsylvanian</Name>
					<Title>Lower Pennsylvanian(311.7 - 318.1 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:LowerPennsylvanian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99C4B5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Pennsylvanian</Name>
					<Title>Pennsylvanian(299 - 318.1 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Pennsylvanian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99C4B5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Serpukhovian</Name>
					<Title>Serpukhovian(318.1 - 326.4 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Serpukhovian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#67946D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Visean</Name>
					<Title>Visean(326.4 - 345.3 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Visean</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#67946D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Tournaisian</Name>
					<Title>Tournaisian(345.3 - 359.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Tournaisian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#67946D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Upper Mississippian</Name>
					<Title>Upper Mississippian(318.1 - 326.4 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:UpperMississippian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#67946D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Middle Mississippian</Name>
					<Title>Middle Mississippian(326.4 - 345.3 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:MiddleMississippian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#67946D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lower Mississippian</Name>
					<Title>Lower Mississippian(345.3 - 359.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:LowerMississippian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#67946D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Mississippian</Name>
					<Title>Mississippian(318.1 - 359.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Mississippian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#67946D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Carboniferous</Name>
					<Title>Carboniferous(299 - 359.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Carboniferous</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#66ABA0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Famennian</Name>
					<Title>Famennian(359.2 - 374.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Famennian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#CCCEA9</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Frasnian</Name>
					<Title>Frasnian(374.5 - 385.3 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Frasnian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#CCCEA9</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Upper Devonian</Name>
					<Title>Upper Devonian(359.2 - 385.3 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:UpperDevonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#CCCEA9</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Givetian</Name>
					<Title>Givetian(385.3 - 391.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Givetian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99A56D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Eifelian</Name>
					<Title>Eifelian(391.8 - 397.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Eifelian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99A56D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Middle Devonian</Name>
					<Title>Middle Devonian(385.3 - 397.5 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:MiddleDevonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99A56D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Emsian</Name>
					<Title>Emsian(397.5 - 407 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Emsian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#999449</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Pragian</Name>
					<Title>Pragian(407 - 411.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Pragian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#999449</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lochkovian</Name>
					<Title>Lochkovian(411.2 - 416 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Lochkovian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#999449</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lower Devonian</Name>
					<Title>Lower Devonian(397.5 - 416 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:LowerDevonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#999449</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Devonian</Name>
					<Title>Devonian(359.2 - 416 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Devonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#CB8C37</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Pridoli</Name>
					<Title>Pridoli(416 - 418.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Pridoli</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F5FBF0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Ludfordian</Name>
					<Title>Ludfordian(418.7 - 421.3 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Ludfordian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F4E0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Gorstian</Name>
					<Title>Gorstian(421.3 - 422.9 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Gorstian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F4E0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Ludlow</Name>
					<Title>Ludlow(418.7 - 422.9 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Ludlow</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#E2F4E0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Homerian</Name>
					<Title>Homerian(422.9 - 426.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Homerian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#C5E8C3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Sheinwoodian</Name>
					<Title>Sheinwoodian(426.2 - 428.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Sheinwoodian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#C5E8C3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Wenlock</Name>
					<Title>Wenlock(422.9 - 428.2 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Wenlock</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#C5E8C3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Telychian</Name>
					<Title>Telychian(428.2 - 436 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Telychian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99D7B3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Aeronian</Name>
					<Title>Aeronian(436 - 439 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Aeronian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99D7B3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Rhuddanian</Name>
					<Title>Rhuddanian(439 - 443.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Rhuddanian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99D7B3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Llandovery</Name>
					<Title>Llandovery(428.2 - 443.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Llandovery</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99D7B3</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Silurian</Name>
					<Title>Silurian(416 - 443.7 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Silurian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B3E2D0</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Himantian</Name>
					<Title>Himantian(443.7 - 445.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Himantian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#66C092</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Stage 6</Name>
					<Title>Stage 6(445.6 - 455.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Stage6</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#66C092</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Stage 5</Name>
					<Title>Stage 5(455.8 - 460.9 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Stage5</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#66C092</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Upper Ordivician</Name>
					<Title>Upper Ordivician(443.7 - 460.9 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:UpperOrdivician</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#66C092</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Darriwilian</Name>
					<Title>Darriwilian(460.9 - 468.1 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Darriwilian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#419C68</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Stage 3</Name>
					<Title>Stage 3(468.1 - 471.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Stage3</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#419C68</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Middle Ordovician</Name>
					<Title>Middle Ordovician(460.9 - 471.8 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:MiddleOrdovician</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#419C68</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Stage 2</Name>
					<Title>Stage 2(471.8 - 478.6 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Stage2</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#009C70</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Tremadocian</Name>
					<Title>Tremadocian(478.6 - 488.3 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Tremadocian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#009C70</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lower Ordovician</Name>
					<Title>Lower Ordovician(471.8 - 488.3 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:LowerOrdovician</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#009C70</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Ordovician</Name>
					<Title>Ordovician(443.7 - 488.3 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Ordovician</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#009270</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Upper Cambrian</Name>
					<Title>Upper Cambrian(xxx - xxx Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:UpperCambrian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#D7D3AA</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Middle Cambrian</Name>
					<Title>Middle Cambrian(xxx - xxx Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:MiddleCambrian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#B6AE6D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Lower Cambrian</Name>
					<Title>Lower Cambrian(xxx - xxx Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:LowerCambrian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#66A94B</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Cambrian</Name>
					<Title>Cambrian(488.3 - 542 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Cambrian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#408521</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Paleozoic</Name>
					<Title>Paleozoic(359.2 - 542 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Paleozoic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#99C08D</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Phanerozoic</Name>
					<Title>Phanerozoic(0 - 542 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Phanerozoic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#9AD9E5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Edicarian</Name>
					<Title>Edicarian(542 - 630 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Edicarian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FEB343</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Cryogenian</Name>
					<Title>Cryogenian(630 - 850 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Cryogenian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FEB343</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Tonian</Name>
					<Title>Tonian(850 - 1000 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Tonian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FEB343</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Neoproterozoic</Name>
					<Title>Neoproterozoic(542 - 1000 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Neoproterozoic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FEB343</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Stenian</Name>
					<Title>Stenian(1000 - 1200 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Stenian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FDB469</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Ectasian</Name>
					<Title>Ectasian(1200 - 1400 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Ectasian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FDB469</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Calymmian</Name>
					<Title>Calymmian(1400 - 1600 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Calymmian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FDB469</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Mesoproterozoic</Name>
					<Title>Mesoproterozoic(1000 - 1600 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Mesoproterozoic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FDB469</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Statherian</Name>
					<Title>Statherian(1600 - 1800 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Statherian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F74373</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Orosirian</Name>
					<Title>Orosirian(1800 - 2050 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Orosirian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F74373</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Rhyacian</Name>
					<Title>Rhyacian(2050 - 2300 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Rhyacian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F74373</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Siderian</Name>
					<Title>Siderian(2300 - 2500 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Siderian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F74373</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Paleoproterozoic</Name>
					<Title>Paleoproterozoic(1600 - 2500 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Paleoproterozoic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F74373</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Proterozoic</Name>
					<Title>Proterozoic(542 - 2500 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Proterozoic</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#FB9A94</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Neoarchean</Name>
					<Title>Neoarchean(2500 - 2800 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Neoarchean</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F99BC5</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Mesoarchean</Name>
					<Title>Mesoarchean(2800 - 3200 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Mesoarchean</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#EA66B1</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Paleoarchean</Name>
					<Title>Paleoarchean(3200 - 3600 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Paleoarchean</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F4449F</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Eaoarchean</Name>
					<Title>Eaoarchean(3600 - 4500 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Eaoarchean</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#DA027F</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Archean</Name>
					<Title>Archean(2500 - 4500 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Archean</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F0027F</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
				<Rule>
					<Name>Precambrian</Name>
					<Title>Precambrian(542 - 4500 Ma)</Title>
					<ogc:Filter>
						<ogc:PropertyIsEqualTo>
							<ogc:PropertyName>gsml:specification/*/gsml:preferredAge/gsml:GeologicEvent/gsml:eventAge/gsml:CGI_TermValue/gsml:value[@codeSpace='urn:cgi:classifierSchem:ICS:StratChart:2004']</ogc:PropertyName>
							<ogc:Literal>urn:cgi:classifier:ICS:StratChart:2004:Precambrian</ogc:Literal>
						</ogc:PropertyIsEqualTo>
					</ogc:Filter>
					<PolygonSymbolizer>
						<Geometry>
							<ogc:PropertyName>gsml:shape</ogc:PropertyName>
						</Geometry>
						<Fill>
							<CssParameter name="fill">#F74370</CssParameter>
						</Fill>
					</PolygonSymbolizer>
				</Rule>
			</FeatureTypeStyle>
		</UserStyle>
	</UserLayer>
</StyledLayerDescriptor>