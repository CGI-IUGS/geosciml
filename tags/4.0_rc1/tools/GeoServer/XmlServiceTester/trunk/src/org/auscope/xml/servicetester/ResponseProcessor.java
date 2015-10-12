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
     *                response to be processed
     * @param log
     *                target of logging
     * @param contentHandler
     *                content handler to be notified of document content events
     * @param errorHandler
     *                error handler to be notified of document error events
     */
    public void process(Response response, Log log,
            ContentHandler contentHandler, ErrorHandler errorHandler);

}
