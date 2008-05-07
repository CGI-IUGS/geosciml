package au.org.auscope.xml.servicetester;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;

import au.org.auscope.xml.servicetester.config.ResponseType;
import au.org.auscope.xml.servicetester.config.ServiceTesterConfigType;

public class ResponseProcessorFactory {

    private static final ResponseProcessorFactory INSTANCE = new ResponseProcessorFactory();

    public static ResponseProcessorFactory getInstance() {
        return INSTANCE;
    }

    private ResponseProcessorFactory() {
    }

    public ResponseProcessor build(TestSuite config,
            ServiceTesterConfigType configType, ResponseType responseType) {
        File catalogFile = config.resolve(configType.getCatalogFile());
        if (catalogFile != null && !catalogFile.canRead()) {
            throw new RuntimeException("Cannot read catalog file: "
                    + catalogFile);
        }
        URI validationNamespaceUri = null;
        try {
            validationNamespaceUri = new URI(responseType.getValidation()
                    .getNamespace());
        } catch (URISyntaxException e) {
            throw new RuntimeException("Invalid namespace URI: "
                    + responseType.getValidation().getNamespace());
        }
        File validationSchemaFile = config.resolve(responseType.getValidation()
                .getSchema());
        return new ValidatingResponseProcessor(catalogFile, validationNamespaceUri,
                validationSchemaFile);
    }
}
