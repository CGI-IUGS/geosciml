package org.auscope.xml.servicetester;

import java.io.IOException;
import java.io.InputStream;

/**
 * A response that encapsulates an InputStream. The dispose() method merely
 * closes the stream.
 */
public class InputStreamResponse implements Response {

    /**
     * The input stream providing the text of the response.
     */
    private final InputStream inputStream;

    /**
     * Constructor.
     * 
     * @param inputStream
     *                The input stream providing the text of the response
     */
    public InputStreamResponse(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.auscope.xml.servicetester.Response#getInputStream()
     */
    public InputStream getInputStream() {
        return inputStream;
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.auscope.xml.servicetester.Response#dispose()
     */
    public void dispose() {
        try {
            inputStream.close();
        } catch (IOException e) {
            // we tried
        }
    }

}
