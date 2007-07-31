NOTE: This version of the schemas refers to external schemas that are not yet public.
Therefore, you must configure you XML editor / validator with a Oasis Catalog and instruct
it to read local copies of the schemas that you will get from the SVN. Otherwise, the schemas 
(and instance documents) won't validate.

see https://www.seegrid.csiro.au/twiki/bin/view/CGIModel/ConfiguringXmlValidatorsForGeoSciML 
for complete instruction

2007-07-31
WARNING: Known XMLSpy issue - Gsml.xsd does not validate.
There is a known problem about XMLSpy
see: http://www.altova.com/forum/default.aspx?g=posts&t=7404

This problem actually show for Gsml.xsd.  As long as you don't open this file in Schemas/WSDL mode, the xsd and instances validate fine.

