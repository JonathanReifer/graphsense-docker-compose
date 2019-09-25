#!/bin/sh

#docker-compose exec gs-glue /bin/bash


#docker-compose exec gs-blocksci blocksci_parser /var/data/blocksci_data/btc.cfg generate-config bitcoin /var/data/blocksci_data --max-block '-6' --disk /var/data/block_data

docker-compose exec gs-blocksci blocksci_parser /var/data/blocksci_data/btc.cfg update

docker-compose exec gs-blocksci /graphsense-blocksci/blocksci_export.py -c /var/data/blocksci_data/btc.cfg -d gs-database -k btc_raw --start 0 --end 5



#./submit.sh -m 24 -c cassandra



