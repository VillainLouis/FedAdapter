#!/bin/sh

# modify the DATA_DIR to your own data directory
# DATA_DIR=/data0/jliu/Datasets/fednlp_data/
DATA_DIR=/data0/jliu/Datasets/fednlp_data/
# rm -rf ${DATA_DIR}/data_files
# declare -a data_names=("20news" "agnews" "cnn_dailymail" "cornell_movie_dialogue" "semeval_2010_task8" "sentiment140" "squad_1.1" "ploner" "sst_2" "wikiner" "wmt_cs-en" "wmt_de-en" "wmt_ru-en" "wmt_zh-en" "mrqa" "onto" "gigaword")

declare -a data_names=("20news" "agnews" "semeval_2010_task8" "onto")

mkdir ${DATA_DIR}
mkdir ${DATA_DIR}/data_files
for data_name in "${data_names[@]}"
do
	wget --no-check-certificate --no-proxy -P ${DATA_DIR}/data_files https://fednlp.s3-us-west-1.amazonaws.com/data_files/${data_name}_data.h5
done