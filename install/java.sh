#! /bin/bash


# http://tecadmin.net/install-oracle-java-8-jdk-8-ubuntu-via-ppa/#

sh `dirname $0`/../util/touch_tool.sh java oracle-java8-installer
echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle" >> ~/.zshrc
source ~/.zshrc
