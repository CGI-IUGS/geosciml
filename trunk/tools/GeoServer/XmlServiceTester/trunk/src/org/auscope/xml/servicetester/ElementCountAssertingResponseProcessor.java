package org.auscope.xml.servicetester;

import java.util.List;

import org.apache.commons.logging.Log;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;

public class ElementCountAssertingResponseProcessor implements
        ResponseProcessor {

    private final ResponseProcessor responseProcessor;
    private final List<ElementCountAssertion> elementCountAssertions;

    public ElementCountAssertingResponseProcessor(
            ResponseProcessor responseProcessor,
            List<ElementCountAssertion> elementCountAssertions) {
        this.responseProcessor = responseProcessor;
        this.elementCountAssertions = elementCountAssertions;
    }

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
