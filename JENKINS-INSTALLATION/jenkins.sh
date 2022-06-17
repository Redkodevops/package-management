``` sh
### Jenkins Script Installation
```

#!/bin/bash
#Website for Jenkins documentation = "https://www.jenkins.io/doc/"
#Creating hostname jenkins
sudo hostname jenkins
#Installing nano unzip wget 
sudo yum install nano unzip wget git -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
#Add required dependencies for the jenkins package
sudo yum install java-11-openjdk
sudo yum install jenkins
sudo systemctl daemon-reload
#Enable the Jenkins service to start at boot with the command
sudo systemctl enable jenkins
#Start the Jenkins service with the command
sudo systemctl start jenkins
#Checking the status of the Jenkins service using the command:
sudo systemctl status jenkins
sudo su - ec2-user

``` sh
###Unlocking Jenkins and Creating temporary password
```
#When you first access a new Jenkins instance, you are asked to unlock it using an automatically-generated password.
#Browse to http://localhost:8080 (or whichever port you configured for Jenkins when installing it) and wait until the Unlock Jenkins page appears.
