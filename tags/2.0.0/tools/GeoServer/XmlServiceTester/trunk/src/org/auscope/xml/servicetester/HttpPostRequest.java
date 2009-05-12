package org.auscope.xml.servicetester;

import java.io.File;
import java.net.URL;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.FileRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;

/**
 * Request that uses HTTP POST to submit a body XML document from a local file
 * to a service URL.
 * 
 */
public class HttpPostRequest implements Request {

    /**
     * URL of the service to which the HTTP POST is made.
     */
    private final URL location;

    /**
     * File containing the body of the HTTP POST. It is assumed to be XML.
     */
    private final File requestFile;

    /**
     * MIME type of request body set during HTTP POST.
     */
    private static final String REQUEST_MIME_TYPE = "text/xml";

    /**
     * Constructor.
     * 
     * @param location
     *                URL of the service to which the HTTP POST is made
     * @param requestFile
     *                File containing the body of the HTTP POST. It is assumed
     *                to be XML
     */
    public HttpPostRequest(URL location, File requestFile) {
        this.location = location;
        this.requestFile = requestFile;
    }

    /* (non-Javadoc)
     * @see org.auscope.xml.servicetester.Request#submit()
     */
    public Response submit() {
        HttpClient client = new HttpClient();
        PostMethod post = new PostMethod(location.toString());
        post.setRequestEntity(new FileRequestEntity(requestFile,
                REQUEST_MIME_TYPE));
        try {
            client.executeMethod(post);
            return new HttpMethodResponse(post.getResponseBodyAsStream(), post);
        } catch (Exception e) {
            post.releaseConnection();
            throw new RuntimeException(e);
        }
    }

    /* (non-Javadoc)
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return "Request: HTTP POST to " + location + " with body from file "
                + requestFile;
    }

}
