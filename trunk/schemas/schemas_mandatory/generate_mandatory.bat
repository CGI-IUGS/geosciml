java -cp \saxon\saxon9he.jar net.sf.saxon.Transform -t -s:..\geoSciMLBasic.xsd -xsl:nillable2mandatory.xslt -o:geoSciMLBasic_m.xsd
java -cp \saxon\saxon9he.jar net.sf.saxon.Transform -t -s:..\geoSciMLExtension.xsd -xsl:nillable2mandatory.xslt -o:geoSciMLExtension_m.xsd
java -cp \saxon\saxon9he.jar net.sf.saxon.Transform -t -s:..\borehole.xsd -xsl:nillable2mandatory.xslt -o:borehole_m.xsd

