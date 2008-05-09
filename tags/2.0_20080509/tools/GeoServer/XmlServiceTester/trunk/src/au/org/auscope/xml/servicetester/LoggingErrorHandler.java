/**
 * 
 */
package au.org.auscope.xml.servicetester;

import org.apache.commons.logging.Log;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/**
 * Adapter to log validation errors.
 * 
 */
class LoggingErrorHandler implements ErrorHandler {

    private final Log log;

    /**
     * @param log
     *                log to which validation exception messages are written
     */
    public LoggingErrorHandler(Log log) {
        this.log = log;
    }

    public void warning(SAXParseException exception) throws SAXException {
        log.warn(exception.getMessage());
    }

    public void error(SAXParseException exception) throws SAXException {
        log.error(exception.getMessage());
    }

    public void fatalError(SAXParseException exception) throws SAXException {
        log.fatal(exception.getMessage());
    }

}