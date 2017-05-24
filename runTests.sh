#!/bin/bash

CLASSPATH="$CLASSPATH":.:./build/classes

for i in ../../common/libs/*.jar
do
    CLASSPATH=$CLASSPATH:$i
done

export CLASSPATH

$JAVA_HOME/bin/java $* junit.textui.TestRunner org.apache.xml.security.test.AllTests
