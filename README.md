# ELK-Proxy-Ingest
A standalone pre-production deployable one-node ELK (Opensource) cluster for rapid deployment in platform and data agnostic environments. This is an OpenDistro Elasticsearch and Kibana Stack provisioned with Logstash, Git, NGINX and Ansible playbooks.


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

# Benefits:
Platform Agnostic - Because this is built from RPMs and system utils, the source code will work anywhere CentOS will run.
Open Source – Apache License 2.0
All Data can be encrypted at rest and in transit, automatically.
Auditing provides for SecOps continuity.
Proxy – Mitigate Risk and increase Compliance using our ELK-A Stack.

# Features & capabilities
Additional security hardening, Wipe, audit, and clean scripts.
Automates services such as network configurations, and SSL key pair setup and install, among others.
Only available Fully open source, and fully deployable Elastic stack solutions architecture available for R&D. Period.

# System Files/Dirs Modified:
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

# KIBANA:todo.
# NGINX:
  Basic SSL default. More advanced options may be provided later.


# ANSIBLE:
Source: https://github.com/saravanan30erd/opendistro_standalone_installation
 Deploy with ansible playbook - run the playbook as root
/etc/ansible/roles/opendistro_standalone_installation
ansible-playbook -i inventories/opendistro/hosts opendistro.yml
TODO: ADD NGINX Roles et al.

###
Note: Because AWS ES cannot provide us the necessary capabilities we require such as Graphing, (unless you resort to using one of their services such as "AWS Comprehend") while OpenDistro can and the fact it is still very new presents a good win opportunity for the team. I am interested in pursuing both angles.

# Sources:
https://github.com/opendistro-for-elasticsearch/security
https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-kibana.html
https://github.com/opendistro-for-elasticsearch/security-kibana-plugin
https://github.com/saravanan30erd/opendistro_standalone_installation
https://www.elastic.co/blog/aftershock-therapy-with-elasticsearch-and-csv-data-import
https://www.youtube.com/watch?v=Ysd9tWuhE8g
https://aws.amazon.com/blogs/machine-learning/build-a-document-search-bot-using-amazon-lex-and-amazon-elasticsearch-service/
https://aws.amazon.com/blogs/machine-learning/enable-smart-text-analytics-using-amazon-elasticsearch-search-and-amazon-comprehend/
https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-aws-integrations.html#es-aws-integrations-s3-lambda-es
https://www.elastic.co/aws-elasticsearch-service
https://logz.io/blog/open-distro-for-elasticsearch/
https://www.digitalocean.com/community/tutorials/how-to-install-elasticsearch-logstash-and-kibana-elastic-stack-on-ubuntu-18-04
