package org.auscope.xml.servicetester;

import java.io.IOException;
import java.io.Writer;

import org.apache.xml.serialize.Method;
import org.apache.xml.serialize.OutputFormat;
import org.apache.xml.serialize.XMLSerializer;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/**
 * Pretty prints an XML document as it is parsed by {@link ContentHandler},
 * annotating the output with comments containing errors passed to
 * {@link ErrorHandler}.
 * 
 * <p>
 * 
 * The {@link ContentHandler} interface delegates to {@link XMLSerializer}.
 * 
 * <p>
 * 
 * FIXME: Rewrite the implementation of this class to use JAXP to obtain a
 * serialiser. Xerces2 XMLSerializer is deprecated.
 */
@SuppressWarnings("deprecation")
public class AnnotatingHandler implements ContentHandler, ErrorHandler {

    /**
     * Serializer to which serialisation is delegated.
     */
    private final XMLSerializer xmlSerializer;

    /**
     * Constructor.
     */
    public AnnotatingHandler() {
        xmlSerializer = new XMLSerializer(new OutputFormat(Method.XML, null,
                true));
    }

    /**
     * Set writer with which serialised document is written.
     * 
     * @param writer
     */
    public void setWriter(Writer writer) {
        xmlSerializer.setOutputCharStream(writer);
    }

    /**
     * Annotate the serialized XML by inserting a comment.
     * 
     * @param comment
     */
    private void comment(String comment) {
        try {
            xmlSerializer.comment(" " + comment + " ");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* ErrorHandler */

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ErrorHandler#warning(org.xml.sax.SAXParseException)
     */
    public void warning(SAXParseException exception) throws SAXException {
        comment("WARNING: " + exception.getMessage());
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ErrorHandler#error(org.xml.sax.SAXParseException)
     */
    public void error(SAXParseException exception) throws SAXException {
        comment("ERROR: " + exception.getMessage());
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ErrorHandler#fatalError(org.xml.sax.SAXParseException)
     */
    public void fatalError(SAXParseException exception) throws SAXException {
        comment("FATAL ERROR: " + exception.getMessage());
    }

    /* ContentHandler */

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#characters(char[], int, int)
     */
    public void characters(char[] arg0, int arg1, int arg2) throws SAXException {
        xmlSerializer.characters(arg0, arg1, arg2);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#setDocumentLocator(org.xml.sax.Locator)
     */
    public void setDocumentLocator(Locator arg0) {
        xmlSerializer.setDocumentLocator(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
     */
    public void ignorableWhitespace(char[] arg0, int arg1, int arg2)
            throws SAXException {
        xmlSerializer.ignorableWhitespace(arg0, arg1, arg2);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#processingInstruction(java.lang.String,
     *      java.lang.String)
     */
    public final void processingInstruction(String arg0, String arg1)
            throws SAXException {
        xmlSerializer.processingInstruction(arg0, arg1);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#skippedEntity(java.lang.String)
     */
    public void skippedEntity(String arg0) throws SAXException {
        xmlSerializer.skippedEntity(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#endElement(java.lang.String,
     *      java.lang.String, java.lang.String)
     */
    public void endElement(String arg0, String arg1, String arg2)
            throws SAXException {
        xmlSerializer.endElement(arg0, arg1, arg2);
    }

    /**
     * @param arg0
     */
    public void endEntity(String arg0) {
        xmlSerializer.endEntity(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#endPrefixMapping(java.lang.String)
     */
    public void endPrefixMapping(String arg0) throws SAXException {
        xmlSerializer.endPrefixMapping(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#startElement(java.lang.String,
     *      java.lang.String, java.lang.String, org.xml.sax.Attributes)
     */
    public void startElement(String arg0, String arg1, String arg2,
            Attributes arg3) throws SAXException {
        xmlSerializer.startElement(arg0, arg1, arg2, arg3);
    }

    /**
     * @param arg0
     */
    public void startEntity(String arg0) {
        xmlSerializer.startEntity(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#startPrefixMapping(java.lang.String,
     *      java.lang.String)
     */
    public void startPrefixMapping(String arg0, String arg1)
            throws SAXException {
        xmlSerializer.startPrefixMapping(arg0, arg1);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#endDocument()
     */
    public void endDocument() throws SAXException {
        xmlSerializer.endDocument();
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.xml.sax.ContentHandler#startDocument()
     */
    public void startDocument() throws SAXException {
        xmlSerializer.startDocument();
    }

    /* end of generated delegating methods */

}
