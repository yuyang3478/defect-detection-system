#!/bin/bash
cd ~/models/research/deeplab/datasets/
python build_voc2012_data.py \
--image_folder=/home/tenghui/models/research/deeplab/datasets/crack/imganno/JPEGImages \
--semantic_segmentation_folder=/home/tenghui/models/research/deeplab/datasets/crack/imganno/SegmentationClassRaw \
--list_folder=/home/tenghui/models/research/deeplab/datasets/crack/imganno/ImageSets/Segmentation \
--image_format=jpg \
--output_dir=/home/tenghui/models/research/deeplab/datasets/crack/tfrecord