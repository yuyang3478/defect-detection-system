#!/bin/bash

set -e

cd ~/models/research/

# Update PYTHONPATH.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

# Set up the working environment.
CURRENT_DIR=$(pwd)

cd "${CURRENT_DIR}"
python /home/tenghui/models/research/deeplab/export_model.py \
--logtostderr \
--checkpoint_path=/home/tenghui/models/research/deeplab/datasets/crack/exp/train/model.ckpt-30000 \
--export_path=/home/tenghui/models/research/deeplab/datasets/crack/exp/export/frozen_inference_graph.pb \
--model_variant=xception_65 \
--atrous_rates=6 \
--atrous_rates=12 \
--atrous_rates=18 \
--output_stride=16 \
--decoder_output_stride=4 \
--num_classes=2 \
--crop_size=1000 \
--crop_size=1000 \
--inference_scales=1.0