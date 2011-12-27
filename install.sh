#!/bin/bash
cp ./etc/environment /etc/environment

GRADLE="gradle-1.0-milestone-6"
GROOVY="groovy-binary-1.8.5"

mkdir -p tools

wget http://dist.groovy.codehaus.org/distributions/$GROOVY.zip
if [ ! -e ./tools/$GROOVY ]
then
unzip $GROOVY.zip 
rm $GROOVY.zip
mv groovy* ./tools
fi


wget http://repo.gradle.org/gradle/distributions/$GRADLE-all.zip 
if [ ! -e ./tools/$GRADLE ]
then
unzip $GRADLE-all.zip 
rm $GRADLE-all.zip
mv gradle* ./tools
fi

cp -R ./tools /

rm /tools/gradle
ln -s /tools/$GRADLE /tools/gradle

rm /tools/groovy
ln -s /tools/$GROOVY /tools/groovy

