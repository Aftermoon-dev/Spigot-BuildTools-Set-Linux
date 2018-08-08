# Minecraft Spigot Installer by Darkhost
# V180809
# Debian / Ubuntu Version
# Parameter 1 - Spigot's Version (if blank, set latest.)

sudo apt-get install git openjdk-8-jre-headless
git config --global --unset core.autocrlf

if [ -f "BuildTools.jar" ] ; then
        echo "BuildTools.jar is already in this folder. Skipping Download!"
else
        echo "BuildTools.jar is not exist in this folder. Starting Download!"
        wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
fi

if ["$1" == ""] 
then
	java -jar BuildTools.jar -rev latest
else 
	java -jar BuildTools.jar -rev $1
fi