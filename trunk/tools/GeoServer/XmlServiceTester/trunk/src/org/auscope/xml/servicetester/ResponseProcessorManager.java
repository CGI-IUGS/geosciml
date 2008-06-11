package org.auscope.xml.servicetester;

import org.apache.commons.logging.Log;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;

/**
 * Late binding of the Log to the error handler.
 * 
 */
public class ResponseProcessorManager {

    private final ResponseProcessor responseProcessor;
    private final ContentHandler contentHandler;
    private final ErrorHandler errorHandler;

    public ResponseProcessorManager(ResponseProcessor responseProcessor,
            ContentHandler contentHandler, ErrorHandler errorHandler) {
        this.responseProcessor = responseProcessor;
        this.contentHandler = contentHandler;
        this.errorHandler = errorHandler;
    }

    /**
     * @param response
     * @param log
     */
    public void process(Response response, Log log) {
        responseProcessor.process(response, log, contentHandler,
                new LoggingErrorHandler(log, errorHandler));
    }

}
