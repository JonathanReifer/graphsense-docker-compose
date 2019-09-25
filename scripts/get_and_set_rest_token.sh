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


JWT_TOKEN=`curl -u $REST_USER:$REST_PASSWD $REST_ENDPOINT/login | jq --raw-output '.access_token'`


echo "JWT_TOKEN="$JWT_TOKEN >$DATA_PATH/gs-rest/JWT_TOKEN





