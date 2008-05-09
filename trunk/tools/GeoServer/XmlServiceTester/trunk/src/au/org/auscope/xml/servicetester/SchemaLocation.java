package au.org.auscope.xml.servicetester;

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
