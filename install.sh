#!/bin/bash

set -ex

mkdir -p ${HOME}
ln -s /usr/share/elasticsearch /usr/share/java/elasticsearch

/usr/share/elasticsearch/bin/plugin -DproxyPort=3128 -DproxyHost=p-niceway.rd.francetelecom.fr -i com.floragunn/search-guard/0.5.1 -url https://github.com/lukas-vlcek/origin-aggregated-logging/releases/download/v0.1/search-guard-0.5.1.zip

/usr/share/elasticsearch/bin/plugin -DproxyPort=3128 -DproxyHost=p-niceway.rd.francetelecom.fr -i io.fabric8.elasticsearch/openshift-elasticsearch-plugin/0.14

/usr/share/elasticsearch/bin/plugin -DproxyPort=3128 -DproxyHost=p-niceway.rd.francetelecom.fr -i io.fabric8/elasticsearch-cloud-kubernetes/1.3.0

mkdir /elasticsearch
chmod -R og+w /usr/share/java/elasticsearch ${HOME} /elasticsearch
