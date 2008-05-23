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
                SCHEMA_URL);
        assertEquals(NAMESPACE_URI_STRING + " " + SCHEMA_URL_STRING,
                schemaLocation.getSchemaLocationString());
    }

    public void testSchemaFile() {
        SchemaLocation schemaLocation = new SchemaLocation(NAMESPACE_URI,
                SCHEMA_FILE);
        String schemaLocationString = schemaLocation.getSchemaLocationString();
        // file becomes absolute, so test the ends
        assertTrue(schemaLocationString.startsWith(NAMESPACE_URI_STRING
                + " file:/"));
        assertTrue(schemaLocationString.endsWith(SCHEMA_FILE_STRING.replace(
                "../", "")));
    }

    public void testNullSchemaFile() {
        try {
            new SchemaLocation(NAMESPACE_URI, (File) null);
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    public void testNullSchemaUrl() {
        try {
            new SchemaLocation(NAMESPACE_URI, (URL) null);
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    public void testEmptySchemaFile() {
        try {
            new SchemaLocation(NAMESPACE_URI, new File(""));
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    public void testBlankSchemaFile() {
        try {
            new SchemaLocation(NAMESPACE_URI, new File(" "));
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    public void testNoNameSpaceUrl() {
        try {
            new SchemaLocation(null, SCHEMA_URL);
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    public void testNoNameSpaceFile() {
        try {
            new SchemaLocation(null, SCHEMA_FILE);
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

}
