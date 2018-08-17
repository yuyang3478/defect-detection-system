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
# Script to download and preprocess the PASCAL VOC 2012 dataset.
#
# Usage:
#   bash ./convertinit.sh
#
# The folder structure is assumed to be:
#  + datasets
#     - build_data.py
#     - build_voc2012_data.py
#     - convertinit.sh
#     - remove_gt_colormap.py
#     + pascal_voc_seg
#       + VOCdevkit
#         + VOC2012
#           + JPEGImages
#           + SegmentationClass
#

# Exit immediately if a command exits with a non-zero status.
set -e

CURRENT_DIR=$(pwd)
WORK_DIR="./crack"
mkdir -p "${WORK_DIR}"

cd "${CURRENT_DIR}"

python /home/tenghui/models/research/deeplab/datasets/build_voc2012_data.py \
--image_folder=/home/tenghui/models/research/deeplab/datasets/crack/imganno/JPEGImages \
--semantic_segmentation_folder=/home/tenghui/models/research/deeplab/datasets/crack/imganno/SegmentationClassRaw \
--list_folder=/home/tenghui/models/research/deeplab/datasets/crack/imganno/ImageSets/Segmentation \
--image_format=jpg \
--output_dir=/home/tenghui/models/research/deeplab/datasets/crack/tfrecord