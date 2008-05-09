package au.org.auscope.xml.servicetester;

import java.io.File;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import au.org.auscope.xml.servicetester.generated.TestCaseType;
import au.org.auscope.xml.servicetester.generated.TestSuiteType;

public class TestSuiteFactory {

    private static final String GENERATED_PACKAGE = "au.org.auscope.xml.servicetester.generated";

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
            ResponseProcessor response = ResponseProcessorFactory
                    .getInstance()
                    .build(testSuite, testSuiteType, testCaseType.getResponse());
            TestCase c = new TestCase(request, response);
            testSuite.addCase(c);
        }
        return testSuite;
    }

}