package au.org.auscope.xml.servicetester;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;

import au.org.auscope.xml.servicetester.config.FileRequestType;
import au.org.auscope.xml.servicetester.config.HttpPostRequestType;
import au.org.auscope.xml.servicetester.config.RequestType;
import au.org.auscope.xml.servicetester.config.ServiceTesterConfigType;

public class RequestFactory {

    private static final RequestFactory INSTANCE = new RequestFactory();

    public static RequestFactory getInstance() {
        return INSTANCE;
    }

    private RequestFactory() {
    }

    public Request build(Config config, ServiceTesterConfigType configType,
            RequestType requestType) {
        if (requestType instanceof HttpPostRequestType) {
            return build(config, configType, (HttpPostRequestType) requestType);
        } else if (requestType instanceof FileRequestType) {
            return build(config, configType, (FileRequestType) requestType);
        } else {
            throw new RuntimeException("Unsupported request type: "
                    + requestType.getClass().getSimpleName());
        }
    }

    private Request build(Config config, ServiceTesterConfigType configType,
            HttpPostRequestType requestType) {
        String serviceLocationString;
        if (requestType.getServiceLocation() != null) {
            serviceLocationString = requestType.getServiceLocation().trim();
        } else if (configType.getServiceLocation() != null) {
            serviceLocationString = configType.getServiceLocation().trim();
        } else {
            throw new RuntimeException("Could not determine service location");
        }
        URL serviceLocationUrl;
        try {
            serviceLocationUrl = new URL(serviceLocationString);
        } catch (MalformedURLException e) {
            throw new RuntimeException("Invalid service location URL: "
                    + serviceLocationString, e);
        }
        File requestFile = config.resolve(requestType
                .getRequestFile());
        if (requestFile == null || !requestFile.canRead()) {
            throw new RuntimeException("Could not read request file: "
                    + requestFile);
        }
        return new HttpPostRequest(serviceLocationUrl, requestFile);
    }

    private Request build(Config config, ServiceTesterConfigType configType,
            FileRequestType requestType) {
        throw new NotImplementedException();
    }

}
