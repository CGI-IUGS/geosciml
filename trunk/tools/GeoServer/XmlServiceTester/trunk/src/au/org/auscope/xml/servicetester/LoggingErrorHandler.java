/**
 * 
 */
package au.org.auscope.xml.servicetester;

import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

class LoggingErrorHandler implements ErrorHandler {

    private int count = 0;

    public void error(SAXParseException exception) throws SAXException {
        count++;
        XmlServiceTester.getLogger().error(exception.getMessage());
    }

    public void fatalError(SAXParseException exception) throws SAXException {
        count++;
        XmlServiceTester.getLogger().fatal(exception.getMessage());
    }

    public void warning(SAXParseException exception) throws SAXException {
        count++;
        XmlServiceTester.getLogger().warn(exception.getMessage());
    }

    public int getCount() {
        return count;
    }

}