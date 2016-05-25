package org.auscope.xml.servicetester;

import java.net.URI;

/**
 * An element count assertion, that is, the assertion that the number of
 * elements with a particular name in a response matches an integer.
 * 
 */
public class ElementCountAssertion implements Assertion {

    private final URI namespaceUri;
    private final String elementName;
    private final int elementCount;

    /**
     * Constructor.
     * 
     * @param namespaceUri
     *                element namespace URI
     * @param elementName
     *                element name
     * @param elementCount
     *                count of elements that it is asserted will occur int he
     *                document
     */
    public ElementCountAssertion(URI namespaceUri, String elementName,
            int elementCount) {
        this.namespaceUri = namespaceUri;
        this.elementName = elementName;
        this.elementCount = elementCount;
    }

    /**
     * @return element namespace URI
     */
    public URI getNamespaceUri() {
        return namespaceUri;
    }

    /**
     * @return element local name
     */
    public String getElementName() {
        return elementName;
    }

    /**
     * @return count of elements that it is asserted will occur in the document
     */
    public int getElementCount() {
        return elementCount;
    }

    /**
     * @return pretty-printed element name in the form {namespace}localname
     */
    public String getElementQualifiedName() {
        return "{" + namespaceUri.toString() + "}" + elementName;
    }

}
