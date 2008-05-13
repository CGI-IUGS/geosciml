package org.auscope.xml.servicetester;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

import org.auscope.xml.servicetester.generated.SchemaLocationType;
import org.auscope.xml.servicetester.generated.TestSuiteType;

public class SchemaLocationFactory {

    private static final SchemaLocationFactory INSTANCE = new SchemaLocationFactory();

    public static SchemaLocationFactory getInstance() {
        return INSTANCE;
    }

    private SchemaLocationFactory() {
    }

    public SchemaLocation build(TestSuite suite, TestSuiteType configType,
            SchemaLocationType locationType) {
        URI namespaceUri = buildNamespaceUri(locationType.getNamespaceUri());
        URL schemaUrl = buildSchemaUrl(locationType.getSchemaUrl());
        File schemaFile = buildSchemaFile(suite, locationType.getSchemaFile());
        return new SchemaLocation(namespaceUri, schemaUrl, schemaFile);
    }

    private URI buildNamespaceUri(String namespace) {
        try {
            return new URI(namespace);
        } catch (URISyntaxException e) {
            throw new RuntimeException("Invalid namespace URI: " + namespace, e);
        }

    }

    private URL buildSchemaUrl(String schemaUrlString) {
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

    private File buildSchemaFile(TestSuite suite, String schemaFileString) {
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
