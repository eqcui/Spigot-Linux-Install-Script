#!/bin/bash
sudo apt update && sudo apt upgrade && sudo apt install zip && sudo apt install zip && sudo apt install git && sudo apt install curl && sudo apt-get install openjdk-18-jre -y

cd && mkdir minecraft && cd minecraft

wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

git config --global --unset core.autocrlf

java -jar BuildTools.jar
