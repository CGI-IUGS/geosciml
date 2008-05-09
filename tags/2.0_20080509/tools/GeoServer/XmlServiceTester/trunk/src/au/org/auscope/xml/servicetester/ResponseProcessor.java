package au.org.auscope.xml.servicetester;

import java.io.InputStream;

import org.apache.commons.logging.Log;

public interface ResponseProcessor {

    public void process(InputStream inputStream, Log log);

}
