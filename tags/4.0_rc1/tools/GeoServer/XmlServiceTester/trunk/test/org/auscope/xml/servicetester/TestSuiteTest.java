package org.auscope.xml.servicetester;

import java.io.File;

import org.auscope.xml.servicetester.TestSuite;
import org.auscope.xml.servicetester.TestSuiteFactory;

/**
 * Test loading of test-suite file and resolution of relative URIs.
 */
public class TestSuiteTest extends junit.framework.TestCase {

    public static File CONFIG_FILE = new File(
            "testresource/test-suites/test-suite.XmlServiceTesterOnlineTest.xml");

    /**
     * Test loading of test-suite file.
     */
    public void testLoadConfig() throws Exception {
        TestSuite suite = TestSuiteFactory.load(CONFIG_FILE);
        assertEquals(4, suite.getTestCases().size());
    }

    /**
     * Test resolving a relative path in a child directory.
     */
    public void testResolveChild() {
        TestSuite suite = new TestSuite(new File("foo/bar/quux.xml"));
        assertTrue(suite.resolve("a/b/c.txt").toURI().getPath().endsWith(
                "foo/bar/a/b/c.txt"));
    }

    /**
     * Test resolving a relative path in a peer directory.
     */
    public void testResolvePeer() {
        TestSuite suite = new TestSuite(new File("foo/bar/quux.xml"));
        assertTrue(suite.resolve("../b/c.txt").toURI().getPath().endsWith(
                "foo/b/c.txt"));
    }

    /**
     * Test resolving a relative path with spaces in the config file path.
     */
    public void testResolveSpacesConfig() {
        TestSuite suite = new TestSuite(new File("a b/c/d.xml"));
        assertTrue(suite.resolve("../x/y.txt").toURI().getPath().endsWith(
                "a b/x/y.txt"));
    }

    /**
     * Test resolving a relative path containing spaces.
     */
    public void testResolveSpacesRelative() {
        TestSuite suite = new TestSuite(new File("a/b/c/d.xml"));
        assertTrue(suite.resolve("../x%20y/z.txt").toURI().getPath().endsWith(
                "a/b/x y/z.txt"));
    }

}
