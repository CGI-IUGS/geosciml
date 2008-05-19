package org.auscope.xml.servicetester;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.JAXBElement;

import org.auscope.xml.servicetester.generated.AssertionType;
import org.auscope.xml.servicetester.generated.ResponseType;
import org.auscope.xml.servicetester.generated.SchemaLocationType;
import org.auscope.xml.servicetester.generated.TestSuiteType;

public class ResponseProcessorFactory {

    private static final ResponseProcessorFactory INSTANCE = new ResponseProcessorFactory();

    public static ResponseProcessorFactory getInstance() {
        return INSTANCE;
    }

    private ResponseProcessorFactory() {
    }

    public ValidatingResponseProcessor build(TestSuite suite, TestSuiteType suiteType,
            ResponseType responseType) {
        File catalogFile = suite.resolve(suiteType.getCatalogFile());
        if (catalogFile != null && !catalogFile.canRead()) {
            throw new RuntimeException("Cannot read catalog file: "
                    + catalogFile);
        }
        String schemaLocationString = buildSchemaLocationString(suite,
                suiteType, responseType);
        return new ValidatingResponseProcessor(catalogFile, schemaLocationString);
    }

    private List<SchemaLocation> buildSchemaLocations(TestSuite suite,
            TestSuiteType suiteType, ResponseType responseType) {
        List<SchemaLocation> schemaLocations = new ArrayList<SchemaLocation>();
        for (SchemaLocationType locationType : responseType.getSchemaLocation()) {
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

    private List<Assertion> buildAssertions(ResponseType responseType) {
        List<Assertion> assertions = new ArrayList<Assertion>();
        for (JAXBElement<? extends AssertionType> assertionType : responseType
                .getAssertion()) {
            assertions.add(AssertionFactory.getInstance().build(
                    assertionType.getValue()));
        }
        return assertions;
    }

}
