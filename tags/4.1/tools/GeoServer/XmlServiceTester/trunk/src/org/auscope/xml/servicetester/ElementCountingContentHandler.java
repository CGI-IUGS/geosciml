package org.auscope.xml.servicetester;

import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/**
 * Decorator for {@link ContentHandler} adding element counting.
 * 
 */
public class ElementCountingContentHandler implements ContentHandler {

    /**
     * Content handler to which all operations are delegated, that is, the
     * content handler being decorated
     */
    private final ContentHandler contentHandler;

    /**
     * counter for elements found in the document
     */
    private final ElementCounter elementCounter;

    /**
     * Constructor.
     * 
     * @param contentHandler
     *                content handler to which all operations are delegated,
     *                that is, the content handler being decorated
     * 
     * @param elementCounter
     *                counter for elements found in the document
     */
    public ElementCountingContentHandler(ContentHandler contentHandler,
            ElementCounter elementCounter) {
        this.contentHandler = contentHandler;
        this.elementCounter = elementCounter;
    }

    /**
     * Wrapper method that counts the starts of all elements.
     * 
     * @see org.xml.sax.ContentHandler#startElement(java.lang.String,
     *      java.lang.String, java.lang.String, org.xml.sax.Attributes)
     */
    public void startElement(String uri, String localName, String name,
            Attributes atts) throws SAXException {
        elementCounter.countElement(uri, localName);
        contentHandler.startElement(uri, localName, name, atts);
    }

    /* generated delegate methods */

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#characters(char[], int, int)
     */
    public void characters(char[] ch, int start, int length)
            throws SAXException {
        contentHandler.characters(ch, start, length);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#endDocument()
     */
    public void endDocument() throws SAXException {
        contentHandler.endDocument();
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#endElement(java.lang.String,
     *      java.lang.String, java.lang.String)
     */
    public void endElement(String uri, String localName, String name)
            throws SAXException {
        contentHandler.endElement(uri, localName, name);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#endPrefixMapping(java.lang.String)
     */
    public void endPrefixMapping(String prefix) throws SAXException {
        contentHandler.endPrefixMapping(prefix);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
     */
    public void ignorableWhitespace(char[] ch, int start, int length)
            throws SAXException {
        contentHandler.ignorableWhitespace(ch, start, length);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#processingInstruction(java.lang.String,
     *      java.lang.String)
     */
    public void processingInstruction(String target, String data)
            throws SAXException {
        contentHandler.processingInstruction(target, data);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#setDocumentLocator(org.xml.sax.Locator)
     */
    public void setDocumentLocator(Locator locator) {
        contentHandler.setDocumentLocator(locator);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#skippedEntity(java.lang.String)
     */
    public void skippedEntity(String name) throws SAXException {
        contentHandler.skippedEntity(name);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#startDocument()
     */
    public void startDocument() throws SAXException {
        contentHandler.startDocument();
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#startPrefixMapping(java.lang.String,
     *      java.lang.String)
     */
    public void startPrefixMapping(String prefix, String uri)
            throws SAXException {
        contentHandler.startPrefixMapping(prefix, uri);
    }

}
