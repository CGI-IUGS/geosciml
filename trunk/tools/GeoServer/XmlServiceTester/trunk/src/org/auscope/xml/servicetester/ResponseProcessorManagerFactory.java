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

import sun.awt.RepaintArea;

public class ResponseProcessorManagerFactory {

    private static final ResponseProcessorManagerFactory INSTANCE = new ResponseProcessorManagerFactory();

    public static ResponseProcessorManagerFactory getInstance() {
        return INSTANCE;
    }

    private ResponseProcessorManagerFactory() {
    }

    public ResponseProcessorManager build(TestSuite suite,
            TestSuiteType suiteType, ResponseType responseType) {
        File catalogFile = buildCatalogFile(suite, suiteType);
        String schemaLocationString = buildSchemaLocationString(suite,
                suiteType, responseType);
        ResponseProcessor responseProcessor = new ValidatingResponseProcessor(
                catalogFile, schemaLocationString);
        /*
         * 
         * 
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
         * 
         */
        List<ElementCountAssertion> elementCountAssertions = buildElementCountAssertions(responseType);
        if (!elementCountAssertions.isEmpty()) {
            responseProcessor = new ElementCountAssertingResponseProcessor(
                    responseProcessor, elementCountAssertions);
        }

        return new ResponseProcessorManager(responseProcessor, contentHandler,
                errorHandler);
    }

    private File buildCatalogFile(TestSuite suite, TestSuiteType suiteType) {
        File catalogFile = suite.resolve(suiteType.getCatalogFile());
        if (catalogFile != null && !catalogFile.canRead()) {
            throw new RuntimeException("Cannot read catalog file: "
                    + catalogFile);
        }
        return catalogFile;
    }

    /**
     * @param suite
     * @param responseType
     * @return either null or an output file
     */
    private File buildOutputFile(TestSuite suite, ResponseType responseType) {
        File outputFile = suite.resolve(responseType.getOutputFile());
        if (outputFile != null
                && (outputFile.getParent() == null || !outputFile
                        .getParentFile().canWrite())) {
            throw new RuntimeException("Cannot write to output file: "
                    + outputFile);
        }
        return outputFile;
    }

    private List<SchemaLocation> buildSchemaLocations(TestSuite suite,
            TestSuiteType suiteType, ResponseType responseType) {
        List<SchemaLocation> schemaLocations = new ArrayList<SchemaLocation>();
        for (SchemaLocationType locationType : responseType.getSchemaLocation()) {
            schemaLocations.add(SchemaLocationFactory.getInstance().build(
                    suite, suiteType, locationType));
        }
        for (SchemaLocationType locationType : suiteType.getSchemaLocation()) {
            schemaLocations.add(SchemaLocationFactory.getInstance().build(
                    suite, suiteType, locationType));
        }
        return schemaLocations;
    }

    private String buildSchemaLocationString(TestSuite suite,
            TestSuiteType suiteType, ResponseType responseType) {
        StringBuffer stringBuffer = null;
        for (SchemaLocation loc : buildSchemaLocations(suite, suiteType,
                responseType)) {
            if (loc.getNamespaceUri() != null) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                } else {
                    stringBuffer.append(" ");
                }
                stringBuffer.append(loc.getSchemaLocation());
            }
        }
        if (stringBuffer == null) {
            return null;
        } else {
            return stringBuffer.toString();
        }
    }

    private List<ElementCountAssertion> buildElementCountAssertions(
            ResponseType responseType) {
        List<ElementCountAssertion> elementCountAssertions = new ArrayList<ElementCountAssertion>();
        for (JAXBElement<? extends AssertionType> assertionType : responseType
                .getAssertion()) {
            Assertion assertion = AssertionFactory.getInstance().build(
                    assertionType.getValue());
            if (assertion instanceof ElementCountAssertion) {
                elementCountAssertions.add((ElementCountAssertion) assertion);
            }
        }
        return elementCountAssertions;
    }

}
