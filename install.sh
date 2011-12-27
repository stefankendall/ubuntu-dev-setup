#!/bin/bash
cp ./etc/environment /etc/environment

GRADLE="gradle-1.0-milestone-6"
GROOVY="groovy-binary-1.8.5"

if [ ! -e ./$GROOVY.zip ]
then
wget http://dist.groovy.codehaus.org/distributions/$GROOVY.zip
fi

if [ ! -e ./tools/$GROOVY ]
then
unzip $GROOVY.zip -d $GROOVY
mv $GROOVY/* ./tools
fi

if [ ! -e ./$GRADLE-all.zip ]
then
wget http://repo.gradle.org/gradle/distributions/$GRADLE-all.zip 
fi

if [ ! -e ./tools/$GRADLE ]
then
unzip $GRADLE-all.zip -d $GRADLE
mv $GRADLE/* ./tools
fi

cp -R ./tools /

rm /tools/gradle
ln -s /tools/$GRADLE /tools/gradle

rm /tools/groovy
ln -s /tools/$GROOVY /tools/groovy

