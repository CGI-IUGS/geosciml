package org.auscope.xml.servicetester;

import java.io.File;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import org.auscope.xml.servicetester.generated.TestCaseType;
import org.auscope.xml.servicetester.generated.TestSuiteType;

/**
 * Factory to hide the nastiness of unmarshalling the test-suite file and
 * converting deserialised JAXB objects into gleaming pearly-white domain
 * objects.
 * 
 */
public class TestSuiteFactory {

    /**
     * Package in which generated JAXB bindings may be found. This must match
     * the package set in build.xml .
     */
    private static final String GENERATED_PACKAGE = "org.auscope.xml.servicetester.generated";

    public static TestSuiteFactory getInstance() {
        return new TestSuiteFactory();
    }

    private TestSuiteFactory() {
    }

    /**
     * Load service tester configuration from an XML file.
     * 
     * @param testSuiteFile
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public TestSuite load(File testSuiteFile) {
        TestSuiteType testSuiteType = null;
        try {
            JAXBContext jc = JAXBContext.newInstance(GENERATED_PACKAGE);
            Unmarshaller unmarshaller = jc.createUnmarshaller();
            testSuiteType = ((JAXBElement<TestSuiteType>) unmarshaller
                    .unmarshal(testSuiteFile)).getValue();
            return build(testSuiteFile, testSuiteType);
        } catch (JAXBException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * @param testSuiteFile
     *                used only to configure the filename resolver
     * @param testSuiteType
     * @return
     */
    private TestSuite build(File testSuiteFile, TestSuiteType testSuiteType) {
        TestSuite testSuite = new TestSuite(testSuiteFile);
        for (TestCaseType testCaseType : testSuiteType.getTestCase()) {
            Request request = RequestFactory.getInstance().build(testSuite,
                    testSuiteType, testCaseType.getRequest().getValue());
            ResponseProcessorManager response = ResponseProcessorManagerFactory
                    .getInstance().build(testSuite, testSuiteType,
                            testCaseType.getResponse());
            TestCase c = new TestCase(request, response);
            testSuite.addCase(c);
        }
        return testSuite;
    }

}