#!/bin/bash
# Copyright 2018 The TensorFlow Authors All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================
#
# This script is used to run local test on PASCAL VOC 2012. Users could also
# modify from this script for their use case.
#
# Usage:
#   # From the tensorflow/models/research/deeplab directory.
#   sh ./local_test.sh
#
#

# Exit immediately if a command exits with a non-zero status.
#set -e

# Move one-level up to tensorflow/models/research directory.
cd ~/models/research/

# Update PYTHONPATH.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# Set up the working environment.
CURRENT_DIR=$(pwd)
WORK_DIR="${CURRENT_DIR}/deeplab"

# Go back to original directory.
cd "${CURRENT_DIR}"



# Visualize the results.
python "${WORK_DIR}"/vis.py \
  --logtostderr \
  --vis_split="val" \
  --model_variant="xception_65" \
  --atrous_rates=6 \
  --atrous_rates=12 \
  --atrous_rates=18 \
  --output_stride=16 \
  --decoder_output_stride=4 \
  --vis_crop_size=1001 \
  --vis_crop_size=1001 \
  --checkpoint_dir="${TRAIN_LOGDIR}" \
  --vis_logdir="${VIS_LOGDIR}" \
  --dataset_dir="${PASCAL_DATASET}" \
  --max_number_of_iterations=1


# Run inference with the exported checkpoint.
# Please refer to the provided deeplab_demo.ipynb for an example.
python /home/tenghui/models/research/deeplab/train.py \
--logtostderr \
--vis_split=val \
--model_variant=xception_65 \
--atrous_rates=6 \
--atrous_rates=12 \
--atrous_rates=18 \
--output_stride=16 \
--decoder_output_stride=4 \
--vis_crop_size=1000 \
--vis_crop_size=1000 \
--checkpoint_dir=/home/tenghui/models/research/deeplab/datasets/crack/exp/train \
--vis_logdir=/home/tenghui/models/research/deeplab/datasets/crack/exp/vis \
--dataset_dir=/home/tenghui/models/research/deeplab/datasets/crack/inferraw \
--max_number_of_iterations=1