package au.org.auscope.xml.servicetester;

import java.io.IOException;
import java.io.InputStream;

public class Case {

    private final Request request;
    private final Response response;

    public Case(Request request, Response response) {
        this.request = request;
        this.response = response;
    }

    public void execute() {
        InputStream inputStream = null;
        try {
            inputStream = request.execute();
            response.consume(inputStream);
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    // ignore, we tried
                }
            }
        }

    }

}
