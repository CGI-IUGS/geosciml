/**
 * 
 */
package org.auscope.xml.servicetester;

import java.net.URI;
import java.util.HashMap;

public class ElementCounter {

    private final HashMap<String, Integer> elementCountMap = new HashMap<String, Integer>();

    /**
     * Return the number of occurrences of the start of this element that have
     * been seen.
     * 
     * @param uri
     *                namespace in which element is defined
     * @param localName
     *                name of the element
     * @return occurrence count
     */
    public int getElementCount(String uri, String localName) {
        String key = buildKey(uri, localName);
        Integer i = elementCountMap.get(key);
        if (i == null) {
            // no occurrences
            return 0;
        } else {
            // some occurrences
            return i;
        }
    }

    public int getElementCount(URI namespaceUri, String elementName) {
        return getElementCount(namespaceUri.toString(), elementName);
    }

    public void countElement(String uri, String localName) {
        String key = buildKey(uri, localName);
        Integer i = elementCountMap.get(key);
        if (i == null) {
            // first occurrence
            elementCountMap.put(key, 1);
        } else {
            // subsequent occurrence
            elementCountMap.put(key, i + 1);
        }
    }

    /**
     * Build a key for this element.
     * 
     * @param uri
     * @param localName
     * @return
     */
    public String buildKey(String uri, String localName) {
        return "{" + uri + "}" + localName;
    }
    
}