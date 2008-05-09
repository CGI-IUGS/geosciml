package au.org.auscope.xml.servicetester;

import java.io.File;

import junit.framework.TestCase;

public class XmlServiceTesterTest extends TestCase {

    public static void test() {
        assertTrue(XmlServiceTester.run(new File(
                "testresource/config/config.XmlServiceTesterTest.xml")));
    }

}
