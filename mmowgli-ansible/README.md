# Mmowgli Ansible Configuration Playbook

## Overview

This playbook requires that you have provisioned servers ready to configure.  Those servers should be listed in the 'mmowgli.hosts' file (examples provided).  There are three server roles (in addition to the 
'base' role that applies to all servers):

- *dbfile*: A database/fileserver for shared data
- *tomcat*: Tomcat application servers
- *web*: An apache load-balancing webserver

Ansible 2.x is required for this playbook.

These have only been tested with CentOS 6.7.

## Usage

Adjust the variables if you need to (variables.yml). Some of the variables are passwords which are generated into a "credentials/mmowgli" directory if you don't supply your own. If you do want to use your own passwords, you can either edit the variables file (not great, since it can make it brittle to update from version control), or pre-create the 


Run the playbook with a command like the following:

```bash
ansible-playbook -i mmowgli.hosts 
```

Adjust the command if you need to run as a sudoer or if root needs to connect with a supplied password. See `ansible-playbook --help` for more information.

