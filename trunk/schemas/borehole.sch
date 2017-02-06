<?xml version="1.0" encoding="UTF-8"?>
<schema  see="http://www.opengis.net/spec/gsml/4.1/req/gsml4xsd-borehole/sch" xmlns="http://purl.oclc.org/dsdl/schematron" 
queryBinding="xslt2" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<include href="gsml4-core.sch"/>
    <xi:include xmlns:xi="http://www.w3.org/2001/XInclude" href="http://schemas.opengis.net/samplingSpatial/2.0/shapeTypeConsistent.sch" xpointer="element(/1/1)"/>
	    <xi:include xmlns:xi="http://www.w3.org/2001/XInclude" href="http://schemas.opengis.net/samplingSpatial/2.0/samplingCurve.sch" xpointer="element(/1/1)"/>
		
	<!--
        This schematron schema extension the Borehole XML encoding requirements of OGC GeoSciML 4.1, as specified
        in the requirements class: http://www.opengis.net/spec/gsml/4.1/req/gsml4xsd-borehole/sch
    -->
	<title>OGC GeoSciML 4.1 XML Borehole tests<br/>
	This schematron schema checks the borehole XML encoding requirements of OGC GeoSciML 4.1, as specified
        in the requirements class: http://www.opengis.net/spec/gsml/4.1/req/gsml4xsd-borehole/sch</title>
  <!-- this schematron does not provide any rule, just import statement to dependencies -->
	
	
	

</schema>
