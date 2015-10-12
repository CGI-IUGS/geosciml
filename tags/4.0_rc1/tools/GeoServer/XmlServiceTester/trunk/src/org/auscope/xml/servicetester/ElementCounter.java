/**
 * 
 */
package org.auscope.xml.servicetester;

import java.net.URI;
import java.util.HashMap;

/**
 * Counter of named elements.
 * 
 */
public class ElementCounter {

    /**
     * Map from element name in {namespace}localname form to count of
     * occurrences.
     */
    private final HashMap<String, Integer> elementNameToCountMap = new HashMap<String, Integer>();

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
        Integer i = elementNameToCountMap.get(key);
        if (i == null) {
            // no occurrences
            return 0;
        } else {
            // some occurrences
            return i;
        }
    }

    /**
     * Return count of elements.
     * 
     * @param namespaceUri
     *                namespace
     * @param elementName
     *                element name
     * @return
     */
    public int getElementCount(URI namespaceUri, String elementName) {
        return getElementCount(namespaceUri.toString(), elementName);
    }

    /**
     * Count an element
     * 
     * @param uri
     *                namespace
     * @param localName
     *                element local name
     */
    public void countElement(String uri, String localName) {
        String key = buildKey(uri, localName);
        Integer i = elementNameToCountMap.get(key);
        if (i == null) {
            // first occurrence
            elementNameToCountMap.put(key, 1);
        } else {
            // subsequent occurrence
            elementNameToCountMap.put(key, i + 1);
        }
    }

    /**
     * Build a string key for a qualified element name.
     * 
     * @param uri
     *                namespace
     * @param localName
     *                element local name
     * @return element name in {namespace}localname form
     */
    public String buildKey(String uri, String localName) {
        return "{" + uri + "}" + localName;
    }

}