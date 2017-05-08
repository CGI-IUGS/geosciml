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
 * that is passed to a SAXParser, and thus receives the diagnostics.
 * 
 */
public class TestReportLog implements Log {

    /**
     * If true, warnings are treated as failures.
     */
    private static final boolean FAIL_ON_WARN = true;

    /**
     * Subject label for this test.
     */
    private final String subject;

    /**
     * Log decorated to monitor diagnostics to determine success/failure.
     */
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

    /**
     * Constructor.
     * 
     * @param subject
     *                Subject label for this test
     * @param log
     *                Log decorated to monitor diagnostics to determine
     *                success/failure
     */
    public TestReportLog(String subject, Log log) {
        this.subject = subject;
        this.log = log;
    }

    /**
     * Return formatted pass/fail message.
     * 
     * @return formatted pass/fail message
     */
    public String getReport() {
        if (isPass()) {
            return "Passed: " + subject;
        } else {
            return "Failed with " + getFailureCount() + " causes: " + subject;
        }
    }

    /**
     * Return count of diagnostics that caused failure.
     * 
     * @return count of diagnostics that caused failure
     */
    public int getFailureCount() {
        int count = errorCount + fatalCount;
        if (FAIL_ON_WARN) {
            count += warnCount;
        }
        return count;
    }

    /**
     * Did the test pass?
     * 
     * @return true if the test passed
     */
    public boolean isPass() {
        return getFailureCount() == 0;
    }

    /**
     * Did the test fail?
     * 
     * @return true if the test failed
     */
    public boolean isFail() {
        return !isPass();
    }

    /* Log interface */

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#trace(java.lang.Object)
     */
    public void trace(Object arg0) {
        log.trace(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#trace(java.lang.Object,
     *      java.lang.Throwable)
     */
    public void trace(Object arg0, Throwable arg1) {
        log.trace(arg0, arg1);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#debug(java.lang.Object)
     */
    public void debug(Object arg0) {
        log.debug(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#debug(java.lang.Object,
     *      java.lang.Throwable)
     */
    public void debug(Object arg0, Throwable arg1) {
        log.debug(arg0, arg1);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#info(java.lang.Object)
     */
    public void info(Object arg0) {
        log.info(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#info(java.lang.Object,
     *      java.lang.Throwable)
     */
    public void info(Object arg0, Throwable arg1) {
        log.info(arg0, arg1);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#warn(java.lang.Object)
     */
    public void warn(Object arg0) {
        warnCount++;
        log.warn(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#warn(java.lang.Object,
     *      java.lang.Throwable)
     */
    public void warn(Object arg0, Throwable arg1) {
        warnCount++;
        log.warn(arg0, arg1);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#error(java.lang.Object)
     */
    public void error(Object arg0) {
        errorCount++;
        log.error(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#error(java.lang.Object,
     *      java.lang.Throwable)
     */
    public void error(Object arg0, Throwable arg1) {
        errorCount++;
        log.error(arg0, arg1);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#fatal(java.lang.Object)
     */
    public void fatal(Object arg0) {
        fatalCount++;
        log.fatal(arg0);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#fatal(java.lang.Object,
     *      java.lang.Throwable)
     */
    public void fatal(Object arg0, Throwable arg1) {
        fatalCount++;
        log.fatal(arg0, arg1);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#isTraceEnabled()
     */
    public boolean isTraceEnabled() {
        return log.isTraceEnabled();
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#isDebugEnabled()
     */
    public boolean isDebugEnabled() {
        return log.isDebugEnabled();
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#isInfoEnabled()
     */
    public boolean isInfoEnabled() {
        return log.isInfoEnabled();
    }

    private static final String PROHIBITED_GUARD_METHOD_MESSAGE = "Use of"
            + " logging guard methods for warn/error/fatal is prohibited"
            + " because logging is used to detect test failure";

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#isWarnEnabled()
     */
    public boolean isWarnEnabled() {
        throw new UnsupportedOperationException(PROHIBITED_GUARD_METHOD_MESSAGE);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#isErrorEnabled()
     */
    public boolean isErrorEnabled() {
        throw new UnsupportedOperationException(PROHIBITED_GUARD_METHOD_MESSAGE);
    }

    /*
     * (non-Javadoc)
     * 
     * @see org.apache.commons.logging.Log#isFatalEnabled()
     */
    public boolean isFatalEnabled() {
        throw new UnsupportedOperationException(PROHIBITED_GUARD_METHOD_MESSAGE);
    }

}
