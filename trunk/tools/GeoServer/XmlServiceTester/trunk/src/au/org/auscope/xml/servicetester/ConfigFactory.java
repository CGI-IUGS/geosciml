package au.org.auscope.xml.servicetester;

import java.io.File;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;

import au.org.auscope.xml.servicetester.config.ServiceTesterConfigType;
import au.org.auscope.xml.servicetester.config.TestCaseType;

public class ConfigFactory {

    public static ConfigFactory getInstance() {
        return new ConfigFactory();
    }

    private ConfigFactory() {
    }

    /**
     * Load service tester configuration from an XML file.
     * 
     * @param configFile
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public Config load(File configFile) {
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
    private Config build(File configFile, ServiceTesterConfigType configType) {
        Config config = new Config(configFile);
        for (TestCaseType caseType : configType.getTestCase()) {
            Request request = RequestFactory.getInstance().build(config,
                    configType, caseType.getRequest().getValue());
            Response response = ResponseFactory.getInstance().build(config,
                    configType, caseType.getResponse());
            Case c = new Case(request, response);
            config.addCase(c);
        }
        return config;
    }

}