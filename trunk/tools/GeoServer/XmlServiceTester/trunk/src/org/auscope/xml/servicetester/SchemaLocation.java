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

    /**
     * Schema location URL.
     * 
     * @param namespaceUri
     *                namespace of schema
     * @param schemaUrl
     *                schema location URL
     */
    public SchemaLocation(URI namespaceUri, URL schemaUrl) {
        this(namespaceUri, toURI(schemaUrl));
    }

    /**
     * Schema location file.
     * 
     * @param namespaceUri
     *                namespace of schema
     * @param schemaFile
     *                schema location File
     */
    public SchemaLocation(URI namespaceUri, File schemaFile) {
        this(namespaceUri, schemaFile.toURI());
    }

    /**
     * Schema location with either URL or file. Exactly one of schemaUrl or
     * schemaFile must be non-null.
     * 
     * @param namespaceUri
     *                namespace of schema
     * @param schemaUrl
     *                schema location URL
     * @param schemaFile
     *                schema location File
     */
    private SchemaLocation(URI namespaceUri, URI schemaUri) {
        this.namespaceUri = namespaceUri;
        this.schemaUri = schemaUri;
        if (namespaceUri == null) {
            throw new IllegalArgumentException(
                    "No-namespace schema location not supported");
        } else if (isEmpty(namespaceUri)) {
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
        return namespaceUri.toString() + " " + schemaUri.toString();
    }

    /**
     * Return URL as a URI, with no checked exception.
     * 
     * @param url
     * @return
     */
    private static URI toURI(URL url) {
        try {
            return url.toURI();
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Test if a URI is empty or consists only of whitespace.
     * 
     * @param uri
     * @return true if empty or whitespace
     */
    private static boolean isEmpty(URI uri) {
        XmlServiceTester.getLog().trace("***"+uri+"***");
        return uri.toString().trim().length() == 0;
    }

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

    public static String buildNoNamespaceSchemaLocationString(
            List<SchemaLocation> schemaLocations) {
        for (SchemaLocation schemaLocation : schemaLocations) {
            if (schemaLocation.isNoNamespace()) {
                schemaLocation.getSchemaLocationString();
            }
        }
        return null;
    }

    public static SchemaLocation buildSchemaLocation(URI namespaceUri,
            URL schemaUrl, File schemaFile) {
        if (schemaUrl != null && schemaFile == null) {
            return new SchemaLocation(namespaceUri, schemaUrl);
        } else if (schemaUrl == null && schemaFile != null) {
            return new SchemaLocation(namespaceUri, schemaFile);
        } else {
            throw new RuntimeException("Must specify one of schema URL"
                    + " or schema file for schema location");
        }
    }

}
