# Proiect Testare
## Anul 3, IE-ID

## Studenti:
* Boda Levente
* Oanea George
* Popa Vlad
* Strimbu Iudita

<br/>

## Overview
* Project contains 2 dummy cpp projects
* Projects each contain 1 component, but can be extended
* Build system used is CMake
* First role of the project is to automate build system, by creating build scripts, which will automatically build each project individually (`do_build.sh`), or all projects (`do_build_all.sh`)
* Second role is to automate deployment to hardware, which in our case is simulated by a Virtual Machine

<br/>

## Prerequisites
* Running VM (for eg. VMWare, VBox etc.): `sudo install virtualbox`
* Setting up port forwarding on VM for SSH (For VBox):
  * Advanced -> Port Forwarding
  * Add a new entry
  * Name: SSH
  * Protocol: TCP
  * Host IP: 127.0.0.1
  * Guest IP: 10.0.2.15
  * Guest Port: 22
* CMake: `sudo snap install cmake --classic`
* Give execute rights to .sh scripts: `chmod 777 do_build_all.sh` etc.

<br/>

## Build
* Run `./do_build_all.sh` to build all projects
* For individual building, run `./ProjectA/do_build.sh`
* To build manually:
  * Navigate to project folder, for eg. `cd ProjectA/`
  * Create folder to create build into, for eg. `mkdir build`
  * Navigate to created folder: `cd build`
  * Run cmake: `cmake ..`
  * Run make: `make`
  * Binaries will be created to build/ folder

## Deploy
* Modify `ssh_path` in `do_deploy_all.sh` to match your VM's username/IP address
* Execute `do_deploy_all.sh`