#!/usr/bin/env bash

echo "Starting ELK"

echo "----------------Starting LOGSTASH on port 9600---------------"
echo "----------------Starting KIBANA on port 5601-----------------"
echo "----------------Starting ELASTICSEARCH on port 9200----------"

LOGSTASH_PATH="logstash-6.5.4/bin/logstash"
ELASTICSEARCH_PATH="elasticsearch-6.5.4/bin/elasticsearch"
KIBANA_PATH="kibana-6.5.4-linux-x86_64/bin/kibana"

bash $ELASTICSEARCH_PATH & $KIBANA_PATH & $LOGSTASH_PATH -f logstash.conf

echo "ELK started"
