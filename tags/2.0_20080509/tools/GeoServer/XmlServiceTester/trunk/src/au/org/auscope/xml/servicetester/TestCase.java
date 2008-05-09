package au.org.auscope.xml.servicetester;

import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.logging.Log;

public class TestCase {

    private final Request request;
    private final ResponseProcessor response;

    public TestCase(Request request, ResponseProcessor response) {
        this.request = request;
        this.response = response;
    }

    public void run(Log log) {
        InputStream inputStream = null;
        try {
            inputStream = request.openResponseStream();
            response.process(inputStream, log);
        } catch (RuntimeException e) {
            log.fatal("Exception in test case: " + e.getMessage());
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    // ignore, we tried
                }
            }
        }

    }

    @Override
    public String toString() {
        return "Test case: " + request.toString();
    }

}
