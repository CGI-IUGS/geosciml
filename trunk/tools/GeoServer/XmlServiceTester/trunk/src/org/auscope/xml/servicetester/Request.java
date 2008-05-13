package org.auscope.xml.servicetester;

import java.io.InputStream;

public interface Request {

    /**
     * Execute the request and return a new InputStream for the response. Caller
     * must close the returned stream.
     * 
     * @return freshly created InputStream for the response.
     */
    public InputStream openResponseStream();

}