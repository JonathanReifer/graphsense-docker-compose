#!/bin/bash

#BASE_PATH=.
DATA_PATH=/mnt/graphsense-stor1
DOWNLOAD_PATH=/mnt/graphsense-stor1

cd $DATA_PATH
mkdir blocksci_data
mkdir btc-client-data
mkdir cassandra_data
mkdir cassandra_etc
#cp cassandra.yaml cassandra_etc

cd $DOWNLOAD_PATH
git clone https://github.com/JonathanReifer/graphsense-transformation.git
cd $DOWNLOAD_PATH/graphsense-transformation
#docker build -t graphsense-transformation .
cd $DOWNLOAD_PATH
git clone https://github.com/JonathanReifer/graphsense-glue.git
cd $DOWNLOAD_PATH/graphsense-glue
#docker build -t graphsense-glue .
cd $DOWNLOAD_PATH
git clone https://github.com/graphsense/graphsense-dashboard.git graphsense-dashboard
#cd $DOWNLOAD_PATH/graphsense-dashboard
#git build -t graphsense-dashboard .
cd $DOWNLOAD_PATH
git clone https://github.com/graphsense/graphsense-REST.git graphsense-rest
#cd $DOWNLOAD_PATH/graphsense-rest
#git build -t graphsense-rest .
cd $DOWNLOAD_PATH
git clone https://github.com/graphsense/graphsense-blocksci.git graphsense-blocksci
#cd $DOWNLOAD_PATH/graphsense-blocksci 
#git build -t graphsense-blocksci .
cd $DOWNLOAD_PATH
git clone https://github.com/graphsense/btc-client.git graphsense-btc-client
#cd $DOWNLOAD_PATH/graphsense-btc-client 
#git build -t graphsense-btc-client .
#git clone https://github.com/graphsense/bch-client.git graphsense-bch-client
#git clone https://github.com/graphsense/zec-client.git graphsense-zec-client
#git clone https://github.com/graphsense/ltc-client.git graphsense-ltc-client


cd $GSBASE_PATH
git clone https://github.com/graphsense/graphsense-tagpacks.git graphsense-tagpacks










