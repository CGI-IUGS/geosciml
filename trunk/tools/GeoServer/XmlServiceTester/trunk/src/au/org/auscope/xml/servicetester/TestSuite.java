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
        int i;
        List<TestReport> reports = new ArrayList<TestReport>();
        int total = getTestCases().size();
        i = 0;
        for (TestCase testCase : getTestCases()) {
            i++;
            log.info("Started " + formatSequence(i, total) + ": "
                    + testCase);
            TestReport report = new TestReport(testCase.toString(), log);
            testCase.run(report);
            reports.add(report);
            log.info("Finished " + formatSequence(i, total));
        }
        log.info(STARS + " SUMMARY " + STARS);
        int passed = 0;
        int failed = 0;
        i = 0;
        for (TestReport report : reports) {
            i++;
            if (report.isPass()) {
                passed++;
                log.info(formatSequence(i, total) + ": " + report);
            } else {
                failed++;
                log.error(formatSequence(i, total) + ": " + report);
            }
        }
        if (total != passed + failed) {
            throw new RuntimeException("Internal consistency error");
        }
        log.info("Test cases: passed: " + passed + " failed: " + failed
                + " total: " + total);
        if (total == 0 || failed > 0) {
            log.error(STARS + " FAILURE " + STARS);
            return false;
        } else {
            log.info(STARS + " SUCCESS " + STARS);
            return true;
        }

    }

    /**
     * Return string to represent i out of total.
     * 
     * @param i
     * @param total
     * @return
     */
    private String formatSequence(int i, int total) {
        return String.format("%d/%d", i, total);
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
