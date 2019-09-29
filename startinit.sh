#!/bin/bash
#README for more information
#RPM install procedures source:
#https://opendistro.github.io/for-elasticsearch-docs/docs/install/rpm/
#
#
sudo sysctl -w vm.max_map_count=262144
cd /home/centos;
sudo yum install vim -y;
sudo yum install openssl -y;
sudo yum install git -y;
sudo curl https://d3g5vo6xdbdb9a.cloudfront.net/yum/opendistroforelasticsearch-artifacts.repo -o /etc/yum.repos.d/opendistroforelasticsearch-artifacts.repo;
#OPTIONAL: Install either Java 8 and/or 11, use alternatives --list to view and adjust default JDK
sudo yum install java-11-openjdk-devel -y;
sudo yum install java-1.8.0-openjdk-devel -y;
sudo yum list opendistroforelasticsearch --showduplicates;
sudo yum install opendistroforelasticsearch-1.2.0 -y;
sudo ln -s /usr/lib/jvm/java-1.8.0/lib/tools.jar /usr/share/elasticsearch/lib/;
sudo systemctl start elasticsearch.service;
echo "Elasticsearch distro Status: ";
sudo systemctl status elasticsearch.service;
sudo systemctl stop elasticsearch.service;
###
sudo /bin/systemctl daemon-reload;
sudo /bin/systemctl enable elasticsearch.service;
sudo cat /etc/elasticsearch/jvm.options > jvm.options;
sudo cat /etc/elasticsearch/elasticsearch.yml > elasticsearch.yml.orig;
sudo systemctl restart elasticsearch.service
sleep 10;
sudo yum install opendistroforelasticsearch-kibana -y;
echo "Installing Kibana OpenDistro...";
sudo systemctl stop kibana.service;
sudo /bin/systemctl daemon-reload;
sudo /bin/systemctl enable kibana.service;
sudo systemctl restart kibana.service;
sudo ~/nginxinit.sh;
sudo echo "127.0.0.1   demoelk demoelk.com www.demoelk.com example.com www.example.com localhost localhost.localdomain" > /etc/hosts;
sudo echo "::1         demoelk demoelk.com www.demoelk.com example.com www.example.com localhost localhost.localdomain localhost6 localhost6.localdomain6" >> /etc/hosts;
yum install httpd-tools -y;
rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch;
sudo yum install logstash -y;



#
###
