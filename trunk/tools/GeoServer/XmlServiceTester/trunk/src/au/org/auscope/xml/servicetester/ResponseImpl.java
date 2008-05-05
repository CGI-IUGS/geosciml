package au.org.auscope.xml.servicetester;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;

import org.apache.xerces.parsers.SAXParser;
import org.apache.xerces.util.XMLCatalogResolver;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

public class ResponseImpl implements Response {

    private File catalogFile;
    private URI validationNamespaceUri;
    private File validationSchemaFile;
    private LoggingErrorHandler errorHandler = new LoggingErrorHandler();

    public ResponseImpl(File catalogFile, URI validationNamespace,
            File validationSchemaFile) {
        this.catalogFile = catalogFile;
        this.validationNamespaceUri = validationNamespace;
        this.validationSchemaFile = validationSchemaFile;
    }

    private void configureReader(XMLReader reader) {
        try {
            reader.setFeature("http://xml.org/sax/features/validation", true);
            reader.setFeature(
                    "http://apache.org/xml/features/validation/schema", true);
            reader.setFeature("http://apache.org/xml/features/"
                    + "validation/schema-full-checking", true);
            reader.setProperty("http://apache.org/xml/properties/"
                    + "schema/external-schemaLocation", getSchemaLocation());
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

    private String getSchemaLocation() {
        return validationNamespaceUri.toString() + " "
                + validationSchemaFile.toString();
    }

    public void consume(InputStream inputStream) {
        XMLReader reader = new SAXParser();
        configureReader(reader);
        reader.setErrorHandler(errorHandler);
        try {
            reader.parse(new InputSource(inputStream));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        XmlServiceTester.getLogger().info(
                "Diagnostic count: " + errorHandler.getCount());
        if (errorHandler.getCount() == 0) {
            XmlServiceTester.getLogger().info("Response was schema-valid");
        } else {
            XmlServiceTester.getLogger().error("Response was not schema-valid");
        }
    }

}
