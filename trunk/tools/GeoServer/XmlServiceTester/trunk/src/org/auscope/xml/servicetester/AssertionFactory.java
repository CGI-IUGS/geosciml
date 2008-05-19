package org.auscope.xml.servicetester;

import java.net.URI;
import java.net.URISyntaxException;

import org.auscope.xml.servicetester.generated.AssertionType;
import org.auscope.xml.servicetester.generated.ElementCountAssertionType;

public class AssertionFactory {

    private static final AssertionFactory INSTANCE = new AssertionFactory();

    public static AssertionFactory getInstance() {
        return INSTANCE;
    }

    private AssertionFactory() {
    }

    public Assertion build(AssertionType assertionType) {
        if (assertionType instanceof ElementCountAssertionType) {
            return build((ElementCountAssertionType) assertionType);
        } else {
            throw new RuntimeException("Unsupported assertion type: "
                    + assertionType.getClass().getSimpleName());
        }
    }

    private Assertion build(ElementCountAssertionType assertionType) {
        try {
            return new ElementCountAssertion(new URI(assertionType
                    .getNamespaceUri()), assertionType.getElementName(),
                    assertionType.getElementCount().intValue());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }
    
}
