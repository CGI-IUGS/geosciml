Set up the Philosopher example:

1. 
To install the philosopher example, please create a spatially enabled POSTGIS or Oracle database 
called 'deegreetest' and create a user 'deegreetest' with a password 'deegreetest'. 

2.
Afterwards run the appropriate scripts you find under $wfs_home$/WEB-INF/conf/scripts/philosopher/ to 
create the philosopher example tables. Postgis example: psql -d deegreetest -U deegreetest -f create_philosopher.sql

3.
Copy the appropriate featuretype definition from $wfs_home$/WEB-INF/conf/wfs/featuretypes/examplefeaturetypes/
philosopher/ into $wfs_home$/WEB-INF/conf/wfs/featuretypes. In case PostgreSQL/Postgis does not run on the same machine 
as the wfs (localhost) and port 5432 adapt the .xsd to the location and setting  of the database. Afterwards restart tomcat
or the service via the tomcat manager.

4.
Uncommend the app:Philosopher and app:Country section in the wfs_configuration.xml ($wfs_home$/WEB-INF/conf/wfs/) 
located in the <wfs:FeatureTypeList> element.

5. 
Fill the database by sending a WFS-Transaction request. You find the request under:
http://localhost:8080/deegree-wfs/client/client.html Go to the Example Philosopher dropdown menu and select in the Request
dropdown menue Transaction-> complex.xml. Submit the request by pressing 'Send'. Afterwards all other Philosopher
example requests should work fine.