REM endorsed dirs mechanism required to override JAXB in boot classpath
@java -Xmx512m -Djava.endorsed.dirs="%~dp0\..\lib" -jar "%~dp0\..\lib\XmlserviceTester.jar" %*