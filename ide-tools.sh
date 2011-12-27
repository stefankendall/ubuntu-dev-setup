#!/bin/bash
IDEA_VERSION="111.139"
wget http://download.jetbrains.com/idea/ideaIU-$IDEA_VERSION.tar.gz
tar -xvzf ideaIU*
rm ideaIU*.tar.gz
mv idea-IU* /usr/lib
ln -s /usr/lib/idea* /usr/lib/idea
