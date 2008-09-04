#!/bin/sh
BASEDIR="`dirname $0`/.."
# endorsed dirs mechanism required to override JAXB in boot classpath
exec java -Xmx512m -Djava.endorsed.dirs="$BASEDIR/lib" \
    -jar "$BASEDIR/lib/XmlServiceTester.jar" "$*"
