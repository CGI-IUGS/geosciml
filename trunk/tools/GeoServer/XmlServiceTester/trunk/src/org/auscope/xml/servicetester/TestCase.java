package org.auscope.xml.servicetester;

import org.apache.commons.logging.Log;

/**
 * A single unit of testing that either passes or fails. Each test case consists
 * of a {@link Request} and a {@link ResponseProcessor} to process the
 * {@link Response}.
 * 
 */
public class TestCase {

    private final Request request;
    private final ResponseProcessorManager responseProcessorManager;

    /**
     * Constructor.
     * 
     * @param request
     * @param responseProcessorManager
     */
    public TestCase(Request request,
            ResponseProcessorManager responseProcessorManager) {
        this.request = request;
        this.responseProcessorManager = responseProcessorManager;
    }

    /**
     * Top level initialtion of the request-response-processing for this test
     * case.
     * 
     * @param log
     */
    public void run(Log log) {
        Response response = null;
        try {
            response = request.submit();
            responseProcessorManager.process(response, log);
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
