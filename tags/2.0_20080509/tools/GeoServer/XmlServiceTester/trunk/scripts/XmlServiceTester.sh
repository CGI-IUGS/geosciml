#!/bin/sh
exec java -Xmx512m -jar "`dirname $0`/../lib/XmlServiceTester.jar" "$*"
