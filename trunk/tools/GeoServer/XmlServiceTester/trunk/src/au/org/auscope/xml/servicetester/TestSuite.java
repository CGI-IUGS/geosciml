package au.org.auscope.xml.servicetester;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.commons.logging.Log;

public class TestSuite {

    private static final String STARS = "********";
    
    private URI configFileUri;

    private final List<TestCase> cases = new ArrayList<TestCase>();

    public TestSuite() {
        this(null);
    }

    public TestSuite(File configFile) {
        this.configFileUri = configFile.toURI();
    }

    public void addCase(TestCase c) {
        cases.add(c);
    }

    public List<TestCase> getTestCases() {
        return Collections.unmodifiableList(cases);
    }

    /**
     * @param log
     * @return true if success
     */
    public boolean execute(Log log) {
        log.info(STARS + " START " + STARS);
        List<TestReport> reports = new ArrayList<TestReport>();
        for (TestCase c : getTestCases()) {
            TestReport report = new TestReport(c.toString(), log);
            c.execute(report);
            reports.add(report);
        }
        log.info(STARS + " SUMMARY " + STARS);
        int total = reports.size();
        int passed = 0;
        int failed = 0;
        for (TestReport report : reports) {
            log.info(report);
            if (report.isPass()) {
                passed++;
            } else {
                failed++;
            }
        }
        assert total == passed + failed;
        log.info("Test cases: passed: " + passed + " failed: " + failed + " total: " + total);
        if (total == 0 || failed > 0) {
            log.info(STARS + " FAILURE " + STARS);
            return false;
        } else {
            log.info(STARS + " SUCCESS " + STARS);
            return true;
        }

    }

    /**
     * 
     * 
     * @param fileRelativeToConfigFile
     * @return
     */
    public File resolve(String pathRelativeToConfigFile) {
        if (pathRelativeToConfigFile == null) {
            return null;
        }
        if (configFileUri == null) {
            return new File(pathRelativeToConfigFile);
        }
        URI relativeUri;
        try {
            relativeUri = new URI(pathRelativeToConfigFile);
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
        URI absoluteUri = configFileUri.resolve(relativeUri);
        return new File(absoluteUri.getPath());
    }
}
