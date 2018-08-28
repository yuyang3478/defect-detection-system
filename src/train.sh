#!/bin/bash

cd ~/models/research/

# Update PYTHONPATH.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# Set up the working environment.
CURRENT_DIR=$(pwd)
WORK_DIR="${CURRENT_DIR}/deeplab"

# Run model_test first to make sure the PYTHONPATH is correctly set.
#python "${WORK_DIR}"/model_test.py -v

# Go to datasets folder and download CRACK VOC 2012 segmentation dataset.
DATASET_DIR="datasets"

# Go back to original directory.
cd "${CURRENT_DIR}"

# Set up the working directories.
CRACK_FOLDER="crack"
EXP_FOLDER="exp"
INIT_FOLDER="${WORK_DIR}/${DATASET_DIR}/${CRACK_FOLDER}/init_models"
TRAIN_LOGDIR="${WORK_DIR}/${DATASET_DIR}/${CRACK_FOLDER}/${EXP_FOLDER}/train"
EVAL_LOGDIR="${WORK_DIR}/${DATASET_DIR}/${CRACK_FOLDER}/${EXP_FOLDER}/eval"
VIS_LOGDIR="${WORK_DIR}/${DATASET_DIR}/${CRACK_FOLDER}/${EXP_FOLDER}/vis"
EXPORT_DIR="${WORK_DIR}/${DATASET_DIR}/${CRACK_FOLDER}/${EXP_FOLDER}/export"
TF_RECORDDIR="${WORK_DIR}/${DATASET_DIR}/${CRACK_FOLDER}/tfrecord"
IMGANNO_DIR="${WORK_DIR}/${DATASET_DIR}/${CRACK_FOLDER}/imganno"
#INFERERAW_DIR="${WORK_DIR}/${DATASET_DIR}/${CRACK_FOLDER}/inferraw"
mkdir -p "${INIT_FOLDER}"
mkdir -p "${TRAIN_LOGDIR}"
mkdir -p "${EVAL_LOGDIR}"
mkdir -p "${VIS_LOGDIR}"
mkdir -p "${EXPORT_DIR}"
mkdir -p "${TF_RECORDDIR}"
mkdir -p "${IMGANNO_DIR}"
mkdir -p "${INFERERAW_DIR}"

rm ${TRAIN_LOGDIR}/*

python /home/tenghui/models/research/deeplab/train.py \
--logtostderr \
--train_split=train \
--model_variant=xception_65 \
--atrous_rates=6 \
--atrous_rates=12 \
--atrous_rates=18 \
--output_stride=16 \
--decoder_output_stride=4 \
--train_crop_size=1000 \
--train_crop_size=1000 \
--train_batch_size=1 \
--training_number_of_steps=30000 \
--fine_tune_batch_norm=false \
--log_steps=10 \
--save_interval_secs=300 \
--save_summaries_secs=150 \
--learning_rate_decay_step=2000 \
--weight_decay=0.0002 \
--min_scale_factor=0.8 \
--max_scale_factor=2.5 \
--scale_factor_step_size=0.25 \
--tf_initial_checkpoint=/home/tenghui/models/research/deeplab/datasets/crack/init_models/xception_65/model.ckpt \
--train_logdir=/home/tenghui/models/research/deeplab/datasets/crack/exp/train \
--dataset_dir=/home/tenghui/models/research/deeplab/datasets/crack/tfrecord