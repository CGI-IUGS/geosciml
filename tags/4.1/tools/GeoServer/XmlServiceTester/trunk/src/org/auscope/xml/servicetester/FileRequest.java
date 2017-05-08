package org.auscope.xml.servicetester;

import java.io.File;
import java.io.FileInputStream;

/**
 * Request that responds with the contents of a local file. Used for validation
 * of local documents and for testing.
 */
public class FileRequest implements Request {

    /**
     * file containing body of response
     */
    private final File responseFile;

    /**
     * Constructor.
     * 
     * @param responseFile
     *                file containing body of response
     */
    public FileRequest(File responseFile) {
        this.responseFile = responseFile;
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.auscope.xml.servicetester.Request#submit()
     */
    public Response submit() {
        FileInputStream fileInputStream = null;
        try {
            fileInputStream = new FileInputStream(responseFile);
            return new InputStreamResponse(fileInputStream);
        } catch (Exception e) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Exception e1) {
                    // we tried
                }
            }
            throw new RuntimeException(e);
        }
    }

    /* (non-Javadoc)
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return "Request: read file " + responseFile;
    }

}
