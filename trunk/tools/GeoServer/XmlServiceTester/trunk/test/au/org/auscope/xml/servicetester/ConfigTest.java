package au.org.auscope.xml.servicetester;

import java.io.File;

import junit.framework.TestCase;

public class ConfigTest extends TestCase {

    public static File CONFIG_FILE = new File("testresource/config/config.xml");

    public void testLoadConfig() throws Exception {
        Config config = ConfigFactory.getInstance().load(CONFIG_FILE);
        assertEquals(1, config.getCases().size());
    }

    public void testResolveChild() {
        Config config = new Config(new File("foo/bar/quux.xml"));
        assertTrue(config.resolve("a/b/c.txt").toURI().getPath().endsWith(
                "foo/bar/a/b/c.txt"));
    }

    public void testResolvePeer() {
        Config config = new Config(new File("foo/bar/quux.xml"));
        assertTrue(config.resolve("../b/c.txt").toURI().getPath().endsWith(
                "foo/b/c.txt"));
    }

    public void testResolveSpacesConfig() {
        Config config = new Config(new File("a b/c/d.xml"));
        assertTrue(config.resolve("../x/y.txt").toURI().getPath().endsWith(
                "a b/x/y.txt"));
    }

    public void testResolveSpacesRelative() {
        Config config = new Config(new File("a/b/c/d.xml"));
        assertTrue(config.resolve("../x%20y/z.txt").toURI().getPath().endsWith(
                "a/b/x y/z.txt"));
    }

}
