package org.auscope.xml.servicetester;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.JAXBElement;

import org.auscope.xml.servicetester.generated.AssertionType;
import org.auscope.xml.servicetester.generated.ResponseType;
import org.auscope.xml.servicetester.generated.SchemaLocationType;
import org.auscope.xml.servicetester.generated.TestSuiteType;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.helpers.DefaultHandler;

/**
 * Factory to build a {@link ResponseProcessorManager} from the options bound by
 * JAXB from the test-suite file.
 * 
 */
public class ResponseProcessorManagerFactory {

    /**
     * Prevent instantiation.
     */
    private ResponseProcessorManagerFactory() {
    }

    /**
     * Build a response processor manager from deserialised test-suite file
     * 
     * @param suite
     * @param suiteType
     * @param responseType
     * @return
     */
    public static ResponseProcessorManager build(TestSuite suite,
            TestSuiteType suiteType, ResponseType responseType) {
        /*
         * ResponseProcessor form a call stack. At the bottom must be a
         * ValidatingResponseProcessor to do the validation.
         */
        File catalogFile = buildCatalogFile(suite, suiteType);
        List<SchemaLocation> schemaLocations = buildSchemaLocations(suite,
                suiteType, responseType);
        ResponseProcessor responseProcessor = new ValidatingResponseProcessor(
                catalogFile, schemaLocations);
        /*
         * If an output-file is requested, wrap the content and error handlers
         * with those provided by an AnnotatingResponseProcessor, and add it to
         * the call stack by wrapping the ValidatingResponseProcessor with it.
         */
        ContentHandler contentHandler;
        ErrorHandler errorHandler;
        File outputFile = buildOutputFile(suite, responseType);
        if (outputFile == null) {
            DefaultHandler defaultHandler = new DefaultHandler();
            contentHandler = defaultHandler;
            errorHandler = defaultHandler;
        } else {
            AnnotatingResponseProcessor annotatingResponseProcessor = new AnnotatingResponseProcessor(
                    responseProcessor, outputFile);
            responseProcessor = annotatingResponseProcessor;
            contentHandler = annotatingResponseProcessor.getContentHandler();
            errorHandler = annotatingResponseProcessor.getErrorHandler();
        }
        /*
         * If one or more element-count-assertion requested, wrap the processing
         * stack with an ElementCountAssertingResponseProcessor.
         */
        List<ElementCountAssertion> elementCountAssertions = buildElementCountAssertions(responseType);
        if (!elementCountAssertions.isEmpty()) {
            responseProcessor = new ElementCountAssertingResponseProcessor(
                    responseProcessor, elementCountAssertions);
        }
        /*
         * Will need further wrapping to inject the log when it becomes
         * available, so use ResponseProcessorManager to hold the pieces
         * required.
         */
        return new ResponseProcessorManager(responseProcessor, contentHandler,
                errorHandler);
    }

    /**
     * Extract catalog-file, and validate that it exists and is readable.
     * 
     * @param suite
     * @param suiteType
     * @return catalog file, or null if none set
     */
    private static File buildCatalogFile(TestSuite suite,
            TestSuiteType suiteType) {
        File catalogFile = suite.resolve(suiteType.getCatalogFile());
        if (catalogFile != null && !catalogFile.canRead()) {
            throw new RuntimeException("Cannot read catalog file: "
                    + catalogFile);
        }
        return catalogFile;
    }

    /**
     * Build output file, or null if not set. Validates that the output file
     * would be writable.
     * 
     * @param suite
     * @param responseType
     * @return either null or an output file
     */
    private static File buildOutputFile(TestSuite suite,
            ResponseType responseType) {
        File outputFile = suite.resolve(responseType.getOutputFile());
        if (outputFile != null
                && (outputFile.getParent() == null || !outputFile
                        .getParentFile().canWrite())) {
            throw new RuntimeException("Cannot write to output file: "
                    + outputFile);
        }
        return outputFile;
    }

    /**
     * Build all the schema locations, first from the response, and then from
     * the top level, so the top level are of lower priority.
     * 
     * @param suite
     * @param suiteType
     * @param responseType
     * @return list of schema locations
     */
    private static List<SchemaLocation> buildSchemaLocations(TestSuite suite,
            TestSuiteType suiteType, ResponseType responseType) {
        List<SchemaLocation> schemaLocations = new ArrayList<SchemaLocation>();
        for (SchemaLocationType locationType : responseType.getSchemaLocation()) {
            schemaLocations.add(SchemaLocationFactory.build(suite, suiteType,
                    locationType));
        }
        for (SchemaLocationType locationType : suiteType.getSchemaLocation()) {
            schemaLocations.add(SchemaLocationFactory.build(suite, suiteType,
                    locationType));
        }
        return schemaLocations;
    }

    /**
     * Build list or element count assertions for this response.
     * 
     * @param responseType
     * @return list of element count assertions
     */
    private static List<ElementCountAssertion> buildElementCountAssertions(
            ResponseType responseType) {
        List<ElementCountAssertion> elementCountAssertions = new ArrayList<ElementCountAssertion>();
        for (JAXBElement<? extends AssertionType> assertionType : responseType
                .getAssertion()) {
            Assertion assertion = AssertionFactory.build(assertionType
                    .getValue());
            if (assertion instanceof ElementCountAssertion) {
                elementCountAssertions.add((ElementCountAssertion) assertion);
            }
        }
        return elementCountAssertions;
    }

}
