package org.auscope.xml.servicetester;

import java.io.File;

import org.auscope.xml.servicetester.XmlServiceTester;

import junit.framework.TestCase;

public class XmlServiceTesterOnlineTest extends TestCase {

    public static void testOnline() {
        assertTrue(XmlServiceTester.run(new File(
                "testresource/test-suites/test-suite.XmlServiceTesterOnlineTest.xml")));
    }

}
