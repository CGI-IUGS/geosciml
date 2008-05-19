package org.auscope.xml.servicetester;

import java.util.HashMap;

import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;

/**
 * Decorator for {@link ContentHandler} adding element counting.
 * 
 */
public class ElementCountingContentHandler implements ContentHandler {

    private final ContentHandler contentHandler;

    private final HashMap<String, Integer> elementCountMap = new HashMap<String, Integer>();

    /**
     * @param contentHandler
     *                content handler to which all operations are delegated.
     */
    public ElementCountingContentHandler(ContentHandler contentHandler) {
        this.contentHandler = contentHandler;
    }

    /**
     * Return the number of occurrences of the start of this element that have
     * been seen.
     * 
     * @param uri
     *                namespace in which element is defined
     * @param localName
     *                name of the element
     * @return occurrence count
     */
    public int getElementCount(String uri, String localName) {
        String key = buildKey(uri, localName);
        Integer i = elementCountMap.get(key);
        if (i == null) {
            // no occurrences
            return 0;
        } else {
            // some occurrences
            return i;
        }
    }

    private void countElement(String uri, String localName) {
        String key = buildKey(uri, localName);
        Integer i = elementCountMap.get(key);
        if (i == null) {
            // first occurrence
            elementCountMap.put(key, 1);
        } else {
            // subsequent occurrence
            elementCountMap.put(key, i + 1);
        }
    }

    /**
     * Build a key for this element.
     * 
     * @param uri
     * @param localName
     * @return
     */
    private String buildKey(String uri, String localName) {
        return "{" + uri + "}" + localName;
    }

    /**
     * Wrapper method that counts the starts of all elements.
     * 
     * @see org.xml.sax.ContentHandler#startElement(java.lang.String,
     *      java.lang.String, java.lang.String, org.xml.sax.Attributes)
     */
    public void startElement(String uri, String localName, String name,
            Attributes atts) throws SAXException {
        countElement(uri, localName);
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

    /* end of generated delegate methods */

}
