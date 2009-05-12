package org.auscope.xml.servicetester;

import java.net.URI;
import java.net.URISyntaxException;

import org.auscope.xml.servicetester.generated.AssertionType;
import org.auscope.xml.servicetester.generated.ElementCountAssertionType;

/**
 * The ugly business of manufacturing Assertions.
 * 
 */
public class AssertionFactory {

    /**
     * Prevent instantiation.
     */
    private AssertionFactory() {
    }

    /**
     * Build an Assertion from a JAXB AssertionType (found in a test-suite
     * file).
     * 
     * @param assertionType
     * @return
     */
    public static Assertion build(AssertionType assertionType) {
        if (assertionType instanceof ElementCountAssertionType) {
            return build((ElementCountAssertionType) assertionType);
        } else {
            throw new RuntimeException("Unsupported assertion type: "
                    + assertionType.getClass().getSimpleName());
        }
    }

    /**
     * Build an element count assertion from a JAXB deserialised element count
     * assertion.
     * 
     * @param assertionType
     * @return
     */
    private static Assertion build(ElementCountAssertionType assertionType) {
        try {
            return new ElementCountAssertion(new URI(assertionType
                    .getNamespaceUri()), assertionType.getElementName(),
                    assertionType.getElementCount().intValue());
        } catch (URISyntaxException e) {
            throw new RuntimeException(e);
        }
    }

}
