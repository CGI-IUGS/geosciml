package au.org.auscope.xml.servicetester;

import java.io.File;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import au.org.auscope.xml.servicetester.config.ServiceTesterConfigType;
import au.org.auscope.xml.servicetester.config.TestCaseType;

public class TestSuiteFactory {

    public static TestSuiteFactory getInstance() {
        return new TestSuiteFactory();
    }

    private TestSuiteFactory() {
    }

    /**
     * Load service tester configuration from an XML file.
     * 
     * @param configFile
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public TestSuite load(File configFile) {
        ServiceTesterConfigType configType = null;
        try {
            JAXBContext jc = JAXBContext
                    .newInstance("au.org.auscope.xml.servicetester.config");
            Unmarshaller unmarshaller = jc.createUnmarshaller();
            configType = ((JAXBElement<ServiceTesterConfigType>) unmarshaller
                    .unmarshal(configFile)).getValue();
            return build(configFile, configType);
        } catch (JAXBException e) {
            throw new RuntimeException("Could not load config file: "
                    + configFile.toString());
        }
    }

    /**
     * @param configFile
     *                used only to configure the filename resolver
     * @param configType
     * @return
     */
    private TestSuite build(File configFile, ServiceTesterConfigType configType) {
        TestSuite config = new TestSuite(configFile);
        for (TestCaseType caseType : configType.getTestCase()) {
            Request request = RequestFactory.getInstance().build(config,
                    configType, caseType.getRequest().getValue());
            ResponseProcessor response = ResponseProcessorFactory.getInstance().build(
                    config, configType, caseType.getResponse());
            TestCase c = new TestCase(request, response);
            config.addCase(c);
        }
        return config;
    }

}