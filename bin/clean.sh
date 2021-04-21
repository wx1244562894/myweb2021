#!/bin/bash  

ARG0="$0"
while [ -h "$ARG0" ]; do
  ls=`ls -ld "$ARG0"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    ARG0="$link"
  else
    ARG0="`dirname $ARG0`/$link"
  fi
done

DIRNAME="$(cd `dirname $ARG0`; pwd)"

cd $DIRNAME/..

export JAVA_HOME=`/usr/libexec/java_home -v 1.8.0`
export MAVEN_HOME=~/Documents/Z/usr/local/maven/apache-maven-3.3.9

PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$PATH

mvn clean
