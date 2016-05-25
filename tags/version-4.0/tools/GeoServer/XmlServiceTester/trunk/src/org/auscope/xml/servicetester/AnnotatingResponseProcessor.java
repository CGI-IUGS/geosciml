package org.auscope.xml.servicetester;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;

import org.apache.commons.logging.Log;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;

/**
 * Process a response by serialising it to XML, annotated with any errors.
 * 
 * <p>
 * 
 * Decorates another response processor.
 * 
 */
public class AnnotatingResponseProcessor implements ResponseProcessor {

    /**
     * Response processor decorated by this processor.
     */
    private final ResponseProcessor responseProcessor;

    /**
     * File to which output is written.
     */
    private final File outputFile;

    /**
     * Annotating serialises user to produce annotated output.
     */
    private final AnnotatingHandler annotatingXmlSerializer = new AnnotatingHandler();

    /**
     * Constructor.
     * 
     * @param responseProcessor
     *                response processor decorated by this processor
     * @param outputFile
     *                file to which output is written
     */
    public AnnotatingResponseProcessor(ResponseProcessor responseProcessor,
            File outputFile) {
        this.responseProcessor = responseProcessor;
        this.outputFile = outputFile;
    }

    /**
     * Get the content handler to be notified of elements.
     * 
     * @return
     */
    public ContentHandler getContentHandler() {
        return annotatingXmlSerializer;
    }

    /**
     * Get the element handler that will annotate output with comments.
     * 
     * @return
     */
    public ErrorHandler getErrorHandler() {
        return annotatingXmlSerializer;
    }

    public void process(Response response, Log log,
            ContentHandler contentHandler, ErrorHandler errorHandler) {
        Writer writer = null;
        try {
            writer = new BufferedWriter(new FileWriter(outputFile));
            annotatingXmlSerializer.setWriter(writer);
            responseProcessor.process(response, log, contentHandler,
                    errorHandler);
        } catch (IOException e) {
            throw new RuntimeException(e);
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }

    }

}
