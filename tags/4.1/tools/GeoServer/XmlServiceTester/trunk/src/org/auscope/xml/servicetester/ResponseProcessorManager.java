package org.auscope.xml.servicetester;

import org.apache.commons.logging.Log;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;

/**
 * Late binding of the Log to the error handler.
 * 
 */
public class ResponseProcessorManager {

    /**
     * response processor to use
     */
    private final ResponseProcessor responseProcessor;

    /**
     * content handler to notify of document content events
     */
    private final ContentHandler contentHandler;

    /**
     * error handler to notify of document error events
     */
    private final ErrorHandler errorHandler;

    /**
     * Constructor.
     * 
     * @param responseProcessor
     *                response processor to use
     * @param contentHandler
     *                content handler to notify of document content events
     * @param errorHandler
     *                error handler to notify of document error events
     */
    public ResponseProcessorManager(ResponseProcessor responseProcessor,
            ContentHandler contentHandler, ErrorHandler errorHandler) {
        this.responseProcessor = responseProcessor;
        this.contentHandler = contentHandler;
        this.errorHandler = errorHandler;
    }

    /**
     * Process the response, using the log, with the content handler and error
     * handler set in the constructor. The error handler is wrapped to log
     * errors to the log.
     * 
     * @param response
     * @param log
     */
    public void process(Response response, Log log) {
        responseProcessor.process(response, log, contentHandler,
                new LoggingErrorHandler(log, errorHandler));
    }

}
