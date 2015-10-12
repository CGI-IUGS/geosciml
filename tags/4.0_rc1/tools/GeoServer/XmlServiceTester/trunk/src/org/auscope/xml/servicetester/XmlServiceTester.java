package org.auscope.xml.servicetester;

import java.io.File;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/**
 * Main class for XmlServiceTester, an application to make requests to XML
 * services and schema-validate the responses.
 * 
 */
public class XmlServiceTester {

    /**
     * Log used for reporting and logging.
     */
    private static final Log LOG = LogFactory.getLog("XmlServiceTester");

    public static String USAGE = "Usage: java -Xmx512m"
            + " -jar XmlServiceTester.jar config.xml";

    /**
     * Return the XmlServiceTester Log instance.
     * 
     * @return Log instance for this application.
     */
    public static Log getLog() {
        return LOG;
    }

    /**
     * Programmatic application entry point. This will not catch exceptions
     * generated in the test-suite setup.
     * 
     * @param testSuiteFile
     *                XML configuration file
     * @return true if success
     */
    public static boolean run(File testSuiteFile) {
        return TestSuiteFactory.load(testSuiteFile).run(LOG);
    }

    /**
     * Application entry point.
     * 
     * @param args
     *                single mandatory argument giving path to test-suite.xml
     */
    public static void main(String[] args) {
        if (args.length != 1) {
            System.err.println(USAGE);
            System.exit(1);
        } else {
            try {
                boolean success = run(new File(args[0]));
                System.exit(success ? 0 : 1);
            } catch (RuntimeException e) {
                LOG.fatal(e);
                System.exit(1);
            }
        }
    }

}
