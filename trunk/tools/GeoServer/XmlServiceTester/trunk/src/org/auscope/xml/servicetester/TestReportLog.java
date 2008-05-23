package org.auscope.xml.servicetester;

import org.apache.commons.logging.Log;

/**
 * Decorator for apache commons Log that counts diagnostics to determine test
 * result.
 * 
 * <p>
 * 
 * The Xerces-2 SAX parser reports validation diagnostics as ErrorHandler
 * events. This class is used to wrap a Log, and is wrapped by an ErrorHandler
 * that is passed to a SAXParser, and thus received the diagnostics.s
 * 
 */
public class TestReportLog implements Log {

    /**
     * If true, warnings are treated as failures.
     */
    private static final boolean FAIL_ON_WARN = true;

    private final String subject;
    private final Log log;

    /**
     * Number of warnings seen.
     */
    private int warnCount;

    /**
     * Number of errors seen.
     */
    private int errorCount;

    /**
     * Number of fatal errors seen.
     */
    private int fatalCount;

    public TestReportLog(String subject, Log log) {
        this.subject = subject;
        this.log = log;
    }

    public String getReport() {
        if (isPass()) {
            return "Passed: " + subject;
        } else {
            return "Failed with " + getFailureCount() + " causes: " + subject;
        }
    }

    public int getFailureCount() {
        int count = errorCount + fatalCount;
        if (FAIL_ON_WARN) {
            count += warnCount;
        }
        return count;
    }

    /**
     * @return true if the test passed
     */
    public boolean isPass() {
        return getFailureCount() == 0;
    }

    public boolean isFail() {
        return !isPass();
    }

    /* Log interface */

    public void trace(Object arg0) {
        log.trace(arg0);
    }

    public void trace(Object arg0, Throwable arg1) {
        log.trace(arg0, arg1);
    }

    public void debug(Object arg0) {
        log.debug(arg0);
    }

    public void debug(Object arg0, Throwable arg1) {
        log.debug(arg0, arg1);
    }

    public void info(Object arg0) {
        log.info(arg0);
    }

    public void info(Object arg0, Throwable arg1) {
        log.info(arg0, arg1);
    }

    public void warn(Object arg0) {
        warnCount++;
        log.warn(arg0);
    }

    public void warn(Object arg0, Throwable arg1) {
        warnCount++;
        log.warn(arg0, arg1);
    }

    public void error(Object arg0) {
        errorCount++;
        log.error(arg0);
    }

    public void error(Object arg0, Throwable arg1) {
        errorCount++;
        log.error(arg0, arg1);
    }

    public void fatal(Object arg0) {
        fatalCount++;
        log.fatal(arg0);
    }

    public void fatal(Object arg0, Throwable arg1) {
        fatalCount++;
        log.fatal(arg0, arg1);
    }

    public boolean isTraceEnabled() {
        return log.isTraceEnabled();
    }

    public boolean isDebugEnabled() {
        return log.isDebugEnabled();
    }

    public boolean isInfoEnabled() {
        return log.isInfoEnabled();
    }

    private static final String PROHIBITED_GUARD_METHOD_MESSAGE = "Use of"
            + " logging guard methods for warn/error/fatal is prohibited"
            + " because logging is used to detect test failure";

    public boolean isWarnEnabled() {
        throw new UnsupportedOperationException(PROHIBITED_GUARD_METHOD_MESSAGE);
    }

    public boolean isErrorEnabled() {
        throw new UnsupportedOperationException(PROHIBITED_GUARD_METHOD_MESSAGE);
    }

    public boolean isFatalEnabled() {
        throw new UnsupportedOperationException(PROHIBITED_GUARD_METHOD_MESSAGE);
    }

}
