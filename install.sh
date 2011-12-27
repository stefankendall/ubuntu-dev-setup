#!/bin/bash
cp ./etc/environment /etc/environment

GRADLE="gradle-1.0-milestone-6"
GROOVY="groovy-binary-1.8.5"

mkdir -p tools

rm -rf ./tools/*

wget http://dist.groovy.codehaus.org/distributions/$GROOVY.zip
unzip $GROOVY.zip 
rm $GROOVY.zip
mv groovy* ./tools

wget http://repo.gradle.org/gradle/distributions/$GRADLE-all.zip 
unzip $GRADLE-all.zip 
rm $GRADLE-all.zip
mv gradle* ./tools

cp -R ./tools /

rm /tools/gradle
ln -s /tools/gradle* /tools/gradle

rm /tools/groovy
ln -s /tools/groovy* /tools/groovy
source /etc/environment
