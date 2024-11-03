#!/bin/bash

FECHA=$(date +%Y%m%d)
RUTA_CSV="/home/soyra/python/cryptos_data.csv"
LOG_FILE1="/home/soyra/python/registro_crypto.log"

cat /home/soyra/python/cryptos_data.csv | grep Bitcoin >> /home/soyra/python/currency/${FECHA}-bitcoin.csv
cat /home/soyra/python/cryptos_data.csv | grep Ethereum >> /home/soyra/python/currency/${FECHA}-ethereum.csv
cat ${RUTA_CSV} | grep Tether >> /home/soyra/python/currency/${FECHA}-tether.csv
cat ${RUTA_CSV} | grep BNB >> /home/soyra/python/currency/${FECHA}-bnb.csv
cat ${RUTA_CSV} | grep Solana >> /home/soyra/python/currency/${FECHA}-solana.csv
cat ${RUTA_CSV} | grep USDC >> /home/soyra/python/currency/${FECHA}-uscd.csv
cat ${RUTA_CSV} | grep XRP >> /home/soyra/python/currency/${FECHA}-xrp.csv
cat ${RUTA_CSV} | grep Dogecoin >> /home/soyra/python/currency/${FECHA}-dogecoin.csv
cat ${RUTA_CSV} | grep TRON >> /home/soyra/python/currency/${FECHA}-tron.csv
cat ${RUTA_CSV} | grep Toncoin >> /home/soyra/python/currency/${FECHA}-toncoin.csv
cat ${RUTA_CSV} | grep Cardano >> /home/soyra/python/currency/${FECHA}-cardano.csv

# registro_crypto.log

echo "$(date '+%Y-%m-%d %H:%M:%S') - Se ha creado un nuevo archivo por cada criptomoneda, /home/soyra/python/currency" >> $LOG_FILE1
