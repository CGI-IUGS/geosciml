package org.auscope.xml.servicetester;

public interface Request {

    /**
     * Submit this request to obtain a response.
     * 
     * <p>
     * 
     * Caller must call dispose() on response to release resources.
     * 
     * @return newly created response
     */
    public Response submit();

}