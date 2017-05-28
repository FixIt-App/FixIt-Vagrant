# Vagrant machines for FixIt
This project helps with an initial setup of virtual machines in a development
environment to run the FixIt Web Application

## Getting started
To setup these machines you'll need the following installed in your computer

+ Git (2.12.2 For Windows, 2.11.0 For OSX)
+ VirtualBox (5.1.12)
+ Vagrant (1.9.3)

Once you have the previous software installed locally in your computer, run the
following commands to get the servers going. If you don't hava experience using vagrant, jump to the detailed steps section.

_**1. Clone the FixIt-Vagrant Project**_
```
git clone https://github.com/FixIt-App/FixIt-Vagrant.git
```
_**3. Change to root folder of the project**_
```
cd FixIt-Vagrant
```

_**4. Create the following folders**_
```
mkdir projects
mkdir projects/server
```

_**5. Start virtual machines**_
```
vagrant up
```

_**6. Verify virtual machine is up and running**_
```
vagrant status
```

_**7. ssh into the machine**_
```
vagrant ssh server
```

## Folder Structure
```
| .gitignore
| provision-server.sh
| readme.md
| Vagrantfile
```

### Files
**.gitignore**
The instructions to ignore files for git

**provision-server.sh**
All the shell instructions to provision a the api server

**readme.md**
This file

**Vagrantfile**
The main vagrant file, defining each of the server's configuration. Operating system, IP addresses, port mapping, etc...

# Detailed Steps
As every application depends on multiple parts working together, those different parts will be running from virtual machines trying to emulate the production environment as closely as possible.

Setting up the virtual machines to properly work in the development environment is a key element to good development.



**Clone the Vagrant project from GitHub**

Once you have access to git clone https://github.com/FixIt-App/FixIt-Vagrant.git clone the project in your local computer

```
git clone git clone https://github.com/FixIt-App/FixIt-Vagrant.git
```

**Create The Necessary Folders**

When getting the repository from Bitbucket it will create a folder named hs-vagrant. Move into that folder and create a new projects folder. Create api and api-docs folders inside projects.

```
cd echo-node-vagrant
mkdir projects
mkdir projects/server
```

**Start Virtual Machines**

In this step you'll want to go and grab some coffee since this process make take a while depending on the speed of your internet connection. You'll be downloading images with ubuntu 16.04 LTS into your local computer and automatically setting up 1  server that contains, de django server, queue server and db server, all in one to simplify de development process. Nevertheless, the developer must take into account that in production the application is a distribuited application with multiple hosts.

You'll want to start the machine from the hs-vagrant folder

```
cd echo-vagrant
vagrant up
```

**Test the servers are running**

Once the previous step completes you need to check the 3 machines are running. When running the vagrant command the machine must have a running status
```
vagrant status
```

**SSH into each machine**

You now need to verify you can actually establish an ssh session with each of the machines. For each of the machines you should be able to login into them without the need for a username or password. You also should be able to go into the projects folder you created in one of the previous steps

*In the command line for your local computer.*
```
vagrant ssh server
```

*Now that you are inside the api machine, verify you can go to projects folder*
```
cd projects
```

*Clone the FixIt-Server project*
```
git clone https://github.com/FixIt-App/FixIt-Server.git server
```
*SSH into the server vm and follow the instructions in the fixit server wiki*