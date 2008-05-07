package au.org.auscope.xml.servicetester;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Config {

    private URI configFileUri;

    private final List<Case> cases = new ArrayList<Case>();

    public Config() {
        this(null);
    }

    public Config(File configFile) {
        this.configFileUri = configFile.toURI();
    }

    public void addCase(Case c) {
        cases.add(c);
    }

    public List<Case> getCases() {
        return Collections.unmodifiableList(cases);
    }

    public void execute() {
        for (Case c : getCases()) {
            c.execute();
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
