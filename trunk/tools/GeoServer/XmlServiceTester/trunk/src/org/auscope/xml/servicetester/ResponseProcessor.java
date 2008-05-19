package org.auscope.xml.servicetester;

import java.io.File;

import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.util.XMLCatalogResolver;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;

public class ResponseProcessor {

    private final File catalogFile;
    private final String schemaLocationString;

    public ResponseProcessor(File catalogFile, String schemaLocationString) {
        this.catalogFile = catalogFile;
        this.schemaLocationString = schemaLocationString;
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
                        getSchemaLocationString());
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

    private String getSchemaLocationString() {
        return schemaLocationString;
    }

    public void process(Response response, ContentHandler contentHandler,
            ErrorHandler errorHandler) {
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
