package au.org.auscope.xml.servicetester;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

public class XmlServiceTester {

    public static String USAGE = "Usage: java -jar XmlServiceTester.jar config.xml";

    public static String LOGGER_NAME = "XmlServiceTester";

    private static Logger logger = Logger.getLogger(LOGGER_NAME);

    public static Logger getLogger() {
        return logger;
    }

    public static void main(String[] args) {
        if (args.length != 1) {
            System.err.println(USAGE);
            System.exit(1);
        } else {
            File configFile = new File(args[0]);
            ConfigFactory.getInstance().load(configFile).execute();
        }

    }

}
