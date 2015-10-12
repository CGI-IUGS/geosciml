package org.auscope.xml.servicetester;

import java.io.InputStream;

import org.apache.commons.httpclient.HttpMethod;

/**
 * Response received to an HTTP request.
 * 
 * <p>
 * 
 * This class is used to store the HttpMethod used in the request, so that the
 * connection can be released when the response has been read.
 */
public class HttpMethodResponse extends InputStreamResponse {

    /**
     * HttpClient implementation object, stored here so it can be released when
     * processing of this response is complete.
     */
    private final HttpMethod httpMethod;

    /**
     * Constructor.
     * 
     * @param inputStream
     *                inputStream from which response body can be read
     * @param httpMethod
     *                method used to obtain inputStream
     */
    public HttpMethodResponse(InputStream inputStream, HttpMethod httpMethod) {
        super(inputStream);
        this.httpMethod = httpMethod;
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.auscope.xml.servicetester.InputStreamResponse#getInputStream()
     */
    public InputStream getInputStream() {
        return super.getInputStream();
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.auscope.xml.servicetester.InputStreamResponse#dispose()
     */
    public void dispose() {
        super.dispose();
        httpMethod.releaseConnection();
    }

}
