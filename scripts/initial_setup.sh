#!/bin/bash


BASE_PATH=$(pwd)
if [ ! -f docker-compose.yaml ]; then
    echo "Docker-compose file not found, run from directory with dc file"
    exit -1;
fi

if [ ! -f $BASE_PATH/.env ]; then
    echo ".env File not found!"
    cp $BASE_PATH/template_configs/env_template $BASE_PATH/.env
fi

. $BASE_PATH/.env

cd $DATA_PATH
if [ ! -d $DATA_PATH/blocksci_data ]; then
    mkdir $DATA_PATH/blocksci_data
fi

if [ ! -d $DATA_PATH/btc-client-data ]; then
    mkdir $DATA_PATH/btc-client-data
    chmod a+rwX $DATA_PATH/btc-client-data
fi
##NEED TO FIX
if [ ! -d $DATA_PATH/btc-client-data ]; then
    mkdir $DATA_PATH/cassandra_data
fi
if [ ! -d $DATA_PATH/btc-client-data ]; then
    mkdir $DATA_PATH/cassandra_etc
    #cp $BASE_PATH/template_configs/cassandra.yaml $DATA_PATH/cassandra_etc/
fi

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
cp $BASE_PATH/template_configs/config.json graphsense-rest/app/
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


cd $DOWNLOAD_PATH
git clone https://github.com/graphsense/graphsense-tagpacks.git graphsense-tagpacks










