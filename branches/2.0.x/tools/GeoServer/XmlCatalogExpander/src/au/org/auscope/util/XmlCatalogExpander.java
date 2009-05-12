package au.org.auscope.util;

import java.io.File;
import java.io.FileFilter;
import java.io.FileWriter;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

/**
 * Expand an XML Catalog by appending explicit system and uri entries for each
 * rewriteSystem and rewriteURI entry respectively.
 * 
 * <p>
 * 
 * Eclipse does not support rewrite entries, but will honour the entries
 * appended by this program.
 * 
 * <p>
 * 
 * Usage: program input.xml output.xml
 * 
 */
public class XmlCatalogExpander {

    /**
     * @param directory
     * @param filter
     * @return list of files matching filter in directory and its children
     */
    public static List<File> recursiveListFiles(File directory,
            FileFilter filter) {
        List<File> files = new ArrayList<File>();
        for (File f : directory.listFiles()) {
            if (f.isDirectory()) {
                files.addAll(recursiveListFiles(f, filter));
            } else if (filter.accept(f)) {
                files.add(f);
            }
        }
        return files;
    }

    /**
     * Append an element to outputRootElement for every .xsd file found under
     * the directory named rewritePrefix (relative to catalog file).
     * 
     * @param outputRootElement
     * @param catalogFile
     * @param startString
     *                rewrite start string
     * @param rewritePrefix
     * @param elementName
     *                either system or uri
     * @param attributeName
     *                either systemId or name
     * @throws Exception
     */
    public static void appendElements(Element outputRootElement,
            File catalogFile, String startString, String rewritePrefix,
            String elementName, String attributeName) throws Exception {
        File catalogDirectory = catalogFile.getParentFile();
        File rewriteDirectory = new File(catalogDirectory.getPath()
                + File.separator + rewritePrefix);
        URI catalogDirectoryUri = catalogDirectory.toURI();
        URI rewriteDirectoryUri = rewriteDirectory.toURI();
        URI baseUri = new URI(startString);

        List<File> files = recursiveListFiles(rewriteDirectory,
                new FileFilter() {
                    public boolean accept(File pathname) {
                        return pathname.getPath().endsWith(".xsd");
                    }
                });
        Collections.sort(files);
        for (File file : files) {
            URI uri = file.toURI();
            Element uriElement = outputRootElement.addElement(elementName);
            catalogDirectory.toURI().getPath();
            file.toURI().getPath();
            uriElement.addAttribute(attributeName, baseUri.resolve(
                    rewriteDirectoryUri.relativize(uri)).toString());
            uriElement.addAttribute("uri", catalogDirectoryUri.relativize(uri)
                    .toString());
        }
    }

    public static void main(String[] args) throws Exception {
        if (args.length != 2) {
            System.err.println("Usage: java -jar XmlCatalogExpander.jar"
                    + " input.xml output.xml");
            System.exit(1);
        }
        File inputFile = new File(args[0]);
        File outputFile = new File(args[1]);
        if (inputFile.equals(outputFile)) {
            System.err.println("input file same as output file");
            System.exit(1);
        }
        // input
        SAXReader saxReader = new SAXReader();
        Document inputDocument = saxReader.read(inputFile);
        Element inputRootElement = inputDocument.getRootElement();
        // copy
        Document outputDocument = DocumentHelper.createDocument();
        outputDocument.setDocType(inputDocument.getDocType());
        Element outputRootElement = inputRootElement.createCopy();
        outputDocument.setRootElement(outputRootElement);
        outputRootElement.addComment(" Entries below automatically generated"
                + " from rewrite entries above ");
        // append system rewrites to output
        for (Iterator<?> i = inputRootElement.elementIterator("rewriteSystem"); i
                .hasNext();) {
            Element e = (Element) i.next();
            String startString = e.attributeValue("systemIdStartString");
            String rewritePrefix = e.attributeValue("rewritePrefix");
            appendElements(outputRootElement, inputFile, startString,
                    rewritePrefix, "system", "systemId");
        }
        // append uri rewrites to output
        for (Iterator<?> i = inputRootElement.elementIterator("rewriteURI"); i
                .hasNext();) {
            Element e = (Element) i.next();
            String startString = e.attributeValue("uriStartString");
            String rewritePrefix = e.attributeValue("rewritePrefix");
            appendElements(outputRootElement, inputFile, startString,
                    rewritePrefix, "uri", "name");
        }
        // write output
        OutputFormat format = OutputFormat.createPrettyPrint();
        XMLWriter writer = new XMLWriter(new FileWriter(outputFile), format);
        writer.write(outputDocument);
        writer.close();
    }

}
