# ELK-Proxy-Ingest
A standalone pre-production deployable one-node ELK (Opensource) cluster for rapid deployment in platform and data agnostic environments. This is an OpenDistro Elasticsearch and Kibana Stack provisioned with Logstash, Git, NGINX and Ansible playbooks.
#README:
#Install ELK
#Harden Server
#Install certbot and NGINX, issue cert


# Installed Software:
1. Elasticsearch OpenDistro
2. Kibana OpenDistro
3. OpenSSL
4. NGINX
5. Git
6. Ansible
7. httpd-tools*
8. Logstash v7.2*
9. Certbot*
10. JAVA JDK 8, and 11*
11. vim*

* means optional software.

# System Files Modifyed:
/etc/elasticserarch/
/etc/kibana/
/etc/nginx/nginx.conf
/etc/ssh/sshd_config <= allow remote login using passwords
/etc/ansible/roles/opendistro_standalone_installation
git init;git add .;git commit -m "First commit";
19 files changed, 513 insertions(+)
 create mode 100644 .bash_history
 create mode 100644 .bash_logout
 create mode 100644 .bash_profile
 create mode 100644 .bashrc
 create mode 100644 .ssh/authorized_keys
 create mode 100644 README
 create mode 100755 certgen
 create mode 100755 curl.js
 create mode 100644 elasticinit.curl
 create mode 100644 elasticsearch.yml.orig
 create mode 100755 harden.sh
 create mode 100644 jvm.options
 create mode 100644 license
 create mode 100644 nginx.conf
 create mode 100755 nginx.sh
 create mode 100644 sanvada
 create mode 100755 startinit.sh
 create mode 100644 usefulcommands.txt
 create mode 100644 wipe.sh


# OPTIONAL:
-wipe.sh :: To remove all previous keys, history and customizations to easily share with others.
-harden.sh :: enabled by default.

# ELASTICSEARCH:

File type		Location
Elasticsearch home	/usr/share/elasticsearch/
Configuration files	/etc/elasticsearch
Environment variables	/etc/sysconfig/elasticsearch
Logs			/var/log/elasticsearch
Shard data		/var/lib/elasticsearch

# KIBANA:
# NGINX:
  Basic SSL default. More advanced options may be provided later.


# ANSIBLE:
Source: https://github.com/saravanan30erd/opendistro_standalone_installation
 Deploy with ansible playbook - run the playbook as root
/etc/ansible/roles/opendistro_standalone_installation
ansible-playbook -i inventories/opendistro/hosts opendistro.yml
TODO: ADD NGINX Roles et al.

###
