package org.auscope.xml.servicetester;

import java.io.File;
import java.net.URI;
import java.net.URL;

import junit.framework.TestCase;

public class SchemaLocationTest extends TestCase {

    /* common test data */

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

    /**
     * Test conversion of URL schema location.
     */
    public void testSchemaUrl() {
        SchemaLocation schemaLocation = SchemaLocation.buildSchemaLocation(
                NAMESPACE_URI, SCHEMA_URL);
        assertEquals(NAMESPACE_URI_STRING + " " + SCHEMA_URL_STRING,
                schemaLocation.getSchemaLocationString());
    }

    /**
     * Test conversion of file schema location.
     */
    public void testSchemaFile() {
        SchemaLocation schemaLocation = SchemaLocation.buildSchemaLocation(
                NAMESPACE_URI, SCHEMA_FILE);
        String schemaLocationString = schemaLocation.getSchemaLocationString();
        // file becomes absolute, so test the ends
        assertTrue(schemaLocationString.startsWith(NAMESPACE_URI_STRING
                + " file:/"));
        assertTrue(schemaLocationString.endsWith(SCHEMA_FILE_STRING.replace(
                "../", "")));
    }

    /**
     * Test exception thrown for null schema file.
     */
    public void testNullSchemaFile() {
        try {
            SchemaLocation.buildSchemaLocation(NAMESPACE_URI, (File) null);
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    /**
     * Test exception thrown for null schema file.
     */
    public void testNullSchemaUrl() {
        try {
            SchemaLocation.buildSchemaLocation(NAMESPACE_URI, (URL) null);
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    /**
     * Test exception thrown for empty schema file path.
     */
    public void testEmptySchemaFile() {
        try {
            SchemaLocation.buildSchemaLocation(NAMESPACE_URI, new File(""));
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    /**
     * Test exception thrown for whitespace schema file path.
     */
    public void testBlankSchemaFile() {
        try {
            SchemaLocation.buildSchemaLocation(NAMESPACE_URI, new File(" "));
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

    /**
     * Test conversion of no-namespace schema file.
     */
    public void testNoNameSpaceSchemaUrl() {
        SchemaLocation schemaLocation = SchemaLocation.buildSchemaLocation(
                null, SCHEMA_URL);
        String noNamespaceSchemaLocationString = schemaLocation
                .getNoNamespaceSchemaLocationString();
        assertEquals(SCHEMA_URL_STRING, noNamespaceSchemaLocationString);
    }

    /**
     * Test conversion of no-namespace schema URL.
     */
    public void testNoNameSpaceSchemaFile() {
        SchemaLocation schemaLocation = SchemaLocation.buildSchemaLocation(
                null, SCHEMA_FILE);
        String noNamespaceSchemaLocationString = schemaLocation
                .getNoNamespaceSchemaLocationString();
        // file becomes absolute, so test the end
        assertTrue(noNamespaceSchemaLocationString.endsWith(SCHEMA_FILE_STRING
                .replace("../", "")));
    }

}
