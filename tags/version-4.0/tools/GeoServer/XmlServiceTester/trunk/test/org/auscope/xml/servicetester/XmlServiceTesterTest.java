package org.auscope.xml.servicetester;

import java.io.File;

import org.auscope.xml.servicetester.XmlServiceTester;

import junit.framework.TestCase;

/**
 * Top-level integration tests of XmlServiceTester.
 */
public class XmlServiceTesterTest extends TestCase {

    /**
     * Basic test.
     */
    public static void test() {
        assertTrue(XmlServiceTester
                .run(new File(
                        "testresource/test-suites/test-suite.XmlServiceTesterTest.xml")));
    }

    /**
     * Test with schema-valid ExceptionReport.
     */
    public static void testWrongContent() {
        assertFalse(XmlServiceTester
                .run(new File(
                        "testresource/test-suites/test-suite.XmlServiceTesterTest.wrong-content.xml")));
    }

    /**
     * Test with schema-invalid content.
     */
    public static void testBroken() {
        assertFalse(XmlServiceTester
                .run(new File(
                        "testresource/test-suites/test-suite.XmlServiceTesterTest.broken.xml")));
    }

    /**
     * Test with test-suite that does not exist. A test that ensures
     * XmlServiceTester.run() throws an exception.
     */
    public static void testTestSuiteDoesNotExist() {
        try {
            XmlServiceTester.run(new File("test-suite.does-not-exist.xml"));
            fail();
        } catch (RuntimeException e) {
            // success
        }
    }

}
