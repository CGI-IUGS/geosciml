package au.org.auscope.xml.servicetester;

import java.io.File;

public class TestSuiteTest extends junit.framework.TestCase {

    public static File CONFIG_FILE = new File("testresource/config/config.xml");

    public void testLoadConfig() throws Exception {
        TestSuite suite = TestSuiteFactory.getInstance().load(CONFIG_FILE);
        assertEquals(1, suite.getTestCases().size());
    }

    public void testResolveChild() {
        TestSuite suite = new TestSuite(new File("foo/bar/quux.xml"));
        assertTrue(suite.resolve("a/b/c.txt").toURI().getPath().endsWith(
                "foo/bar/a/b/c.txt"));
    }

    public void testResolvePeer() {
        TestSuite suite = new TestSuite(new File("foo/bar/quux.xml"));
        assertTrue(suite.resolve("../b/c.txt").toURI().getPath().endsWith(
                "foo/b/c.txt"));
    }

    public void testResolveSpacesConfig() {
        TestSuite suite = new TestSuite(new File("a b/c/d.xml"));
        assertTrue(suite.resolve("../x/y.txt").toURI().getPath().endsWith(
                "a b/x/y.txt"));
    }

    public void testResolveSpacesRelative() {
        TestSuite suite = new TestSuite(new File("a/b/c/d.xml"));
        assertTrue(suite.resolve("../x%20y/z.txt").toURI().getPath().endsWith(
                "a/b/x y/z.txt"));
    }

}
