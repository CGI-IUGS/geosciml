package org.auscope.xml.servicetester;

import org.apache.commons.logging.Log;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;

/**
 * Process response with using a {@link ContentHandler} and {@link ErrorHandler}.
 * 
 */
public interface ResponseProcessor {

    /**
     * Process a {@link Response}.
     * 
     * @param response
     * @param log
     * @param contentHandler
     * @param errorHandler
     */
    public void process(Response response, Log log,
            ContentHandler contentHandler, ErrorHandler errorHandler);

}
