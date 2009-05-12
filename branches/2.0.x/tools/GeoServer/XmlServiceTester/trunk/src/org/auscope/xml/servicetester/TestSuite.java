package org.auscope.xml.servicetester;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.commons.logging.Log;

/**
 * A collection of test cases.
 * 
 */
public class TestSuite {

    /**
     * ASCII art used for separator in report.
     */
    private static final String STARS = "********";

    /**
     * test-suite file path for resolution of relative file URIs
     */
    private final URI configFileUri;

    /**
     * list of schema locations at the top level of the file FIXME: not
     * implemented
     */
    private final List<SchemaLocation> schemaLocations;

    /**
     * The test cases in the suite.
     */
    private final List<TestCase> cases = new ArrayList<TestCase>();

    /**
     * Convenience constructor used for programmatic construction of a test
     * suite, where there is no test-suite file.
     */
    public TestSuite() {
        this(null, null);
    }

    /**
     * Construct a test-suite setting the path for resolution of relative file
     * URIs.
     * 
     * <p>
     * 
     * The test-suite file is not accessed. To create a TestSuite from a
     * test-suite file, see {@link TestSuiteFactory}.
     * 
     * @param configFile
     *                test-suite file path for resolution of relative file URIs
     * 
     */
    public TestSuite(File configFile) {
        this(configFile, null);
    }

    /**
     * Construct a test suite from a configuration file and list of top-level
     * schema locations.
     * 
     * <p>
     * 
     * The test-suite file is not accessed. To create a TestSuite from a
     * test-suite file, see {@link TestSuiteFactory}.
     * 
     * @param configFile
     *                test-suite file path for resolution of relative file URIs
     * @param schemaLocations
     *                list of schema locations at the top level of the file
     *                FIXME: not implemented
     */
    public TestSuite(File configFile, List<SchemaLocation> schemaLocations) {
        this.configFileUri = configFile.toURI();
        this.schemaLocations = schemaLocations;
    }

    /**
     * Add a test case to the suite.
     * 
     * @param c
     *                test case
     */
    public void addCase(TestCase c) {
        cases.add(c);
    }

    /**
     * Get a list of test cases in the suite.
     * 
     * @return unmodifiable list of test cases.
     */
    public List<TestCase> getTestCases() {
        return Collections.unmodifiableList(cases);
    }

    /**
     * Run the test cases, logging results to log, returning true on success of
     * all, else false.
     * 
     * @param log
     *                log to which report and diagnostics are written
     * @return true on success, false on failure
     */
    public boolean run(Log log) {
        /*
         * First run all the tests, logging output and saving the test reports
         * for later.
         */
        log.info(STARS + " START " + STARS);
        int i; // test sequence counter
        List<TestReportLog> reports = new ArrayList<TestReportLog>();
        int total = getTestCases().size();
        i = 0;
        for (TestCase testCase : getTestCases()) {
            i++;
            log.info("Started " + formatSequence(i, total) + ": " + testCase);
            TestReportLog report = new TestReportLog(testCase.toString(), log);
            testCase.run(report); // test is run here
            reports.add(report);
            log.info("Finished " + formatSequence(i, total));
        }
        log.info(STARS + " SUMMARY " + STARS);
        /*
         * Some tests might have long output, making it hard to see what
         * happened in the log, so now we use the saved reports to summarise the
         * results.
         */
        int passed = 0;
        int failed = 0;
        i = 0;
        for (TestReportLog report : reports) {
            i++;
            if (report.isPass()) {
                passed++;
                log.info(formatSequence(i, total) + ": " + report.getReport());
            } else {
                failed++;
                log.error(formatSequence(i, total) + ": " + report.getReport());
            }
        }
        if (total != passed + failed) {
            throw new RuntimeException("Internal consistency error");
        }
        /*
         * And now generate a final statistics line and overall status report.
         */
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
     * @return formatted i/total string
     */
    private String formatSequence(int i, int total) {
        return String.format("%d/%d", i, total);
    }

    /**
     * Convert a URI relative to the test-suite file into an absolute file.
     * 
     * <p>
     * 
     * If the URI is null or there is no test-suite file, null is returned.
     * 
     * @param fileRelativeToConfigFile
     *                URI relative to test-suite file.
     * @return absolute File
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
