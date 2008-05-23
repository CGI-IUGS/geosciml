package org.auscope.xml.servicetester;

import java.io.File;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.util.XMLCatalogResolver;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

public class ValidatingResponseProcessor implements ResponseProcessor {

    private final File catalogFile;
    private final String schemaLocationString;
    private final String noNamespaceSchemaLocationString;

    public ValidatingResponseProcessor(File catalogFile,
            List<SchemaLocation> schemaLocations) {
        this.catalogFile = catalogFile;
        this.schemaLocationString = SchemaLocation
                .buildSchemaLocationString(schemaLocations);
        this.noNamespaceSchemaLocationString = SchemaLocation
                .buildNoNamespaceSchemaLocationString(schemaLocations);
    }

    private void configureReader(XMLReader reader) {
        try {
            reader.setFeature("http://xml.org/sax/features/validation", true);
            reader.setFeature(
                    "http://apache.org/xml/features/validation/schema", true);
            reader.setFeature("http://apache.org/xml/features/"
                    + "validation/schema-full-checking", true);
            if (schemaLocationString != null) {
                reader.setProperty("http://apache.org/xml/properties/"
                        + "schema/external-schemaLocation",
                        schemaLocationString);
            }
            if (noNamespaceSchemaLocationString != null) {
                reader.setProperty("http://apache.org/xml/properties/"
                        + "schema/external-noNamespaceSchemaLocation",
                        noNamespaceSchemaLocationString);
            }
            if (catalogFile != null) {
                XMLCatalogResolver resolver = new XMLCatalogResolver();
                resolver
                        .setCatalogList(new String[] { catalogFile.toString() });
                reader.setProperty("http://apache.org/xml/properties"
                        + "/internal/entity-resolver", resolver);
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void process(Response response, Log log,
            ContentHandler contentHandler, ErrorHandler errorHandler) {
        XMLReader reader = new SAXParser();
        configureReader(reader);
        reader.setContentHandler(contentHandler);
        reader.setErrorHandler(errorHandler);
        try {
            reader.parse(new InputSource(response.getInputStream()));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
