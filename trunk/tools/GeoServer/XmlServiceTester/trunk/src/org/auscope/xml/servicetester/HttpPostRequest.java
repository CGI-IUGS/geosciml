package org.auscope.xml.servicetester;

import java.io.File;
import java.io.InputStream;
import java.net.URL;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.methods.FileRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;

/**
 * Request using HTTP POST.
 * 
 */
public class HttpPostRequest implements Request {

    private final URL location;
    private final File requestFile;

    private static final String REQUEST_MIME_TYPE = "text/xml";

    public HttpPostRequest(URL location, File requestFile) {
        this.location = location;
        this.requestFile = requestFile;
    }

    public InputStream openResponseStream() {
        HttpClient client = new HttpClient();
        PostMethod post = new PostMethod(location.toString());
        post.setRequestEntity(new FileRequestEntity(requestFile,
                REQUEST_MIME_TYPE));
        try {
            client.executeMethod(post);
            return post.getResponseBodyAsStream();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public String toString() {
        return "Request: HTTP POST to " + location + " with body from file "
                + requestFile;
    }

}
