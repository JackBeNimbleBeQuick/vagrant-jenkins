# Jenkins Ansible / Vagrant Build
This is a stripped down implementation from:
https://github.com/geerlingguy/ansible-role-jenkins:

## Why strip down a working implementation
- as an Instructional Ansible example the geerlingguy examples are real hard to figure out due to all the modules and external dependencies
- further as with all full implementations that have hard dependencies and assumptions, things often times fall out of sync and break without warning when one of the fore-mentioned changes

### The goals of this current collection are:
  - to have a working example that relies on as few external none transparent dependencies as possible
  - to have all Ansible in one place using the bento/ubuntu-18.04 vm as a starting point
  - to provide safe / re-usable test environment for unit test automation explorations without impacting the current production Jenkins / Github operations
  
## Required
 - [Virtual Box](https://www.virtualbox.org/wiki/Downloads) 
 - [Vagrant](https://www.vagrantup.com/downloads.html)

## Set up
- git clone vagrant.git and from the command line enter:
- ... vagrant up

  - often times the full install does not all happen in the first go, therefore run the following as needed to get the build to complete
    - ... vagrant provision

run shell script from vagrant command line to finish out the setups
 - ... vagrant ssh
 - ... $ /vagrant/bin/setup.sh

## Connect
- edit your /etc/hosts file to add:
 >
    ...
    127.0.0.1 localhost
    ...
    #add the following
    10.10.10.100 jenkins.local.dev


  + once the service is running then you should be able to connect to Jenkins from your browser using either http://jenkins.local.dev:8080 or http:10.10.10.8080
