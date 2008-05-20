package org.auscope.xml.servicetester;

import java.net.URI;

public class ElementCountAssertion implements Assertion {

    private final URI namespaceUri;
    private final String elementName;
    private final int elementCount;

    public ElementCountAssertion(URI namespaceUri, String elementName,
            int elementCount) {
        this.namespaceUri = namespaceUri;
        this.elementName = elementName;
        this.elementCount = elementCount;
    }

    public URI getNamespaceUri() {
        return namespaceUri;
    }

    public String getElementName() {
        return elementName;
    }

    public int getElementCount() {
        return elementCount;
    }

    public String getElementQualifiedName() {
        return "{" + namespaceUri.toString() + "}" + elementName;
    }

}
