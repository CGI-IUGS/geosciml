package org.auscope.xml.servicetester;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;

/**
 * Represents a schema location that maps a namespace to a URL or file where the
 * schema document can be found.
 */
public class SchemaLocation {

    /**
     * namespace of schema
     */
    private final URI namespaceUri;

    /**
     * schema location URI
     */
    private final URI schemaUri;

    private SchemaLocation(URI namespaceUri, URI schemaUri) {
        this.namespaceUri = namespaceUri;
        this.schemaUri = schemaUri;
        if (namespaceUri != null && isEmpty(namespaceUri)) {
            throw new IllegalArgumentException(
                    "Empty namespace URI for schema location");
        }
        if (schemaUri == null) {
            throw new IllegalArgumentException(
                    "Missing schema URI for schema location");
        } else if (isEmpty(schemaUri)) {
            throw new IllegalArgumentException(
                    "Empty schema URI for schema location");
        }
    }

    private boolean isNoNamespace() {
        return namespaceUri == null;
    }

    /**
     * Return namespace/schema as a whitespace-separated String
     * 
     * @return
     */
    public String getSchemaLocationString() {
        if (isNoNamespace()) {
            throw new RuntimeException("Cannot get schema location string"
                    + " for no-namespace schema location");
        } else {
            return namespaceUri.toString() + " " + schemaUri.toString();
        }
    }

    public String getNoNamespaceSchemaLocationString() {
        if (!isNoNamespace()) {
            throw new RuntimeException(
                    "Cannot get no-namespace schema location string"
                            + " for namespace schema location");
        } else {
            return schemaUri.toString();
        }
    }

    /**
     * Test if a URI is empty or consists only of whitespace.
     * 
     * @param uri
     * @return true if empty or whitespace
     */
    private static boolean isEmpty(URI uri) {
        return uri.toString().trim().length() == 0;
    }

    /**
     * Build a space-separated namespace schema location string
     * 
     * @param schemaLocations
     * @return namespace schema location string or null if none
     */
    public static String buildSchemaLocationString(
            List<SchemaLocation> schemaLocations) {
        StringBuffer stringBuffer = null;
        for (SchemaLocation schemaLocation : schemaLocations) {
            if (!schemaLocation.isNoNamespace()) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                } else {
                    stringBuffer.append(" ");
                }
                stringBuffer.append(schemaLocation.getSchemaLocationString());
            }
        }
        if (stringBuffer == null) {
            return null;
        } else {
            return stringBuffer.toString();
        }
    }

    /**
     * @param schemaLocations
     * @return no-namespace schema location string, or null if none
     */
    public static String buildNoNamespaceSchemaLocationString(
            List<SchemaLocation> schemaLocations) {
        for (SchemaLocation schemaLocation : schemaLocations) {
            if (schemaLocation.isNoNamespace()) {
                schemaLocation.getNoNamespaceSchemaLocationString();
            }
        }
        return null;
    }

    /**
     * Build schema location with either URL or file. Exactly one of schemaUrl
     * or schemaFile must be non-null.
     * 
     * @param namespaceUri
     *                namespace of schema or null if none
     * @param schemaUrl
     *                schema location URL
     * @param schemaFile
     *                schema location File
     */
    public static SchemaLocation buildSchemaLocation(URI namespaceUri,
            URL schemaUrl, File schemaFile) {
        if (schemaUrl != null && schemaFile == null) {
            return buildSchemaLocation(namespaceUri, schemaUrl);
        } else if (schemaUrl == null && schemaFile != null) {
            return buildSchemaLocation(namespaceUri, schemaFile);
        } else {
            throw new RuntimeException("Must specify one of schema URL"
                    + " or schema file for schema location");
        }
    }

    /**
     * Build schema location withURL.
     * 
     * @param namespaceUri
     *                namespace of schema or null if none
     * @param schemaUrl
     *                schema location URL
     */
    public static SchemaLocation buildSchemaLocation(URI namespaceUri,
            URL schemaUrl) {
        try {
            return new SchemaLocation(namespaceUri, schemaUrl.toURI());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Build schema location with file.
     * 
     * @param namespaceUri
     *                namespace of schema or null if none
     * @param schemaFile
     *                schema location File
     */
    public static SchemaLocation buildSchemaLocation(URI namespaceUri,
            File schemaFile) {
        if (schemaFile.getPath().trim().length() == 0) {
            throw new RuntimeException("Empty schema file path");
        } else {
            return new SchemaLocation(namespaceUri, schemaFile.toURI());
        }
    }

}
