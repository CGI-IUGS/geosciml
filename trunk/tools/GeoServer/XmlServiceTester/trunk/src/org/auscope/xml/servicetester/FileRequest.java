package org.auscope.xml.servicetester;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/**
 * Request that responds with a file. Used for testing.
 * 
 */
public class FileRequest implements Request {

    private final File responseFile;

    public FileRequest(File responseFile) {
        this.responseFile = responseFile;
    }

    public InputStream openResponseStream() {
        try {
            return new FileInputStream(responseFile);
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public String toString() {
        return "Request: read file " + responseFile;
    }

}
