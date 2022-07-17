#!/bin/bash
sudo apt update && sudo apt upgrade
sudo apt install zip && sudo apt install zip && sudo apt install git && sudo apt install curl 

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java 18.0.1.1-librca

cd
mkdir minecraft
cd minecraft

wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar

git config --global --unset core.autocrlf

java -Xmx1024M -jar BuildTools.jar
