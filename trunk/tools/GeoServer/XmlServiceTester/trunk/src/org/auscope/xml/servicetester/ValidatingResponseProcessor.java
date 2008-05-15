package org.auscope.xml.servicetester;

import java.io.File;
import java.io.InputStream;
import java.net.URI;

import org.apache.commons.logging.Log;
import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.util.XMLCatalogResolver;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

public class ValidatingResponseProcessor implements ResponseProcessor {

    private final File catalogFile;
    private final String schemaLocationString;

    public ValidatingResponseProcessor(File catalogFile,
            String schemaLocationString) {
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

    public void process(Response response, Log log) {
        XMLReader reader = new SAXParser();
        configureReader(reader);
        reader.setErrorHandler(new LoggingErrorHandler(log));
        try {
            reader.parse(new InputSource(response.getInputStream()));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
