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
 */
public class AnnotatingResponseProcessor implements ResponseProcessor {

    private final ResponseProcessor responseProcessor;
    private final File outputFile;
    private final AnnotatingHandler annotatingXmlSerializer = new AnnotatingHandler();

    public AnnotatingResponseProcessor(ResponseProcessor responseProcessor,
            File outputFile) {
        this.responseProcessor = responseProcessor;
        this.outputFile = outputFile;
    }

    public ContentHandler getContentHandler() {
        return annotatingXmlSerializer;
    }

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
