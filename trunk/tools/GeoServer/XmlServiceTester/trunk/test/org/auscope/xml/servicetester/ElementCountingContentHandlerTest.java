package org.auscope.xml.servicetester;

import org.xml.sax.helpers.DefaultHandler;

import junit.framework.TestCase;

public class ElementCountingContentHandlerTest extends TestCase {

    private static String OWS = "http://www.opengis.net/ows";
    private static String WFS = "http://www.opengis.net/wfs";
    private static String GSML = "urn:cgi:xmlns:CGI:GeoSciML:2.0";

    public void testCount() throws Exception {
        ElementCounter elementCounter = new ElementCounter();
        ElementCountingContentHandler handler = new ElementCountingContentHandler(
                new DefaultHandler(), elementCounter);
        handler.startElement(WFS, "FeatureCollection", null, null);
        handler.startElement(GSML, "MappedFeature", null, null);
        handler.startElement(GSML, "shape", null, null);
        handler.startElement(GSML, "MappedFeature", null, null);
        handler.startElement(GSML, "shape", null, null);
        assertEquals(0, elementCounter.getElementCount(OWS, "ExceptionReport"));
        assertEquals(1, elementCounter
                .getElementCount(WFS, "FeatureCollection"));
        assertEquals(2, elementCounter.getElementCount(GSML, "MappedFeature"));
    }

}
