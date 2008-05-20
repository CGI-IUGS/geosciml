package org.auscope.xml.servicetester;

import java.io.File;
import java.net.URI;
import java.net.URL;

import junit.framework.TestCase;

public class SchemaLocationTest extends TestCase {

    private static final String NAMESPACE_URI_STRING = "urn:example";
    private static final String SCHEMA_URL_STRING = "http://example.org/schemas/example.xsd";
    private static final String SCHEMA_FILE_STRING = "../../schemas/example.xsd";

    private static final URI NAMESPACE_URI;
    private static final URL SCHEMA_URL;
    private static final File SCHEMA_FILE;

    static {
        try {
            NAMESPACE_URI = new URI("urn:example");
            SCHEMA_URL = new URL("http://example.org/schemas/example.xsd");
            SCHEMA_FILE = new File("../../schemas/example.xsd");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void testSchemaUrl() {
        SchemaLocation schemaLocation = new SchemaLocation(NAMESPACE_URI,
                SCHEMA_URL, null);
        assertEquals(NAMESPACE_URI_STRING + " " + SCHEMA_URL_STRING,
                schemaLocation.getSchemaLocation());
    }

    public void testSchemaFile() {
        SchemaLocation schemaLocation = new SchemaLocation(NAMESPACE_URI, null,
                SCHEMA_FILE);
        assertEquals(NAMESPACE_URI_STRING + " " + SCHEMA_FILE_STRING,
                schemaLocation.getSchemaLocation());
    }

    public void testBoth() {
        try {
            new SchemaLocation(NAMESPACE_URI, SCHEMA_URL, SCHEMA_FILE);
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    public void testNeither() {
        try {
            new SchemaLocation(NAMESPACE_URI, null, null);
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    public void testNoNameSpace() {
        try {
            new SchemaLocation(null, SCHEMA_URL, null);
            new SchemaLocation(null, null, SCHEMA_FILE);
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

}
