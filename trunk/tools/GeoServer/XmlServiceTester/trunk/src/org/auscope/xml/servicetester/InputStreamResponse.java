package org.auscope.xml.servicetester;

import java.io.IOException;
import java.io.InputStream;

/**
 * A response that encapsulates an InputStream. The dispose() method merely
 * closes the stream.
 */
public class InputStreamResponse implements Response {

    private final InputStream inputStream;

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
