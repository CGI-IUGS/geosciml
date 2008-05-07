package au.org.auscope.xml.servicetester;

import java.io.File;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class XmlServiceTester {

    private static final Log LOG = LogFactory.getLog("XmlServiceTester");

    public static String USAGE = "Usage: java -Xmx512m"
            + " -jar XmlServiceTester.jar config.xml";

    /**
     * Programmatic application entry point.
     * 
     * @param configFile
     *                XML configuration file
     * @return true if success
     */
    public static boolean run(File configFile) {
        TestSuite suite;
        try {
             suite = TestSuiteFactory.getInstance().load(configFile);
        } catch (RuntimeException e) {
            LOG.fatal("Could not load config file " + configFile, e);
            return false;
        }
        return suite.execute(LOG);
    }

    /**
     * Application entry point.
     * 
     * @param args
     */
    public static void main(String[] args) {
        if (args.length != 1) {
            System.err.println(USAGE);
            System.exit(1);
        } else {
            boolean success = run(new File(args[0]));
            if (success) {
                System.exit(0);
            } else {
                System.exit(1);
            }
        }
    }

}
