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
INFERERAW_DIR="${WORK_DIR}/${DATASET_DIR}/${CRACK_FOLDER}/inferraw"
mkdir -p "${INIT_FOLDER}"
mkdir -p "${TRAIN_LOGDIR}"
mkdir -p "${EVAL_LOGDIR}"
mkdir -p "${VIS_LOGDIR}"
mkdir -p "${EXPORT_DIR}"
mkdir -p "${TF_RECORDDIR}"
mkdir -p "${IMGANNO_DIR}"
mkdir -p "${INFERERAW_DIR}"

rm ${TRAIN_LOGDIR}/*

