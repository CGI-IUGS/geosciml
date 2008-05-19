package org.auscope.xml.servicetester;

import java.io.File;
import java.net.URI;
import java.net.URL;

public class SchemaLocation {

    private final URI namespaceUri;
    private final URL schemaUrl;
    private final File schemaFile;

    public SchemaLocation(URI namespaceUri, URL schemaUrl, File schemaFile) {
        this.namespaceUri = namespaceUri;
        this.schemaUrl = schemaUrl;
        this.schemaFile = schemaFile;
        if (namespaceUri == null) {
            throw new IllegalArgumentException(
                    "Must specify namespace (no-namespace not supported)");
        }
        if (schemaUrl == null && schemaFile == null) {
            throw new IllegalArgumentException(
                    "Must specify either schema URL or schema file");
        } else if (schemaUrl != null && schemaFile != null) {
            throw new IllegalArgumentException(
                    "Cannot specify both schema URL and schema file");
        }
    }

    public URI getNamespaceUri() {
        return namespaceUri;
    }

    public String getSchema() {
        if (schemaUrl != null) {
            return schemaUrl.toString();
        } else {
            return schemaFile.toString();
        }

    }

    /**
     * Return namespace/schema as a whitespace-separated String
     * 
     * @return
     */
    public String getSchemaLocation() {
        return getNamespaceUri() + " " + getSchema();
    }

}
