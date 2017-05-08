package org.auscope.xml.servicetester;

import java.util.List;

import org.apache.commons.logging.Log;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;

/**
 * A response processor that counts the elements in a document and tests if
 * element count assertions pass or fail, reporting these to the log.
 * 
 * <p>
 * 
 * Decorates another response processor.
 * 
 */
public class ElementCountAssertingResponseProcessor implements
        ResponseProcessor {

    private final ResponseProcessor responseProcessor;
    private final List<ElementCountAssertion> elementCountAssertions;

    /**
     * Constructor.
     * 
     * @param responseProcessor
     *                response processor to decorate
     * @param elementCountAssertions
     *                list of element count assertions to apply.
     */
    public ElementCountAssertingResponseProcessor(
            ResponseProcessor responseProcessor,
            List<ElementCountAssertion> elementCountAssertions) {
        this.responseProcessor = responseProcessor;
        this.elementCountAssertions = elementCountAssertions;
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.auscope.xml.servicetester.ResponseProcessor#process(org.auscope.xml.servicetester.Response,
     *      org.apache.commons.logging.Log, org.xml.sax.ContentHandler,
     *      org.xml.sax.ErrorHandler)
     */
    public void process(Response response, Log log,
            ContentHandler contentHandler, ErrorHandler errorHandler) {
        ElementCounter elementCounter = new ElementCounter();
        ElementCountingContentHandler elementCountingContentHandler = new ElementCountingContentHandler(
                contentHandler, elementCounter);
        responseProcessor.process(response, log, elementCountingContentHandler,
                errorHandler);
        for (ElementCountAssertion assertion : elementCountAssertions) {
            int count = elementCounter.getElementCount(assertion
                    .getNamespaceUri(), assertion.getElementName());
            if (count == assertion.getElementCount()) {
                log.debug("Passed element count assertion for "
                        + assertion.getElementQualifiedName() + ": expected: "
                        + assertion.getElementCount() + " counted: " + count);
            } else {
                log.error("Failed element count assertion for "
                        + assertion.getElementQualifiedName() + ": expected: "
                        + assertion.getElementCount() + " counted: " + count);
            }
        }

    }
}
