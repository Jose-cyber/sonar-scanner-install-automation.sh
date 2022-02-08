#!/bin/bash

instalation_dir=~/SonarScannerCLI
if [ -d $instalation_dir ];then
    mkdir -p $instalation_dir
fi

echo "########## INSTALLING SONAR SCANNER ##########"
printf "Downloading... "
wget -q https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
printf "Complete!\n"

printf "Unpacking file... "
unzip -q sonar-scanner-cli-4.6.2.2472-linux.zip
rm -r sonar-scanner-cli-4.6.2.2472-linux.zip
printf "Complete!\n"

echo "Installing on "$instalation_dir
sudo mv sonar-scanner-4.6.2.2472-linux $instalation_dir

echo "Adding Sonar Scanner to PATH..."
echo 'export PATH="'$instalation_dir'/bin:$PATH"' >> ~/.bashrc

echo "Installation Complete."
echo "For more information, visit: https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner"
echo "To use sonar-scanner command, open a new terminal or run: source ~/.bashrc"

echo "---------------------------------------"
echo "+ URL:        localhost:9000          +"
echo "+ user:       admin                   +"
echo "+ password:   admin                   +"
echo "---------------------------------------"