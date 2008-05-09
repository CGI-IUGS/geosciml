package au.org.auscope.xml.servicetester;

import java.io.File;

import junit.framework.TestCase;

public class XmlServiceTesterTestOnline extends TestCase {

    public static void testOnline() {
        assertTrue(XmlServiceTester.run(new File(
                "testresource/config/config.XmlServiceTesterTestOnline.xml")));
    }

}
