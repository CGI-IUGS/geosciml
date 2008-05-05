package au.org.auscope.xml.servicetester;

import java.io.File;

import org.apache.log4j.Logger;

public class XmlServiceTester {

    public static String USAGE = "Usage: java -Xmx512m -jar XmlServiceTester.jar config.xml";

    public static String LOGGER_NAME = "XmlServiceTester";

    private static Logger logger = Logger.getLogger(LOGGER_NAME);

    public static Logger getLogger() {
        return logger;
    }

    /**
     * Programmatic application entry point.
     * 
     * @param configFile
     *                XML configuration file
     */
    public static void run(File configFile) {
        ConfigFactory.getInstance().load(configFile).execute();
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
            run(new File(args[0]));
        }
    }

}
