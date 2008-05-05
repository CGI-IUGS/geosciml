package au.org.auscope.xml.servicetester;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;

import au.org.auscope.xml.servicetester.config.ResponseType;
import au.org.auscope.xml.servicetester.config.ServiceTesterConfigType;

public class ResponseFactory {

    private static final ResponseFactory INSTANCE = new ResponseFactory();

    public static ResponseFactory getInstance() {
        return INSTANCE;
    }

    private ResponseFactory() {
    }

    public Response build(Config config, ServiceTesterConfigType configType,
            ResponseType responseType) {
        File catalogFile = config.resolve(configType
                .getCatalogFile().trim());
        URI validationNamespaceUri = null;
        try {
            validationNamespaceUri = new URI(responseType.getValidation()
                    .getNamespace().trim());
        } catch (URISyntaxException e) {
            throw new RuntimeException("Invalid namespace URI: "
                    + responseType.getValidation().getNamespace().trim());
        }
        File validationSchemaFile = config
                .resolve(responseType.getValidation()
                        .getSchema().trim());
        return new ResponseImpl(catalogFile, validationNamespaceUri,
                validationSchemaFile);
    }
}
