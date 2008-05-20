package org.auscope.xml.servicetester;

import org.apache.commons.logging.Log;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;

/**
 * Process response with specific control of ContentHandler and ErrorHandler.
 * 
 */
public interface ResponseProcessor {

    public void process(Response response, Log log,
            ContentHandler contentHandler, ErrorHandler errorHandler);

}
