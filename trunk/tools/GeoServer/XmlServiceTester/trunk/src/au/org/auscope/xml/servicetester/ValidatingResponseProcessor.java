package au.org.auscope.xml.servicetester;

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
    private final URI validationNamespaceUri;
    private final File validationSchemaFile;

    public ValidatingResponseProcessor(File catalogFile,
            URI validationNamespace, File validationSchemaFile) {
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

    public void process(InputStream inputStream, Log log) {
        XMLReader reader = new SAXParser();
        configureReader(reader);
        reader.setErrorHandler(new LoggingErrorHandler(log));
        try {
            reader.parse(new InputSource(inputStream));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public String toString() {
        return "Response: validation for namespace " + validationNamespaceUri
                + " against schema " + validationSchemaFile;
    }

}
