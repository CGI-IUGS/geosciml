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

/**
 * A response processor that performs schema-validation on on a {@link Response}.
 * 
 * <p>
 * 
 * Only the first no-namespace schema location is used.
 * 
 * <p>
 * 
 * Namespace schema locations are supplied to the parser in order. The parser
 * will use the first match for each namespace.
 * 
 */
public class ValidatingResponseProcessor implements ResponseProcessor {

    /**
     * File containing OASIS Catalog of schemas, or null if none. Used to
     * satisfy requests for matching schema locations, instead of fetching from
     * the web.
     */
    private final File catalogFile;

    /**
     * Whitespace separated list of namespace/schema-location pairs, in the form
     * of xsi:schemaLocation. These locations override the locations specified
     * in the document.
     */
    private final String schemaLocationString;

    /**
     * The no-namespace schema location, or null if none. This location
     * overrides any non-namespace schema location specified in the document.
     */
    private final String noNamespaceSchemaLocationString;

    /**
     * Constructor.
     * 
     * @param catalogFile
     *                OASIS catalog file used to resolve entities
     * @param schemaLocations
     *                list of {@link SchemaLocation} that overrides the
     *                schemaLocation/noNamespaceSchemaLocation of the response
     *                document
     */
    public ValidatingResponseProcessor(File catalogFile,
            List<SchemaLocation> schemaLocations) {
        this.catalogFile = catalogFile;
        this.schemaLocationString = SchemaLocation
                .buildSchemaLocationString(schemaLocations);
        this.noNamespaceSchemaLocationString = SchemaLocation
                .buildNoNamespaceSchemaLocationString(schemaLocations);
    }

    /**
     * Set features and properties on the parser.
     * 
     * @param reader
     *                the XML reader to modify
     */
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

    /*
     * (non-Javadoc)
     * 
     * @see org.auscope.xml.servicetester.ResponseProcessor#process(org.auscope.xml.servicetester.Response,
     *      org.apache.commons.logging.Log, org.xml.sax.ContentHandler,
     *      org.xml.sax.ErrorHandler)
     */
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
