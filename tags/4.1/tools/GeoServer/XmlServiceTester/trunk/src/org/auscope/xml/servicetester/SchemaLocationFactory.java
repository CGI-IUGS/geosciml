package org.auscope.xml.servicetester;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

import org.auscope.xml.servicetester.generated.SchemaLocationType;
import org.auscope.xml.servicetester.generated.TestSuiteType;

/**
 * Factory to hide the nastiness of building schema locations from the JAXB
 * deserialised test-suite file.
 * 
 */
public class SchemaLocationFactory {

    /**
     * Prevent instantiation.
     */
    private SchemaLocationFactory() {
    }

    /**
     * Build a schema location from deserialised test-suite objects.
     * 
     * @param suite
     * @param configType
     * @param locationType
     * @return a scheme location
     */
    public static SchemaLocation build(TestSuite suite,
            TestSuiteType configType, SchemaLocationType locationType) {
        URI namespaceUri = buildNamespaceUri(locationType.getNamespaceUri());
        URL schemaUrl = buildSchemaUrl(locationType.getSchemaUrl());
        File schemaFile = buildSchemaFile(suite, locationType.getSchemaFile());
        return SchemaLocation.buildSchemaLocation(namespaceUri, schemaUrl,
                schemaFile);
    }

    /**
     * Build a namespce URI from a string, returning null if the string is null
     * or empty or only whitespace.
     * 
     * @param namespace
     *                namespace string, or null
     * @return the namespace URI, or null
     */
    private static URI buildNamespaceUri(String namespace) {
        // null for missing, empty string for empty tag
        if (namespace == null || namespace.trim().length() == 0) {
            return null;
        } else {
            try {
                return new URI(namespace);
            } catch (URISyntaxException e) {
                throw new RuntimeException("Invalid namespace URI: "
                        + namespace, e);
            }
        }
    }

    /**
     * Build a schema URL from a string, returning null if the string is null.
     * 
     * @param schemaUrlString
     *                string representation or URL, or null
     * @return schema URL or null
     */
    private static URL buildSchemaUrl(String schemaUrlString) {
        if (schemaUrlString == null) {
            return null;
        } else {
            try {
                return new URL(schemaUrlString);
            } catch (MalformedURLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    /**
     * Build an absolute schema file from a relative URI string. Null is
     * returned if the URI string is null.
     * 
     * <p>
     * 
     * File path provided relative to test-suite file, if a test-suite path is
     * known is one. Returned file path is absolute.
     * 
     * @param suite
     * @param schemaFileString
     *                relative URI string
     * @return absolute schema file, or null
     */
    private static File buildSchemaFile(TestSuite suite, String schemaFileString) {
        if (schemaFileString == null) {
            return null;
        } else {
            File schemaFile = suite.resolve(schemaFileString);
            if (schemaFile == null || !schemaFile.canRead()) {
                throw new RuntimeException("Cannot read schema file "
                        + schemaFile);
            } else {
                return schemaFile;
            }
        }
    }

}
