package org.auscope.xml.servicetester;

import java.io.InputStream;

/**
 * Represents the response to a request.
 */
public interface Response {

    /**
     * Get the stream through which the content of the response may be accessed.
     * 
     * @return
     */
    public InputStream getInputStream();

    /**
     * Release resources associated with this response.
     */
    public void dispose();

}
