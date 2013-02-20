<?xml version="1.0" encoding="ISO-8859-1" standalone="yes"?>
<sld:StyledLayerDescriptor version="1.0.0" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:gsmltv="http://geosciml.org/xmlns/geosciml-thematicview/1.0.0">
  <sld:NamedLayer>
    <sld:Name>geology-stratigraphy</sld:Name>
    <sld:UserStyle>
      <sld:Name>geology-stratigraphy</sld:Name>
      <sld:Title>Stratigraphy</sld:Title>
      <sld:FeatureTypeStyle>
        <!--<sld:FeatureTypeName>gsmltv:GeologicUnitView</sld:FeatureTypeName>-->
        <sld:Rule>
          <sld:Name>Aberfeldy Basalt (-Puy)</sld:Name>
          <sld:Title>Aberfeldy Basalt (-Puy)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Puy</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA93C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Albion Formation (-Caa)</sld:Name>
          <sld:Title>Albion Formation (-Caa)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Caa</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B09753</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Andersons Creek Formation( Sxa)</sld:Name>
          <sld:Title>Andersons Creek Formation( Sxa)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sxa</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A152FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Angry Hill Sandstone (Ocra)</sld:Name>
          <sld:Title>Angry Hill Sandstone (Ocra)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ocra</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#00FFFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ararat Granodiorite (G380)</sld:Name>
          <sld:Title>Ararat Granodiorite (G380)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G380</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF7F5C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Arthurs Seat Rhyodacite (Dua)</sld:Name>
          <sld:Title>Arthurs Seat Rhyodacite (Dua)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dua</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#7070E0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Aughaderry Tonalite (G360)</sld:Name>
          <sld:Title>Aughaderry Tonalite (G360)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G360</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Avon Supergroup - basalt (Dab)</sld:Name>
          <sld:Title>Avon Supergroup - basalt (Dab)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dab</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B6BCFC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Awaiti Granite (G444)</sld:Name>
          <sld:Title>Awaiti Granite (G444)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G444</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F2D4B8</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bacchus Marsh Formation (Pxb)</sld:Name>
          <sld:Title>Bacchus Marsh Formation (Pxb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Pxb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#92D0FE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ballark Conglomerate (Kxb)</sld:Name>
          <sld:Title>Ballark Conglomerate (Kxb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Kxb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#8FFF00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ballyrogan Granite (G385)</sld:Name>
          <sld:Title>Ballyrogan Granite (G385)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G385</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CF0030</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Balmattum Basalt( Nurb)</sld:Name>
          <sld:Title>Balmattum Basalt( Nurb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nurb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EEDD53</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Barjarg Granite (G216)</sld:Name>
          <sld:Title>Barjarg Granite (G216)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G216</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFBECE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Barrakee Granite (G340)</sld:Name>
          <sld:Title>Barrakee Granite (G340)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G340</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFB3C6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Barrama Microgranite (G436)</sld:Name>
          <sld:Title>Barrama Microgranite (G436)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G436</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D5B0FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Barringo Granodiorite (G282)</sld:Name>
          <sld:Title>Barringo Granodiorite (G282)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G282</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Barwon River Conglomerate (Kob)</sld:Name>
          <sld:Title>Barwon River Conglomerate (Kob)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Kob</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#8FFF00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Batesford Limestone (Ntb)</sld:Name>
          <sld:Title>Batesford Limestone (Ntb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ntb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F5EDA6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Baw Baw Granodiorite (G236)</sld:Name>
          <sld:Title>Baw Baw Granodiorite (G236)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G236</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8FAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Baynton Granodiorite (G284)</sld:Name>
          <sld:Title>Baynton Granodiorite (G284)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G284</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE245B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Baynton Granodiorite-porphyritic phase (G284a)</sld:Name>
          <sld:Title>Baynton Granodiorite-porphyritic phase (G284a)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G284a</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE83A2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bealiba Granodiorite (G353)</sld:Name>
          <sld:Title>Bealiba Granodiorite (G353)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G353</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF7799</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Beaufort Formation (-Cab)</sld:Name>
          <sld:Title>Beaufort Formation (-Cab)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cab</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F2CEE1</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Beauvallet Granodiorite (G285)</sld:Name>
          <sld:Title>Beauvallet Granodiorite (G285)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G285</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ben Major Granite (G368)</sld:Name>
          <sld:Title>Ben Major Granite (G368)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G368</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ben Nevis Granite (G374)</sld:Name>
          <sld:Title>Ben Nevis Granite (G374)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G374</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F9E8D9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bendoc Group (Ob)</sld:Name>
          <sld:Title>Bendoc Group (Ob)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ob</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#00FFFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Berrimal Granite (G358)</sld:Name>
          <sld:Title>Berrimal Granite (G358)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G358</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF6B90</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bindaree Diorite( G185)</sld:Name>
          <sld:Title>Bindaree Diorite( G185)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G185</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF6B90</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bindaree Formation (Pikes Flat)( Dawp)</sld:Name>
          <sld:Title>Bindaree Formation (Pikes Flat)( Dawp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dawp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C6C6F3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Black Range Granodiorite( G223)</sld:Name>
          <sld:Title>Black Range Granodiorite( G223)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G223</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8FAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Black Rock Sandstone (Nbb)</sld:Name>
          <sld:Title>Black Rock Sandstone (Nbb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nbb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEF223</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Blair Atholl Granite (G439)</sld:Name>
          <sld:Title>Blair Atholl Granite (G439)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G439</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#643434</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Blanchetown Clay (Qxb)</sld:Name>
          <sld:Title>Blanchetown Clay (Qxb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qxb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFFF9B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bolinda Shale (Osb)</sld:Name>
          <sld:Title>Bolinda Shale (Osb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Osb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D5FEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Boola Formation( Sjo)</sld:Name>
          <sld:Title>Boola Formation( Sjo)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjo</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CDA3FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bridgewater Formation (Qxr)</sld:Name>
          <sld:Title>Bridgewater Formation (Qxr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qxr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFFF3C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Brighton Group (Nb)</sld:Name>
          <sld:Title>Brighton Group (Nb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFF553</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Brimboal Granodiorite (G438)</sld:Name>
          <sld:Title>Brimboal Granodiorite (G438)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G438</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D2C4C4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Brissces Hut Andesite( -Cjb)</sld:Name>
          <sld:Title>Brissces Hut Andesite( -Cjb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cjb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CE4991</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Broadford Formation (Sxb)</sld:Name>
          <sld:Title>Broadford Formation (Sxb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sxb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A152FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bryan Creek Granodiorite (G445)</sld:Name>
          <sld:Title>Bryan Creek Granodiorite (G445)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G445</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EBC097</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bryce Plain Basalt( -Pur)</sld:Name>
          <sld:Title>Bryce Plain Basalt( -Pur)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pur</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA93C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bryo Gully Shale (Ocrb)</sld:Name>
          <sld:Title>Bryo Gully Shale (Ocrb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ocrb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CAFEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Buangor Granite (G377)</sld:Name>
          <sld:Title>Buangor Granite (G377)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G377</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F9E8D9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Buckeran Diorite (G394)</sld:Name>
          <sld:Title>Buckeran Diorite (G394)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G394</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7B381</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Buckeran Diorite nonmagnetic phase (G394a)</sld:Name>
          <sld:Title>Buckeran Diorite nonmagnetic phase (G394a)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G394a</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EDC6A2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Buckrabanyule Granite (G336)</sld:Name>
          <sld:Title>Buckrabanyule Granite (G336)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G336</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bulgana Diorite (G388)</sld:Name>
          <sld:Title>Bulgana Diorite (G388)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G388</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF857D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bulla Granodiorite (G276)</sld:Name>
          <sld:Title>Bulla Granodiorite (G276)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G276</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bullawin Porphyry (G403)</sld:Name>
          <sld:Title>Bullawin Porphyry (G403)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G403</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE003F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bullengarook Gravel (Nxu)</sld:Name>
          <sld:Title>Bullengarook Gravel (Nxu)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nxu</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEEF00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bullung Siltstone (Sjb)</sld:Name>
          <sld:Title>Bullung Siltstone (Sjb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DABBFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Burrumbeep Granodiorite (G381)</sld:Name>
          <sld:Title>Burrumbeep Granodiorite (G381)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G381</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F5A27A</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bushy Creek Granodiorite - equigranular phase (G395a)</sld:Name>
          <sld:Title>Bushy Creek Granodiorite - equigranular phase (G395a)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G395a</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7B324</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Bushy Creek Granodiorite - porphyritic phase (G395b)</sld:Name>
          <sld:Title>Bushy Creek Granodiorite - porphyritic phase (G395b)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G395b</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D78433</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Buxton Granodiorite (G224)</sld:Name>
          <sld:Title>Buxton Granodiorite (G224)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G224</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Cairns Creek Granodiorite (G432)</sld:Name>
          <sld:Title>Cairns Creek Granodiorite (G432)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G432</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CDA1FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Calivil Formation (-Pxa)</sld:Name>
          <sld:Title>Calivil Formation (-Pxa)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pxa</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECF7A7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Callemondah Conglomerate (Dadc)</sld:Name>
          <sld:Title>Callemondah Conglomerate (Dadc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dadc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B3B3EF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Cambrian metamorphosed mafic volcanics( -Cxv)</sld:Name>
          <sld:Title>Cambrian metamorphosed mafic volcanics( -Cxv)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cxv</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#BF1171</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Cambrian, intrusive rocks (-Cg)</sld:Name>
          <sld:Title>Cambrian, intrusive rocks (-Cg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A354FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Carapooee Granodiorite (G356)</sld:Name>
          <sld:Title>Carapooee Granodiorite (G356)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G356</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE6A8F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Carrajung Volcanics( -Puc)</sld:Name>
          <sld:Title>Carrajung Volcanics( -Puc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Puc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8F00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Carrigeen Granodiorite (G414)</sld:Name>
          <sld:Title>Carrigeen Granodiorite (G414)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G414</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F2D4B8</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Carrolls Amphibolite (-Crc)</sld:Name>
          <sld:Title>Carrolls Amphibolite (-Crc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Crc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D45F9F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Castlemaine Group (Oc)</sld:Name>
          <sld:Title>Castlemaine Group (Oc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Oc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E2FEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Castlemaine Group - Bendigonian (Ocb)</sld:Name>
          <sld:Title>Castlemaine Group - Bendigonian (Ocb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ocb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#77FEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Castlemaine Group - Castlemainian (Occ)</sld:Name>
          <sld:Title>Castlemaine Group - Castlemainian (Occ)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Occ</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A7FEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Castlemaine Group - Chewtonian (Och)</sld:Name>
          <sld:Title>Castlemaine Group - Chewtonian (Och)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Och</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CAFEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Castlemaine Group - Darriwilian (Ocd)</sld:Name>
          <sld:Title>Castlemaine Group - Darriwilian (Ocd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ocd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#00FEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Castlemaine Group - Lancefieldian (Ocl)</sld:Name>
          <sld:Title>Castlemaine Group - Lancefieldian (Ocl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ocl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A7FEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Castlemaine Group - Yapeenian( Ocy)</sld:Name>
          <sld:Title>Castlemaine Group - Yapeenian( Ocy)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ocy</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#83FEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Cathedral Group( Dc)</sld:Name>
          <sld:Title>Cathedral Group( Dc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9F9FEA</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Cave Hill Sandstone (Dxd)</sld:Name>
          <sld:Title>Cave Hill Sandstone (Dxd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dxd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DADAF7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ceres Gabbro (-Cxc)</sld:Name>
          <sld:Title>Ceres Gabbro (-Cxc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cxc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#774DFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Chepstowe Granodiorite (G310)</sld:Name>
          <sld:Title>Chepstowe Granodiorite (G310)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G310</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE003F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Chetwynd Tonalite (G433)</sld:Name>
          <sld:Title>Chetwynd Tonalite (G433)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G433</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DFBA53</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Childers Formation( -Pvc)</sld:Name>
          <sld:Title>Childers Formation( -Pvc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pvc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C8E600</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Clifton Formation (Nhc)</sld:Name>
          <sld:Title>Clifton Formation (Nhc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nhc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#AFB920</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Cloven Hills Granodiorite (G418)</sld:Name>
          <sld:Title>Cloven Hills Granodiorite (G418)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G418</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C08AFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Cobbannah Group( Sc)</sld:Name>
          <sld:Title>Cobbannah Group( Sc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D1ABFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Cobbs Spur Andesite Breccia( -Cjc)</sld:Name>
          <sld:Title>Cobbs Spur Andesite Breccia( -Cjc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cjc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CE4991</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Coimadai Shale (Nxc)</sld:Name>
          <sld:Title>Coimadai Shale (Nxc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nxc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEEF00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Colbinabbin Diorite (G297)</sld:Name>
          <sld:Title>Colbinabbin Diorite (G297)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G297</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA38E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Coldstream Rhyolite( Djc)</sld:Name>
          <sld:Title>Coldstream Rhyolite( Djc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Djc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EEEEFC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Coleraine Volcanic Group (Jc)</sld:Name>
          <sld:Title>Coleraine Volcanic Group (Jc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Jc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#4AFF86</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Commissioners Flat Granodiorite (G286)</sld:Name>
          <sld:Title>Commissioners Flat Granodiorite (G286)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G286</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Coode Island Silt (Qyc)</sld:Name>
          <sld:Title>Coode Island Silt (Qyc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qyc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFFFBE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Coonooer Granite (G359)</sld:Name>
          <sld:Title>Coonooer Granite (G359)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G359</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF7799</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Coopers Creek Limestone (Sjc)</sld:Name>
          <sld:Title>Coopers Creek Limestone (Sjc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E3CBFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Costerfield Siltstone (Sxc)</sld:Name>
          <sld:Title>Costerfield Siltstone (Sxc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sxc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7D3FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Council Trench Formation (TRxc)</sld:Name>
          <sld:Title>Council Trench Formation (TRxc)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>TRxc</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#54FFD4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Crosbie Granite( G289)</sld:Name>
          <sld:Title>Crosbie Granite( G289)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G289</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Curtis Diorite (G386)</sld:Name>
          <sld:Title>Curtis Diorite (G386)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G386</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Dargile Formation (Sxg)</sld:Name>
          <sld:Title>Dargile Formation (Sxg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sxg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D1ABFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Darley Gravel (Nxr)</sld:Name>
          <sld:Title>Darley Gravel (Nxr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nxr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFE570</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Deenicull Schist (-Crd)</sld:Name>
          <sld:Title>Deenicull Schist (-Crd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Crd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#AFBC8F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Deep Creek Siltstone (Sxd)</sld:Name>
          <sld:Title>Deep Creek Siltstone (Sxd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sxd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C08AFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Demons Bluff Group (-Pd)</sld:Name>
          <sld:Title>Demons Bluff Group (-Pd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E5CB00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Den Hills Formation - domes and laccoliths (Jcd2)</sld:Name>
          <sld:Title>Den Hills Formation - domes and laccoliths (Jcd2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Jcd2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#4AFF86</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Den Hills Formation - lava flows (Jcd1)</sld:Name>
          <sld:Title>Den Hills Formation - lava flows (Jcd1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Jcd1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B9FFD0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Dergholm Granite (G424)</sld:Name>
          <sld:Title>Dergholm Granite (G424)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G424</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A354FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Deutgam Silt (Nxe)</sld:Name>
          <sld:Title>Deutgam Silt (Nxe)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nxe</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F4E98F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Digger Island Limestone (Oxd)</sld:Name>
          <sld:Title>Digger Island Limestone (Oxd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Oxd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#24FFFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Dimboola Igneous Complex (-Co)</sld:Name>
          <sld:Title>Dimboola Igneous Complex (-Co)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Co</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#0070B2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Donna Buang Rhyodacite (Dyad)</sld:Name>
          <sld:Title>Donna Buang Rhyodacite (Dyad)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dyad</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFE883</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Donnellys Creek Siltstone( Sjd)</sld:Name>
          <sld:Title>Donnellys Creek Siltstone( Sjd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECD7FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Dorodong Sand (Nxd)</sld:Name>
          <sld:Title>Dorodong Sand (Nxd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nxd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEEF00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Dromana Granite (G262)</sld:Name>
          <sld:Title>Dromana Granite (G262)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G262</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Duddo Limestone (-Pmd)</sld:Name>
          <sld:Title>Duddo Limestone (-Pmd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pmd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E2E5AD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Dunmore Leucotonalite (G416)</sld:Name>
          <sld:Title>Dunmore Leucotonalite (G416)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G416</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7B381</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Dunneworthy Granodiorite (G383)</sld:Name>
          <sld:Title>Dunneworthy Granodiorite (G383)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G383</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E6A875</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Dwyer Granite (G399)</sld:Name>
          <sld:Title>Dwyer Granite (G399)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G399</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Eagle Peaks Basalt( -Cie)</sld:Name>
          <sld:Title>Eagle Peaks Basalt( -Cie)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cie</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E6A2C6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Eastern View and Boonah formations (-Pxvb)</sld:Name>
          <sld:Title>Eastern View and Boonah formations (-Pxvb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pxvb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E4F282</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Easts Lookout Siltstone( Dne)</sld:Name>
          <sld:Title>Easts Lookout Siltstone( Dne)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dne</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#8484EE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Easts Lookout Siltstone-Wilson Creek Shale( Dne-Sji)</sld:Name>
          <sld:Title>Easts Lookout Siltstone-Wilson Creek Shale( Dne-Sji)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dne-Sji</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#7070E0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Eildon Sandstone( Sje)</sld:Name>
          <sld:Title>Eildon Sandstone( Sje)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sje</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A152FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Elmhurst Granite (G373)</sld:Name>
          <sld:Title>Elmhurst Granite (G373)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G373</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F9E8D9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Epacris Hills Granite (G397)</sld:Name>
          <sld:Title>Epacris Hills Granite (G397)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G397</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFAA8F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ercildoun Granite( G312)</sld:Name>
          <sld:Title>Ercildoun Granite( G312)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G312</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEC7A6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Erindale Granite( G296)</sld:Name>
          <sld:Title>Erindale Granite( G296)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G296</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Eumeralla Formation (Koe)</sld:Name>
          <sld:Title>Eumeralla Formation (Koe)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Koe</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C8FE82</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Eversley Granite (G375)</sld:Name>
          <sld:Title>Eversley Granite (G375)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G375</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Fairview Andesitic Breccia (-Csf)</sld:Name>
          <sld:Title>Fairview Andesitic Breccia (-Csf)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Csf</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E08CB9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ferny Creek Rhyodacite( Djf)</sld:Name>
          <sld:Title>Ferny Creek Rhyodacite( Djf)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Djf</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DADAF7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ferres Creek Tonalite (G423)</sld:Name>
          <sld:Title>Ferres Creek Tonalite (G423)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G423</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7E1E1</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Flinders Volcanic Group( -Puf)</sld:Name>
          <sld:Title>Flinders Volcanic Group( -Puf)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Puf</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA83B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Flowerdale Granodiorite (G220)</sld:Name>
          <sld:Title>Flowerdale Granodiorite (G220)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G220</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Fumina Basalt( Nuf)</sld:Name>
          <sld:Title>Fumina Basalt( Nuf)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nuf</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8A00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Fyansford Formation (Ntg)</sld:Name>
          <sld:Title>Fyansford Formation (Ntg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ntg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F2E477</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Gariwerd Sandstone (Skrg)</sld:Name>
          <sld:Title>Gariwerd Sandstone (Skrg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skrg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DFC3FE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Garvey Gully Formation( -Ctg)</sld:Name>
          <sld:Title>Garvey Gully Formation( -Ctg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Ctg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C83384</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Gellibrand Marl (Nhg)</sld:Name>
          <sld:Title>Gellibrand Marl (Nhg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nhg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E5DFB7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Gippsland Limestone (Nsg)</sld:Name>
          <sld:Title>Gippsland Limestone (Nsg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nsg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F0E26B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Glenaroua Microgranite (G287)</sld:Name>
          <sld:Title>Glenaroua Microgranite (G287)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G287</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Glendara Granite (G448)</sld:Name>
          <sld:Title>Glendara Granite (G448)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G448</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D09900</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Glenelg River Metamorphic Complex - biotite granite (-Cmgb)</sld:Name>
          <sld:Title>Glenelg River Metamorphic Complex - biotite granite (-Cmgb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cmgb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E397C0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Glenelg River Metamorphic Complex - leucogranite (-Cmgg)</sld:Name>
          <sld:Title>Glenelg River Metamorphic Complex - leucogranite (-Cmgg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cmgg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E9ADCD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Glengoyne Granite (G446)</sld:Name>
          <sld:Title>Glengoyne Granite (G446)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G446</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F9E8D9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Glenlogie Granodiorite (G372)</sld:Name>
          <sld:Title>Glenlogie Granodiorite (G372)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G372</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA38E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Glenmaggie Basalt (-Pul)</sld:Name>
          <sld:Title>Glenmaggie Basalt (-Pul)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pul</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA93C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Glennie Granite (G253)</sld:Name>
          <sld:Title>Glennie Granite (G253)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G253</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Glenthompson Sandstone( -Cng)</sld:Name>
          <sld:Title>Glenthompson Sandstone( -Cng)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cng</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F5D9E8</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Goat Rocks Conglomerate (Srg)</sld:Name>
          <sld:Title>Goat Rocks Conglomerate (Srg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Srg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D1ABFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Goldie Chert (-Cxg)</sld:Name>
          <sld:Title>Goldie Chert (-Cxg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cxg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DF8BB8</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Good Morning Bill Schist (-Crg)</sld:Name>
          <sld:Title>Good Morning Bill Schist (-Crg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Crg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DBC5B3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Grampians Group (Sk)</sld:Name>
          <sld:Title>Grampians Group (Sk)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sk</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F5EBFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Grange Burn Formation (Nxg)</sld:Name>
          <sld:Title>Grange Burn Formation (Nxg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nxg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F4E98F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Greensborough Basalt( Nug)</sld:Name>
          <sld:Title>Greensborough Basalt( Nug)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nug</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFBE6B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Grieves Granite (G339)</sld:Name>
          <sld:Title>Grieves Granite (G339)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G339</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA7BD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Gringegalgona Granite (G447)</sld:Name>
          <sld:Title>Gringegalgona Granite (G447)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G447</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D07012</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Handford Creek Formation( -Cjh)</sld:Name>
          <sld:Title>Handford Creek Formation( -Cjh)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cjh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F2CEE1</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Harcourt Granodiorite (G290)</sld:Name>
          <sld:Title>Harcourt Granodiorite (G290)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G290</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA38E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Hardwicke Creek Rhyolite( -Cjw)</sld:Name>
          <sld:Title>Hardwicke Creek Rhyolite( -Cjw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cjw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECB8D4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Harrow Granodiorite (G407)</sld:Name>
          <sld:Title>Harrow Granodiorite (G407)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G407</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F9E8D9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Hassall Creek Granodiorite (G409)</sld:Name>
          <sld:Title>Hassall Creek Granodiorite (G409)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G409</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EEDFFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Haunted Hills Formation (Nlh)</sld:Name>
          <sld:Title>Haunted Hills Formation (Nlh)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nlh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F4E98F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Heathcote Volcanic Group (-Ch)</sld:Name>
          <sld:Title>Heathcote Volcanic Group (-Ch)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Ch</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F4D8E7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Hemleys Granite (G333)</sld:Name>
          <sld:Title>Hemleys Granite (G333)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G333</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFBECE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Hesket Ignimbrite (Dmh)</sld:Name>
          <sld:Title>Hesket Ignimbrite (Dmh)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dmh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D4BAA6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Heytesbury Group (Nh)</sld:Name>
          <sld:Title>Heytesbury Group (Nh)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E5DFB7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Hickman Creek Granite (G384)</sld:Name>
          <sld:Title>Hickman Creek Granite (G384)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G384</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E6983B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Highton Volcanics (Dawh)</sld:Name>
          <sld:Title>Highton Volcanics (Dawh)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dawh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9191E7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Howitt Spur Formation (Dawo)</sld:Name>
          <sld:Title>Howitt Spur Formation (Dawo)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dawo</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ACACED</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Howqua Chert (Oah)</sld:Name>
          <sld:Title>Howqua Chert (Oah)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Oah</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#6BFFFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Humevale Siltstone( Dxh)</sld:Name>
          <sld:Title>Humevale Siltstone( Dxh)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dxh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B3B3EF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Hummocks Serpentinite (-Cxh)</sld:Name>
          <sld:Title>Hummocks Serpentinite (-Cxh)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cxh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B3D4E9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Hypatia Formation (Jch)</sld:Name>
          <sld:Title>Hypatia Formation (Jch)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Jch</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#8CFFB2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Illoura Granodiorite (G305)</sld:Name>
          <sld:Title>Illoura Granodiorite (G305)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G305</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE003F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ingliston Granite (G279)</sld:Name>
          <sld:Title>Ingliston Granite (G279)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G279</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF537E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Jan Juc Marl (Ntj)</sld:Name>
          <sld:Title>Jan Juc Marl (Ntj)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ntj</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EDDC52</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Jeffcott Granite (G334)</sld:Name>
          <sld:Title>Jeffcott Granite (G334)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G334</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFE2E9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Jordan River Group( Sj)</sld:Name>
          <sld:Title>Jordan River Group( Sj)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sj</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D1ABFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kadnook Creek Granodiorite (G449)</sld:Name>
          <sld:Title>Kadnook Creek Granodiorite (G449)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G449</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E6C977</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kalorama Rhyodacite( Djk)</sld:Name>
          <sld:Title>Kalorama Rhyodacite( Djk)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Djk</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C6C6F3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kalymna Falls Sandstone( Skrk)</sld:Name>
          <sld:Title>Kalymna Falls Sandstone( Skrk)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skrk</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E3CBFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kanowna Island( G252)</sld:Name>
          <sld:Title>Kanowna Island( G252)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G252</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kassingbrook Granodiorite (G417)</sld:Name>
          <sld:Title>Kassingbrook Granodiorite (G417)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G417</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EBC097</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Keppel Creek Granodiorite (G225)</sld:Name>
          <sld:Title>Keppel Creek Granodiorite (G225)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G225</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFEEF2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kevington Creek Formation (Dadk)</sld:Name>
          <sld:Title>Kevington Creek Formation (Dadk)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dadk</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E8E8FA</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Killeen Basalt( Nurk)</sld:Name>
          <sld:Title>Killeen Basalt( Nurk)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nurk</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA93C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>King Parrot Creek Granodiorite (G219)</sld:Name>
          <sld:Title>King Parrot Creek Granodiorite (G219)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G219</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kirribilly Siltstone (Srk)</sld:Name>
          <sld:Title>Kirribilly Siltstone (Srk)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Srk</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7D3FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Knowsley East Shale (-Cxk)</sld:Name>
          <sld:Title>Knowsley East Shale (-Cxk)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cxk</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D35E9E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Koolomurt Granodiorite (G426)</sld:Name>
          <sld:Title>Koolomurt Granodiorite (G426)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G426</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E1C8FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kooreelah Gabbro-Diorite (G428)</sld:Name>
          <sld:Title>Kooreelah Gabbro-Diorite (G428)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G428</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#BCA7A7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kooreh Granite (G357)</sld:Name>
          <sld:Title>Kooreh Granite (G357)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G357</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE6A8F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kooyoora Granite (G347)</sld:Name>
          <sld:Title>Kooyoora Granite (G347)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G347</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFBECE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kooyoora Granite - aplitic phase (G347a)</sld:Name>
          <sld:Title>Kooyoora Granite - aplitic phase (G347a)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G347a</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E600A9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Korong Creek Tonalite (G322)</sld:Name>
          <sld:Title>Korong Creek Tonalite (G322)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G322</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE003F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Kout Norien Granodiorite (G410)</sld:Name>
          <sld:Title>Kout Norien Granodiorite (G410)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G410</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EBC097</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lake Boga Granite (G321)</sld:Name>
          <sld:Title>Lake Boga Granite (G321)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G321</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lake Mountain Rhyodacite (Dycl)</sld:Name>
          <sld:Title>Lake Mountain Rhyodacite (Dycl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dycl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFC983</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lakelands Flat Andesite Breccia( -Cjl)</sld:Name>
          <sld:Title>Lakelands Flat Andesite Breccia( -Cjl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cjl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C83384</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lalkaldarno Porphyry (-Csl)</sld:Name>
          <sld:Title>Lalkaldarno Porphyry (-Csl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Csl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#774DFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Langi Ghiran Granite (G376)</sld:Name>
          <sld:Title>Langi Ghiran Granite (G376)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G376</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFAA8F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lano Gully Sandstone (Ocrl)</sld:Name>
          <sld:Title>Lano Gully Sandstone (Ocrl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ocrl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CAFFFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Latrobe Valley Group( -Pv)</sld:Name>
          <sld:Title>Latrobe Valley Group( -Pv)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pv</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DAEE53</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lazarini Siltstone( Sjl)</sld:Name>
          <sld:Title>Lazarini Siltstone( Sjl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B77AFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lazy Bar Andesite( -Chl)</sld:Name>
          <sld:Title>Lazy Bar Andesite( -Chl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Chl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F4D8E7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Leviathan Formation (-Cal)</sld:Name>
          <sld:Title>Leviathan Formation (-Cal)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cal</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E2E5AD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lexington Schist( -Crl)</sld:Name>
          <sld:Title>Lexington Schist( -Crl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Crl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D8B6B6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lexton Granodiorite (G370)</sld:Name>
          <sld:Title>Lexton Granodiorite (G370)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G370</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F9E8D9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lilly Pilly Granite (G256)</sld:Name>
          <sld:Title>Lilly Pilly Granite (G256)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G256</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8FAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lilydale Limestone (Dxe)</sld:Name>
          <sld:Title>Lilydale Limestone (Dxe)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dxe</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#7070E0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Liptrap Formation (Dxl)</sld:Name>
          <sld:Title>Liptrap Formation (Dxl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dxl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#7070E0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Locmany Formation (Kotl)</sld:Name>
          <sld:Title>Locmany Formation (Kotl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Kotl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#BEFF6B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Loftus Creek Granodiorite (G419)</sld:Name>
          <sld:Title>Loftus Creek Granodiorite (G419)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G419</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A354FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Loxton Sand (Nwl)</sld:Name>
          <sld:Title>Loxton Sand (Nwl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nwl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F5EDA6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Lysterfield Granodiorite (G241)</sld:Name>
          <sld:Title>Lysterfield Granodiorite (G241)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G241</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mafeking Granodiorite (G396)</sld:Name>
          <sld:Title>Mafeking Granodiorite (G396)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G396</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF7799</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Magdala Volcanics( -Cxd)</sld:Name>
          <sld:Title>Magdala Volcanics( -Cxd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cxd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C7C69B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Major Mitchell Sandstone (Skra)</sld:Name>
          <sld:Title>Major Mitchell Sandstone (Skra)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skra</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DABBFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Malcolm Creek Hyaloclastite( -Cim)</sld:Name>
          <sld:Title>Malcolm Creek Hyaloclastite( -Cim)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cim</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECB8D4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mansfield Group( Dam)</sld:Name>
          <sld:Title>Mansfield Group( Dam)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dam</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C4C4C4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Marn Mering Granodiorite (G411)</sld:Name>
          <sld:Title>Marn Mering Granodiorite (G411)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G411</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D07012</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Marshall Creek Member (Dnnm)</sld:Name>
          <sld:Title>Marshall Creek Member (Dnnm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dnnm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9F9FEA</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Maude Basalt (Num)</sld:Name>
          <sld:Title>Maude Basalt (Num)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Num</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA83B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>McAdam Sandstone (Sjm)</sld:Name>
          <sld:Title>McAdam Sandstone (Sjm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C99AFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>McIvor Sandstone (Sxi)</sld:Name>
          <sld:Title>McIvor Sandstone (Sxi)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sxi</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7D3FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Melbourne Formation (Sxm)</sld:Name>
          <sld:Title>Melbourne Formation (Sxm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sxm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7D3FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mepunga Formation (-Pnm)</sld:Name>
          <sld:Title>Mepunga Formation (-Pnm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pnm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D5EC3C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Merrymbuela Gabbro (G404)</sld:Name>
          <sld:Title>Merrymbuela Gabbro (G404)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G404</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Metcalfe Granite (G291)</sld:Name>
          <sld:Title>Metcalfe Granite (G291)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G291</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE235A</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mirimbah Granodiorite (G186)</sld:Name>
          <sld:Title>Mirimbah Granodiorite (G186)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G186</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF6B90</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mirranatwa Granite (G402)</sld:Name>
          <sld:Title>Mirranatwa Granite (G402)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G402</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF7F7F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Moliagul Granodiorite( G350)</sld:Name>
          <sld:Title>Moliagul Granodiorite( G350)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G350</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8FAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Molineaux Sand (Qxm)</sld:Name>
          <sld:Title>Molineaux Sand (Qxm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qxm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DAFFD3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Monbulk Volcanic Group( Nuo)</sld:Name>
          <sld:Title>Monbulk Volcanic Group( Nuo)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nuo</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8A00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Montys Hut Formation( Dnm)</sld:Name>
          <sld:Title>Montys Hut Formation( Dnm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dnm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E8E8FA</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Moomowroong Sand (-Pwm)</sld:Name>
          <sld:Title>Moomowroong Sand (-Pwm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pwm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F3D9C2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Moora Moora Sandstone (Skmm)</sld:Name>
          <sld:Title>Moora Moora Sandstone (Skmm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skmm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DABBFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mooree Granodiorite (G442)</sld:Name>
          <sld:Title>Mooree Granodiorite (G442)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G442</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F8EFD6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Moorngag Granite (G215)</sld:Name>
          <sld:Title>Moorngag Granite (G215)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G215</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFE2E9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Morang Granodiorite (G275)</sld:Name>
          <sld:Title>Morang Granodiorite (G275)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G275</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Moroka Glen Formation (Dadm)</sld:Name>
          <sld:Title>Moroka Glen Formation (Dadm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dadm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E1E1F9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Black Granite (G288)</sld:Name>
          <sld:Title>Mount Black Granite (G288)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G288</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Bute Granite (G308)</sld:Name>
          <sld:Title>Mount Bute Granite (G308)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G308</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Cole Granite (G378)</sld:Name>
          <sld:Title>Mount Cole Granite (G378)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G378</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFBD78</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Difficult Subgroup (Skm)</sld:Name>
          <sld:Title>Mount Difficult Subgroup (Skm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CA7AF5</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Disappointment Granodiorite (G221)</sld:Name>
          <sld:Title>Mount Disappointment Granodiorite (G221)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G221</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8FAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Disappointment Granodiorite-porphyritic phase( G221a)</sld:Name>
          <sld:Title>Mount Disappointment Granodiorite-porphyritic phase( G221a)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G221a</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Easton Shale( Oxe)</sld:Name>
          <sld:Title>Mount Easton Shale( Oxe)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Oxe</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B2FEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Egbert Granite (G337)</sld:Name>
          <sld:Title>Mount Egbert Granite (G337)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G337</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Egerton Granodiorite (G280)</sld:Name>
          <sld:Title>Mount Egerton Granodiorite (G280)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G280</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA38E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Eliza Granodiorite( G264)</sld:Name>
          <sld:Title>Mount Eliza Granodiorite( G264)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G264</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Evelyn Rhyodacite( Dje)</sld:Name>
          <sld:Title>Mount Evelyn Rhyodacite( Dje)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dje</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9F9FEA</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Ida Formation( Dxm)</sld:Name>
          <sld:Title>Mount Ida Formation( Dxm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dxm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ACACED</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Kent Conglomerate( Damk)</sld:Name>
          <sld:Title>Mount Kent Conglomerate( Damk)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Damk</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CCCCCC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Lonarch Granite (G371)</sld:Name>
          <sld:Title>Mount Lonarch Granite (G371)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G371</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA38E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Martha Granodiorite (G263)</sld:Name>
          <sld:Title>Mount Martha Granodiorite (G263)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G263</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8FAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Norgate Granite( G255)</sld:Name>
          <sld:Title>Mount Norgate Granite( G255)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G255</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8FAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Robertson Diorite( G229)</sld:Name>
          <sld:Title>Mount Robertson Diorite( G229)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G229</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF245B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Singapore Granite( G257)</sld:Name>
          <sld:Title>Mount Singapore Granite( G257)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G257</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Stavely Volcanic Complex (-Cs)</sld:Name>
          <sld:Title>Mount Stavely Volcanic Complex (-Cs)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cs</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DD81B3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Stinton Granodiorite (G227)</sld:Name>
          <sld:Title>Mount Stinton Granodiorite (G227)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G227</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFCAD7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount Stirling Granodiorite (G184)</sld:Name>
          <sld:Title>Mount Stirling Granodiorite (G184)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G184</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mount William Metabasalt (-Chm)</sld:Name>
          <sld:Title>Mount William Metabasalt (-Chm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Chm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F1CDE0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Mountain Chief Agglomerate( -Cic)</sld:Name>
          <sld:Title>Mountain Chief Agglomerate( -Cic)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cic</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E08CB9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Murderers Hill Siltstone (Sjn)</sld:Name>
          <sld:Title>Murderers Hill Siltstone (Sjn)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjn</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D1ABFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Murraduc Basalt (Nubm)</sld:Name>
          <sld:Title>Murraduc Basalt (Nubm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nubm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFBE6B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Murray Hill Sandstone (Skrm)</sld:Name>
          <sld:Title>Murray Hill Sandstone (Skrm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skrm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECDBFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Murrindindi Supergroup( Sm)</sld:Name>
          <sld:Title>Murrindindi Supergroup( Sm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D1ABFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Nanapundah Tuff (-Csn)</sld:Name>
          <sld:Title>Nanapundah Tuff (-Csn)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Csn</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E9ADCD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Nangeela Formation (-Cmn)</sld:Name>
          <sld:Title>Nangeela Formation (-Cmn)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cmn</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F5D9E8</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Nangkita Granite (G408)</sld:Name>
          <sld:Title>Nangkita Granite (G408)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G408</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E09F5F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Nargoon Group (-Cn)</sld:Name>
          <sld:Title>Nargoon Group (-Cn)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cn</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F8E4EE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Narrawaturk Marl (-Pnn)</sld:Name>
          <sld:Title>Narrawaturk Marl (-Pnn)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pnn</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECF7A7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Natte Yallock Granite (G354)</sld:Name>
          <sld:Title>Natte Yallock Granite (G354)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G354</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Neerim Volcanic Group( Nun)</sld:Name>
          <sld:Title>Neerim Volcanic Group( Nun)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nun</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA83B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Nekeeya Gravel (Mxn)</sld:Name>
          <sld:Title>Nekeeya Gravel (Mxn)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Mxn</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B4FF53</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Newer Volcanic Group (Ne)</sld:Name>
          <sld:Title>Newer Volcanic Group (Ne)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ne</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEEED6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Newer Volcanic Group - alkaline lavas (Net2)</sld:Name>
          <sld:Title>Newer Volcanic Group - alkaline lavas (Net2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Net2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEC882</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Newer Volcanic Group - basalt flows (Neo)</sld:Name>
          <sld:Title>Newer Volcanic Group - basalt flows (Neo)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neo</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEDDB2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Newer Volcanic Group - icelandite( Qnt)</sld:Name>
          <sld:Title>Newer Volcanic Group - icelandite( Qnt)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qnt</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEC882</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Newer Volcanic Group - scoria deposits (Nes)</sld:Name>
          <sld:Title>Newer Volcanic Group - scoria deposits (Nes)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nes</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEB352</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Newer Volcanic Group - stony rises basalt (Neo2)</sld:Name>
          <sld:Title>Newer Volcanic Group - stony rises basalt (Neo2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neo2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEDD5A</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Newer Volcanic Group - trachyte plug (Net3)</sld:Name>
          <sld:Title>Newer Volcanic Group - trachyte plug (Net3)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Net3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEC882</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Newer Volcanic Group - tuff rings (Nep1)</sld:Name>
          <sld:Title>Newer Volcanic Group - tuff rings (Nep1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nep1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FED283</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Newer Volcanic Group - valley-filling basalt (Neo1)</sld:Name>
          <sld:Title>Newer Volcanic Group - valley-filling basalt (Neo1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neo1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FED283</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Norton Gully Sandstone( Dnn)</sld:Name>
          <sld:Title>Norton Gully Sandstone( Dnn)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dnn</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C4C4F2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Padthaway Formation (Qxp)</sld:Name>
          <sld:Title>Padthaway Formation (Qxp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qxp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFFF83</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Paleogene plugs and dykes( -Po2)</sld:Name>
          <sld:Title>Paleogene plugs and dykes( -Po2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Po2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8F00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Patawilya Tonalite (G443)</sld:Name>
          <sld:Title>Patawilya Tonalite (G443)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G443</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EAD28F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Pebble Point Formation (-Pwp)</sld:Name>
          <sld:Title>Pebble Point Formation (-Pwp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pwp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E1F176</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Pember Mudstone (-Pwe)</sld:Name>
          <sld:Title>Pember Mudstone (-Pwe)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pwe</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EAF69B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Pental pluton (G624)</sld:Name>
          <sld:Title>Pental pluton (G624)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G624</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF83A2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Pentland Hills Volcanic Group (-Pp)</sld:Name>
          <sld:Title>Pentland Hills Volcanic Group (-Pp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA93C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Phosphate Hill Formation( Oxp)</sld:Name>
          <sld:Title>Phosphate Hill Formation( Oxp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Oxp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#24FFFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Pinnak Sandstone( Oap)</sld:Name>
          <sld:Title>Pinnak Sandstone( Oap)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Oap</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A7FFFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Pintadeen Basalt (Nup)</sld:Name>
          <sld:Title>Pintadeen Basalt (Nup)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nup</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8A00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Piton Scoria Member (Neptp)</sld:Name>
          <sld:Title>Piton Scoria Member (Neptp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neptp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8F00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Port Campbell Limestone (Nhp)</sld:Name>
          <sld:Title>Port Campbell Limestone (Nhp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nhp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F3E683</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Powncebys Tonalite (G367)</sld:Name>
          <sld:Title>Powncebys Tonalite (G367)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G367</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F57AB6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Puckapunyal Formation( Dxp)</sld:Name>
          <sld:Title>Puckapunyal Formation( Dxp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dxp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D4D4F6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Pyalong Granite (G283)</sld:Name>
          <sld:Title>Pyalong Granite (G283)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G283</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEBECE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Pyramid Hill Granite (G295)</sld:Name>
          <sld:Title>Pyramid Hill Granite (G295)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G295</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE603C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Pyrenees Formation( -Cap)</sld:Name>
          <sld:Title>Pyrenees Formation( -Cap)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cap</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E6A2C6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Rainy Creek Porphyry (G281)</sld:Name>
          <sld:Title>Rainy Creek Porphyry (G281)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G281</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF537E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Red Bluff Sandstone (Nbr)</sld:Name>
          <sld:Title>Red Bluff Sandstone (Nbr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nbr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEF33B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Red Man Bluff Subgroup (Skr)</sld:Name>
          <sld:Title>Red Man Bluff Subgroup (Skr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DABBFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Refrigerator Gap Dacite (Dawr)</sld:Name>
          <sld:Title>Refrigerator Gap Dacite (Dawr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dawr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9191E7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Renmark Group (-Pr)</sld:Name>
          <sld:Title>Renmark Group (-Pr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C3D951</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Rhymney Schist (-Crr)</sld:Name>
          <sld:Title>Rhymney Schist (-Crr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Crr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D9E0CA</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Richmond Granite( G361)</sld:Name>
          <sld:Title>Richmond Granite( G361)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G361</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8FAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Riddell Sandstone (Osr)</sld:Name>
          <sld:Title>Riddell Sandstone (Osr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Osr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#6AFEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Riddell Sandstone Eastonian (Osre)</sld:Name>
          <sld:Title>Riddell Sandstone Eastonian (Osre)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Osre</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9BFEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Riddell Sandstone Gisbornian (Osrg)</sld:Name>
          <sld:Title>Riddell Sandstone Gisbornian (Osrg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Osrg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#24FEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Rocklands Volcanic Group (Dr)</sld:Name>
          <sld:Title>Rocklands Volcanic Group (Dr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D3D3F5</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Romsey Subgroup (Ocr)</sld:Name>
          <sld:Title>Romsey Subgroup (Ocr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ocr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#8EFEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Rubicon Rhyolite (Dycr)</sld:Name>
          <sld:Title>Rubicon Rhyolite (Dycr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dycr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA93C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Schofield Granite (G413)</sld:Name>
          <sld:Title>Schofield Granite (G413)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G413</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E09F5F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Scrubby Junction Granodiorite (G415)</sld:Name>
          <sld:Title>Scrubby Junction Granodiorite (G415)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G415</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7B381</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Sealers Cove Granite (G258)</sld:Name>
          <sld:Title>Sealers Cove Granite (G258)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G258</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Serpentine Creek Sandstone (Sjr)</sld:Name>
          <sld:Title>Serpentine Creek Sandstone (Sjr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E3CBFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Serra Sandstone( Skms)</sld:Name>
          <sld:Title>Serra Sandstone( Skms)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skms</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECDBFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Seven Creeks Basalt( Nurs)</sld:Name>
          <sld:Title>Seven Creeks Basalt( Nurs)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nurs</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E6CC00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Sheepyard Flat Boninite( -Cis)</sld:Name>
          <sld:Title>Sheepyard Flat Boninite( -Cis)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cis</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F2CEE1</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Sheoak Gully Boninite( -Chs)</sld:Name>
          <sld:Title>Sheoak Gully Boninite( -Chs)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Chs</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DBD1B2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Shepparton Formation (Nws)</sld:Name>
          <sld:Title>Shepparton Formation (Nws)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nws</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFFBBE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Silvan Granodiorite (G240)</sld:Name>
          <sld:Title>Silvan Granodiorite (G240)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G240</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Silverband Formation (Sks)</sld:Name>
          <sld:Title>Silverband Formation (Sks)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sks</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C99AFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Sinclair Valley Sandstone( Sjs)</sld:Name>
          <sld:Title>Sinclair Valley Sandstone( Sjs)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjs</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECDBFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Smokers Creek  Volcanic Subgroup - benmoreite lava (Neab)</sld:Name>
          <sld:Title>Smokers Creek  Volcanic Subgroup - benmoreite lava (Neab)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neab</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEC9BD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Smokers Creek Volcanic Subgroup - basanite lava (Neaa)</sld:Name>
          <sld:Title>Smokers Creek Volcanic Subgroup - basanite lava (Neaa)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neaa</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA38E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Smokers Creek Volcanic Subgroup - hawaiite lava (Neah)</sld:Name>
          <sld:Title>Smokers Creek Volcanic Subgroup - hawaiite lava (Neah)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neah</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA38E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Smokers Creek Volcanic Subgroup - mugearite lava (Neam)</sld:Name>
          <sld:Title>Smokers Creek Volcanic Subgroup - mugearite lava (Neam)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neam</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEC9BD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Smokers Creek Volcanic Subgroup - trachyte lava (Neat)</sld:Name>
          <sld:Title>Smokers Creek Volcanic Subgroup - trachyte lava (Neat)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neat</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEC9E1</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Snake River Tonalite (G437)</sld:Name>
          <sld:Title>Snake River Tonalite (G437)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G437</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#BCA7A7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Snowy Plains Formation (Dams)</sld:Name>
          <sld:Title>Snowy Plains Formation (Dams)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dams</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9C9C9C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Springfield Sandstone (Sxs)</sld:Name>
          <sld:Title>Springfield Sandstone (Sxs)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sxs</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D6B3FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>St Arnaud Group (-Ca)</sld:Name>
          <sld:Title>St Arnaud Group (-Ca)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Ca</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#BF1270</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>St Elmo Granodiorite (G422)</sld:Name>
          <sld:Title>St Elmo Granodiorite (G422)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G422</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#977777</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Stauro Gully Shale plus Split Hill Sandstone plus Bryo Gully Shale (Ocr2)</sld:Name>
          <sld:Title>Stauro Gully Shale plus Split Hill Sandstone plus Bryo Gully Shale (Ocr2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ocr2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#8EFEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Stawell Granite (G379)</sld:Name>
          <sld:Title>Stawell Granite (G379)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G379</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Strathbogie Granite (G217)</sld:Name>
          <sld:Title>Strathbogie Granite (G217)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G217</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Strathbogie Granite aplite phase( G217a)</sld:Name>
          <sld:Title>Strathbogie Granite aplite phase( G217a)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G217a</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8FAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Sub-basaltic sediments (Nxp)</sld:Name>
          <sld:Title>Sub-basaltic sediments (Nxp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nxp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F3E679</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Sub-basaltic sediments( -Pa)</sld:Name>
          <sld:Title>Sub-basaltic sediments( -Pa)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pa</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C3D951</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Sunbury Group (Os)</sld:Name>
          <sld:Title>Sunbury Group (Os)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Os</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#8EFEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Taggerty Subgroup (Dyt)</sld:Name>
          <sld:Title>Taggerty Subgroup (Dyt)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dyt</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFCF00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tailor Creek Tonalite (G365)</sld:Name>
          <sld:Title>Tailor Creek Tonalite (G365)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G365</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF7F7F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tanjil Granodiorite( G237)</sld:Name>
          <sld:Title>Tanjil Granodiorite( G237)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G237</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tarnagulla Granodiorite( G351)</sld:Name>
          <sld:Title>Tarnagulla Granodiorite( G351)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G351</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA7BD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Teddywaddy Granite (G335)</sld:Name>
          <sld:Title>Teddywaddy Granite (G335)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G335</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFD6E0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Thermopylae Conglomerate( Skrt)</sld:Name>
          <sld:Title>Thermopylae Conglomerate( Skrt)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skrt</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECDBFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Thorpdale Volcanic Group( -Put)</sld:Name>
          <sld:Title>Thorpdale Volcanic Group( -Put)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Put</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA83B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tiac Granite (G307)</sld:Name>
          <sld:Title>Tiac Granite (G307)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G307</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEA38E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tobacco Creek Andesite( -Cjt)</sld:Name>
          <sld:Title>Tobacco Creek Andesite( -Cjt)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cjt</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECB8D4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Toole-Be-Wong Granodiorite (G226)</sld:Name>
          <sld:Title>Toole-Be-Wong Granodiorite (G226)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G226</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF537E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Toombullup Ignimbrite (Dtt)</sld:Name>
          <sld:Title>Toombullup Ignimbrite (Dtt)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dtt</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C2C2F2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Torah Granodiorite (G427)</sld:Name>
          <sld:Title>Torah Granodiorite (G427)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G427</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#AD9494</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Torquay Group (Nt)</sld:Name>
          <sld:Title>Torquay Group (Nt)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nt</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F5EDA6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Towanway Tuff (-Cst)</sld:Name>
          <sld:Title>Towanway Tuff (-Cst)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cst</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C83384</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tower Hill Tuff (Nept)</sld:Name>
          <sld:Title>Tower Hill Tuff (Nept)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nept</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FED283</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Trawalla Granite (G311)</sld:Name>
          <sld:Title>Trawalla Granite (G311)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G311</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE003F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Truro Volcanics (-Cmt)</sld:Name>
          <sld:Title>Truro Volcanics (-Cmt)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cmt</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFBE6B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tullamarine Basalt (Nuu)</sld:Name>
          <sld:Title>Tullamarine Basalt (Nuu)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nuu</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8A00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tullaroop Granodiorite (G315)</sld:Name>
          <sld:Title>Tullaroop Granodiorite (G315)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G315</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEC7A6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tuloona Granodiorite (G425)</sld:Name>
          <sld:Title>Tuloona Granodiorite (G425)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G425</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F1E0B3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Two Eyed Creek Granodiorite (G387)</sld:Name>
          <sld:Title>Two Eyed Creek Granodiorite (G387)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G387</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFBECE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tyers Conglomerate (Kott)</sld:Name>
          <sld:Title>Tyers Conglomerate (Kott)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Kott</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#8FFF00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Tynong Granite (G239)</sld:Name>
          <sld:Title>Tynong Granite (G239)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G239</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0057</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Undifferentiated Jamieson Volcanic Group( -Cj1)</sld:Name>
          <sld:Title>Undifferentiated Jamieson Volcanic Group( -Cj1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cj1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#BF1270</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Undifferentiated Ordovician/Silurian sedimentary rocks (Ox)</sld:Name>
          <sld:Title>Undifferentiated Ordovician/Silurian sedimentary rocks (Ox)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ox</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#6AFEFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Unnamed microgabbro sill( -Cid)</sld:Name>
          <sld:Title>Unnamed microgabbro sill( -Cid)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cid</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DA75AC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Unnamed olivine pyroxenite sill( -Cip)</sld:Name>
          <sld:Title>Unnamed olivine pyroxenite sill( -Cip)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cip</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DA75AC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Vereker Granite( G259)</sld:Name>
          <sld:Title>Vereker Granite( G259)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G259</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Violet Town Volcanic Group - rhyodacite (Di2)</sld:Name>
          <sld:Title>Violet Town Volcanic Group - rhyodacite (Di2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Di2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFC983</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Violet Town Volcanic Group - rhyolite (Di1)</sld:Name>
          <sld:Title>Violet Town Volcanic Group - rhyolite (Di1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Di1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFDEB3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wahroonga Breccia (-Cxw)</sld:Name>
          <sld:Title>Wahroonga Breccia (-Cxw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cxw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C83384</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Walhalla Group (Dn)</sld:Name>
          <sld:Title>Walhalla Group (Dn)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dn</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F5F5FD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wando Tonalite (G421)</sld:Name>
          <sld:Title>Wando Tonalite (G421)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G421</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#BCA7A7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wangerrip Group (-Pw)</sld:Name>
          <sld:Title>Wangerrip Group (-Pw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E3EDAD</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wapentake Formation( Sxw)</sld:Name>
          <sld:Title>Wapentake Formation( Sxw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sxw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA7FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Waranga Formation (Dxr)</sld:Name>
          <sld:Title>Waranga Formation (Dxr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dxr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C0C0F1</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Waratah Limestone (Dxw)</sld:Name>
          <sld:Title>Waratah Limestone (Dxw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dxw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C4C4F2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Warburton Granodiorite (G235)</sld:Name>
          <sld:Title>Warburton Granodiorite (G235)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G235</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA6BC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Warrak Formation( -Caw)</sld:Name>
          <sld:Title>Warrak Formation( -Caw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Caw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DA75AC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Warrambat Andesite Breccia( -Cjm)</sld:Name>
          <sld:Title>Warrambat Andesite Breccia( -Cjm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cjm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E08CB9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wartook Sandstone (Skmw)</sld:Name>
          <sld:Title>Wartook Sandstone (Skmw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skmw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E7D3FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Watgania Gap Sandstone (Skrw)</sld:Name>
          <sld:Title>Watgania Gap Sandstone (Skrw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Skrw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D1ABFE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wedderburn Granodiorite (G345)</sld:Name>
          <sld:Title>Wedderburn Granodiorite (G345)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G345</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFD6E0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wellington Volcanic Group( Daw)</sld:Name>
          <sld:Title>Wellington Volcanic Group( Daw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Daw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#7070E0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wennicott Tonalite (G429)</sld:Name>
          <sld:Title>Wennicott Tonalite (G429)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G429</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#AD9494</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Werribee Formation (-Pxe)</sld:Name>
          <sld:Title>Werribee Formation (-Pxe)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pxe</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DFF16B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wescotts Granite (G338)</sld:Name>
          <sld:Title>Wescotts Granite (G338)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G338</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFCAD7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Whalers Bluff Formation (Nxa)</sld:Name>
          <sld:Title>Whalers Bluff Formation (Nxa)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nxa</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F4E98F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Whisky Knob Rhyolite( -Cjs)</sld:Name>
          <sld:Title>Whisky Knob Rhyolite( -Cjs)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cjs</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DD81B3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>White Hills Gravel( -Pxh)</sld:Name>
          <sld:Title>White Hills Gravel( -Pxh)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pxh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CBDE68</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>White Rabbit Diorite (G389)</sld:Name>
          <sld:Title>White Rabbit Diorite (G389)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G389</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF857D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>White Star Sandstone (Dnw)</sld:Name>
          <sld:Title>White Star Sandstone (Dnw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dnw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CDCDF4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Whitelaw Siltstone( Sjw)</sld:Name>
          <sld:Title>Whitelaw Siltstone( Sjw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sjw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C08AFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Whitimaria Granite (G623)</sld:Name>
          <sld:Title>Whitimaria Granite (G623)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G623</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF245B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wild Dog Chert( -Cxi)</sld:Name>
          <sld:Title>Wild Dog Chert( -Cxi)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cxi</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DA75AC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Williamsons Road Serpentinite (-Cow)</sld:Name>
          <sld:Title>Williamsons Road Serpentinite (-Cow)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cow</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#DA75AC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Willimigongong Ignimbrite (Dmw)</sld:Name>
          <sld:Title>Willimigongong Ignimbrite (Dmw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dmw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EBDFD5</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wilson Creek Shale( Sji)</sld:Name>
          <sld:Title>Wilson Creek Shale( Sji)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sji</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D6B3FF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wilsons Promontory Granite (G260)</sld:Name>
          <sld:Title>Wilsons Promontory Granite (G260)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G260</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF245B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wiridjil Gravel (-Pww)</sld:Name>
          <sld:Title>Wiridjil Gravel (-Pww)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Pww</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#EABF96</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wonga Schist (informal) (Dxo)</sld:Name>
          <sld:Title>Wonga Schist (informal) (Dxo)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dxo</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9EBBD7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Woods Point Dyke Swarm( Ywp)</sld:Name>
          <sld:Title>Woods Point Dyke Swarm( Ywp)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ywp</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8F00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Woolamai Granite( G261)</sld:Name>
          <sld:Title>Woolamai Granite( G261)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G261</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF0040</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Woori Yallock Formation( Dny)</sld:Name>
          <sld:Title>Woori Yallock Formation( Dny)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dny</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CDCDF4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Woorinen Formation (Qxw)</sld:Name>
          <sld:Title>Woorinen Formation (Qxw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qxw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFFF3C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Woosang Granite (G628)</sld:Name>
          <sld:Title>Woosang Granite (G628)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G628</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wrens Flat Andesite (-Cjr)</sld:Name>
          <sld:Title>Wrens Flat Andesite (-Cjr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cjr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E6A2C6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wurutwun Formation (Sju)</sld:Name>
          <sld:Title>Wurutwun Formation (Sju)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Sju</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#AE6AFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wycheproof Granite (G332)</sld:Name>
          <sld:Title>Wycheproof Granite (G332)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G332</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFEEF2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Wychitella Granite (G363)</sld:Name>
          <sld:Title>Wychitella Granite (G363)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G363</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF537E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Yamba Formation (Qxy)</sld:Name>
          <sld:Title>Yamba Formation (Qxy)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qxy</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEFE6B</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Yanakie Granite( G254)</sld:Name>
          <sld:Title>Yanakie Granite( G254)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G254</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF3C6D</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Yaugher Volcanic Group (-Py)</sld:Name>
          <sld:Title>Yaugher Volcanic Group (-Py)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Py</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFA93C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Yellingbo Porphyry( Djy)</sld:Name>
          <sld:Title>Yellingbo Porphyry( Djy)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Djy</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#7070E0</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Yeungroon Granite (G362)</sld:Name>
          <sld:Title>Yeungroon Granite (G362)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G362</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF9BB4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>You Yangs Granite (G277)</sld:Name>
          <sld:Title>You Yangs Granite (G277)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G277</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF537E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Ythan Creek Rhyodacite (Dyay)</sld:Name>
          <sld:Title>Ythan Creek Rhyodacite (Dyay)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dyay</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFB453</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>Yungabulla Formation (Neay)</sld:Name>
          <sld:Title>Yungabulla Formation (Neay)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Neay</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEE6E1</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>alluvial terrace deposits( Qa3)</sld:Name>
          <sld:Title>alluvial terrace deposits( Qa3)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qa3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#C0FEB4</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>alluvial terrace deposits( Qa5)</sld:Name>
          <sld:Title>alluvial terrace deposits( Qa5)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qa5</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A1FE8F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>alluvial terraces (Qa2)</sld:Name>
          <sld:Title>alluvial terraces (Qa2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qa2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CCFEC3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>alluvium (Qa1)</sld:Name>
          <sld:Title>alluvium (Qa1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qa1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#ECFFE8</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>alluvium and colluvium( Qb)</sld:Name>
          <sld:Title>alluvium and colluvium( Qb)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qb</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B6FEA8</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>anthropogenic deposits (Qh)</sld:Name>
          <sld:Title>anthropogenic deposits (Qh)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qh</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9C9C9C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>bagshot( G293)</sld:Name>
          <sld:Title>bagshot( G293)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>G293</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FECABE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>basalt-derived slump deposits (Qc6)</sld:Name>
          <sld:Title>basalt-derived slump deposits (Qc6)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qc6</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#71FF43</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>coastal dune deposits (Qdl1)</sld:Name>
          <sld:Title>coastal dune deposits (Qdl1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qdl1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEFE9A</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>coastal lagoon deposits (Qg)</sld:Name>
          <sld:Title>coastal lagoon deposits (Qg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#B6FEA8</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>colluvium (Qc1)</sld:Name>
          <sld:Title>colluvium (Qc1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qc1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D1FFAB</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>dam wall deposits (Qhd)</sld:Name>
          <sld:Title>dam wall deposits (Qhd)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qhd</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9C9C9C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>dissected colluvium (Qc5)</sld:Name>
          <sld:Title>dissected colluvium (Qc5)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qc5</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#8BFF5F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>dissected granite-derived colluvium (Nc4)</sld:Name>
          <sld:Title>dissected granite-derived colluvium (Nc4)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nc4</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F3E683</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>dune deposits (Qd2)</sld:Name>
          <sld:Title>dune deposits (Qd2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qd2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A2E6C6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>duricrust (Czf)</sld:Name>
          <sld:Title>duricrust (Czf)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Czf</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFFFA7</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>dyke, aplite (Y-ap)</sld:Name>
          <sld:Title>dyke, aplite (Y-ap)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Y-ap</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF00C5</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>dyke, felsic (Y-F)</sld:Name>
          <sld:Title>dyke, felsic (Y-F)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Y-F</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF6BFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>dyke, granite (Y-gr)</sld:Name>
          <sld:Title>dyke, granite (Y-gr)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Y-gr</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FE003F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>dykes and plugs (Y-Mzv)</sld:Name>
          <sld:Title>dykes and plugs (Y-Mzv)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Y-Mzv</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF8F00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>granite-derived colluvium (Qc4)</sld:Name>
          <sld:Title>granite-derived colluvium (Qc4)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qc4</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9CFF72</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>granodiorite porphyry (Dmg)</sld:Name>
          <sld:Title>granodiorite porphyry (Dmg)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dmg</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FF83A2</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>incised alluvium (Na)</sld:Name>
          <sld:Title>incised alluvium (Na)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Na</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FEFEA6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>incised colluvium( Nc1)</sld:Name>
          <sld:Title>incised colluvium( Nc1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nc1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F7F0B3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>incised granite-derived colluvium (Nc2)</sld:Name>
          <sld:Title>incised granite-derived colluvium (Nc2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nc2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F7F0B3</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>inland dune deposits (Qd1)</sld:Name>
          <sld:Title>inland dune deposits (Qd1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qd1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#5FD49F</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>intrusive breccia (Dk)</sld:Name>
          <sld:Title>intrusive breccia (Dk)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Dk</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D5D5E6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>lake deposits (Ql2)</sld:Name>
          <sld:Title>lake deposits (Ql2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ql2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#73DFFF</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>lunette and lake deposits (Ql)</sld:Name>
          <sld:Title>lunette and lake deposits (Ql)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ql</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A0FE8E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>lunette deposits (Ql1)</sld:Name>
          <sld:Title>lunette deposits (Ql1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Ql1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#A0FE8E</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>migmatite (-Cmgm)</sld:Name>
          <sld:Title>migmatite (-Cmgm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cmgm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CE4991</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>mullock heaps (Qhm)</sld:Name>
          <sld:Title>mullock heaps (Qhm)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qhm</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9C9C9C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>quarry waste deposits (Qhq)</sld:Name>
          <sld:Title>quarry waste deposits (Qhq)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qhq</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#9C9C9C</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>quartzofeldspathic schist with pegmatite (-Cmgq)</sld:Name>
          <sld:Title>quartzofeldspathic schist with pegmatite (-Cmgq)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cmgq</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E6A2C6</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>schist, amphibolite and calc-silicate (-Cmgu)</sld:Name>
          <sld:Title>schist, amphibolite and calc-silicate (-Cmgu)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cmgu</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E08CB9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>scree deposits (Qc2)</sld:Name>
          <sld:Title>scree deposits (Qc2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qc2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#BFFF98</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>serpentinite( -Cj2)</sld:Name>
          <sld:Title>serpentinite( -Cj2)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>-Cj2</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#E08CB9</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>slump deposits (Qc3)</sld:Name>
          <sld:Title>slump deposits (Qc3)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qc3</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#AEFF85</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>source-bordering dune deposits (Qdi)</sld:Name>
          <sld:Title>source-bordering dune deposits (Qdi)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qdi</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#D9F5E8</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>swamp and lake deposits (Qm1)</sld:Name>
          <sld:Title>swamp and lake deposits (Qm1)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qm1</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#F0FFEE</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>waste deposits (Qhw)</sld:Name>
          <sld:Title>waste deposits (Qhw)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Qhw</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#CCCCCC</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
        <sld:Rule>
          <sld:Name>windblown silt (Nxl)</sld:Name>
          <sld:Title>windblown silt (Nxl)</sld:Title>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>gsmltv:genericSymbolizer</ogc:PropertyName>
              <ogc:Literal>Nxl</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <sld:PolygonSymbolizer>
            <sld:Fill>
              <sld:CssParameter name="fill">#FFEF00</sld:CssParameter>
              <sld:CssParameter name="fill-opacity">1</sld:CssParameter>
            </sld:Fill>
          </sld:PolygonSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>