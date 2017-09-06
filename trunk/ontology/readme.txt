Shapechange is installed in c:\sc (with EA jar copied in the lib directory, although http://shapechange.net/get-started/ suggest moving them to Windows system folder.
I tweaked the java command line to look into lib instead).
  
The best way to work with geosciml configuration filesis to create a Ontology folder in c:\sc\ (c:\sc\Ontology) 
and SVN checkout https://www.seegrid.csiro.au/subversion/GeoSciML/trunk/ontology 
so config files are easily accessible from ShapeShange.

The gsml4_owl.bat and gsml4.xml assumes c:\sc\Ontology, just tweak as needed.

I also brute force the java executable to my 32bit instance (JAVA_HOME and JAVA32HOME with -d32 parameters did not work for me, not sure why).

*you will most probably* have to tweak this.

I suggest you copy you local version of gsml4.xml and gsml4_owl.bat to avoid conflicts with future version loaded on SVN.