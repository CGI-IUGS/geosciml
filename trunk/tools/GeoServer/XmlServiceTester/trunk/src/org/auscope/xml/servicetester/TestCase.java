package org.auscope.xml.servicetester;

import org.apache.commons.logging.Log;

public class TestCase {

    private final Request request;
    private final ResponseProcessor responseProcessor;

    public TestCase(Request request, ResponseProcessor responseProcessor) {
        this.request = request;
        this.responseProcessor = responseProcessor;
    }

    public void run(Log log) {
        Response response = null;
        try {
            response = request.submit();
            responseProcessor.process(response, log);
        } catch (RuntimeException e) {
            log.fatal("Exception in test case: " + e.getMessage());
        } finally {
            if (response != null) {
                response.dispose();
            }
        }
    }

    @Override
    public String toString() {
        return "Test case: " + request.toString();
    }

}
