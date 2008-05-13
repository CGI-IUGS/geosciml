package org.auscope.xml.servicetester;

import java.io.File;

import org.auscope.xml.servicetester.XmlServiceTester;

import junit.framework.TestCase;

public class XmlServiceTesterTest extends TestCase {

    public static void test() {
        assertTrue(XmlServiceTester.run(new File(
                "testresource/test-suites/test-suite.XmlServiceTesterTest.xml")));
    }

}
