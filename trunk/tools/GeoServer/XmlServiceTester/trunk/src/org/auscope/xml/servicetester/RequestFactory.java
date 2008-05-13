package org.auscope.xml.servicetester;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;

import org.auscope.xml.servicetester.generated.FileRequestType;
import org.auscope.xml.servicetester.generated.HttpPostRequestType;
import org.auscope.xml.servicetester.generated.RequestType;
import org.auscope.xml.servicetester.generated.TestSuiteType;

public class RequestFactory {

    private static final RequestFactory INSTANCE = new RequestFactory();

    public static RequestFactory getInstance() {
        return INSTANCE;
    }

    private RequestFactory() {
    }

    public Request build(TestSuite config, TestSuiteType configType,
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

    private Request build(TestSuite suite, TestSuiteType suiteType,
            HttpPostRequestType requestType) {
        String serviceUrlString;
        if (requestType.getServiceUrl() != null) {
            serviceUrlString = requestType.getServiceUrl();
        } else if (suiteType.getServiceUrl() != null) {
            serviceUrlString = suiteType.getServiceUrl();
        } else {
            throw new RuntimeException("Could not determine service location");
        }
        URL serviceUrl;
        try {
            serviceUrl = new URL(serviceUrlString);
        } catch (MalformedURLException e) {
            throw new RuntimeException("Invalid service location URL: "
                    + serviceUrlString, e);
        }
        File requestFile = suite.resolve(requestType.getRequestFile());
        if (requestFile == null || !requestFile.canRead()) {
            throw new RuntimeException("Cannot read request file: "
                    + requestFile);
        }
        return new HttpPostRequest(serviceUrl, requestFile);
    }

    /**
     * Build a file-request, that is, a requests that returns the contents of a
     * local file.
     * 
     * @param suite
     * @param suiteType
     * @param requestType
     * @return
     */
    private Request build(TestSuite suite, TestSuiteType suiteType,
            FileRequestType requestType) {
        File responseFile = suite.resolve(requestType.getResponseFile());
        if (responseFile == null || !responseFile.canRead()) {
            throw new RuntimeException("Cannot read response file: "
                    + responseFile);
        }
        return new FileRequest(responseFile);
    }

}
