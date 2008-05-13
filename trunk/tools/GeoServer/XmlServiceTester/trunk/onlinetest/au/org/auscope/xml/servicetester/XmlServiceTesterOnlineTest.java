package au.org.auscope.xml.servicetester;

import java.io.File;

import junit.framework.TestCase;
import au.org.auscope.xml.servicetester.XmlServiceTester;

public class XmlServiceTesterOnlineTest extends TestCase {

    public static void test() {
        assertTrue(XmlServiceTester.run(new File(
                "testresource/test-suites/test-suite.XmlServiceTesterOnlineTest.xml")));
    }

}
