/**
 * 
 */
package org.auscope.xml.servicetester;

import org.apache.commons.logging.Log;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

/**
 * Adapter to log validation errors directed to a SAX ErrorHandler interface to
 * an apache-commons-logging log. This is also a decorator because it can be
 * used to add logging to an another ErrorHandler.
 */
public class LoggingErrorHandler implements ErrorHandler {

    /**
     * log to which validation exception messages are written
     */
    private final Log log;

    /**
     * error handler called after the log message is written
     */
    private final ErrorHandler errorHandler;

    /**
     * Constructor.
     * 
     * @param log
     *                log to which validation exception messages are written
     * @param errorHandler
     *                error handler called after the log message is written.
     *                This error handler is thus decorated.
     */
    public LoggingErrorHandler(Log log, ErrorHandler errorHandler) {
        this.log = log;
        this.errorHandler = errorHandler;
    }

    /**
     * Convenience constructor that uses DefaultHandler, which ignores messages.
     * 
     * @param log
     *                log to which validation exception messages are written
     */
    public LoggingErrorHandler(Log log) {
        this(log, new DefaultHandler());
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ErrorHandler#warning(org.xml.sax.SAXParseException)
     */
    public void warning(SAXParseException exception) throws SAXException {
        log.warn(exception.getMessage());
        errorHandler.warning(exception);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ErrorHandler#error(org.xml.sax.SAXParseException)
     */
    public void error(SAXParseException exception) throws SAXException {
        log.error(exception.getMessage());
        errorHandler.error(exception);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ErrorHandler#fatalError(org.xml.sax.SAXParseException)
     */
    public void fatalError(SAXParseException exception) throws SAXException {
        log.fatal(exception.getMessage());
        errorHandler.fatalError(exception);
    }

}