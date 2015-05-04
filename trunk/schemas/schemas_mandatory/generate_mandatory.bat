java -cp \saxon\saxon9he.jar net.sf.saxon.Transform -t -s:..\geoSciMLBasic.xsd -xsl:nillable2mandatory.xslt -o:geoSciMLBasic.xsd
java -cp \saxon\saxon9he.jar net.sf.saxon.Transform -t -s:..\geoSciMLExtension.xsd -xsl:nillable2mandatory.xslt -o:geoSciMLExtension.xsd
java -cp \saxon\saxon9he.jar net.sf.saxon.Transform -t -s:..\borehole.xsd -xsl:nillable2mandatory.xslt -o:borehole.xsd
java -cp \saxon\saxon9he.jar net.sf.saxon.Transform -t -s:..\geologicSpecimen.xsd -xsl:nillable2mandatory.xslt -o:geologicSpecimen.xsd
java -cp \saxon\saxon9he.jar net.sf.saxon.Transform -t -s:..\laboratoryAnalysis.xsd -xsl:nillable2mandatory.xslt -o:laboratoryAnalysis.xsd
java -cp \saxon\saxon9he.jar net.sf.saxon.Transform -t -s:..\laboratoryAnalysis-Specimen.xsd -xsl:nillable2mandatory.xslt -o:laboratoryAnalysis-Specimen.xsd
