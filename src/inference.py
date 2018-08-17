#@title Imports

import os
from io import BytesIO
import tarfile
import tempfile
from six.moves import urllib

from matplotlib import gridspec
from matplotlib import pyplot as plt
import numpy as np
from PIL import Image
import configparser
import tensorflow as tf
import pwd
import time


#@title Helper methods


class DeepLabModel(object):
    """Class to load deeplab model and run inference."""



    def __init__(self):
        self.config = configparser.ConfigParser()
        self.config.read('config/model.ini')
        self.condefaults = self.config.defaults()
        frozen_pb = self.config['inference']['frozen_pb']
        self.INPUT_SIZE = self.config['inference']['vis_crop_size']
        self.vis_logdir = self.config['inference']['vis_logdir']


        self.INPUT_TENSOR_NAME = 'ImageTensor:0'
        self.OUTPUT_TENSOR_NAME = 'SemanticPredictions:0'

        model_filename = os.path.join(pwd.getpwuid(os.getuid()).pw_dir,os.path.join(frozen_pb,"frozen_inference_graph.pb"))
        """Creates and loads pretrained deeplab model."""

        self.graph = tf.Graph()

        with tf.gfile.FastGFile(model_filename, 'rb') as f:
          graph_def = tf.GraphDef()
          graph_def.ParseFromString(f.read())
        # graph_def = None
        # # Extract frozen graph from tar archive.
        # tar_file = tarfile.open(tarball_path)
        # for tar_info in tar_file.getmembers():
        #   if self.FROZEN_GRAPH_NAME in os.path.basename(tar_info.name):
        #     file_handle = tar_file.extractfile(tar_info)
        #     graph_def = tf.GraphDef.FromString(file_handle.read())
        #     break
        #
        # tar_file.close()

        if graph_def is None:
          raise RuntimeError('Cannot find inference graph in tar archive.')

        with self.graph.as_default():
          tf.import_graph_def(graph_def, name='')

        self.sess = tf.Session(graph=self.graph)

    def run(self, image):
        """Runs inference on a single image.
        Args:
          image: A PIL.Image object, raw input image.
        Returns:
          resized_image: RGB image resized from original input image.
          seg_map: Segmentation map of `resized_image`.
        """
        width, height = image.size
        resize_ratio = 1.0 * int(self.INPUT_SIZE) / max(width, height)
        target_size = (int(resize_ratio * width), int(resize_ratio * height))
        resized_image = image.convert('RGB').resize(target_size, Image.ANTIALIAS)
        batch_seg_map = self.sess.run(
            self.OUTPUT_TENSOR_NAME,
            feed_dict={self.INPUT_TENSOR_NAME: [np.asarray(resized_image)]})
        seg_map = batch_seg_map[0]
        return resized_image, seg_map


class VisualSeg(object):

    def __init__(self):

        self.config = configparser.ConfigParser()
        self.config.read('config/model.ini')
        vis_logdir = self.config['inference']['vis_logdir']
        self.vis_logdir = os.path.join(pwd.getpwuid(os.getuid()).pw_dir,vis_logdir)

        self.LABEL_NAMES = np.asarray([
            'background', 'crack'
        ])
        self.FULL_LABEL_MAP = np.arange(len(self.LABEL_NAMES)).reshape(len(self.LABEL_NAMES), 1)
        self.FULL_COLOR_MAP = self.label_to_color_image(self.FULL_LABEL_MAP)

        print('加载模型...')

        self.MODEL = DeepLabModel()
        print('加载完成')

    def create_pascal_label_colormap(self):
      """Creates a label colormap used in PASCAL VOC segmentation benchmark.

      Returns:
        A Colormap for visualizing segmentation results.
      """
      colormap = np.zeros((256, 3), dtype=int)
      ind = np.arange(256, dtype=int)

      for shift in reversed(range(8)):
        for channel in range(3):
          colormap[:, channel] |= ((ind >> channel) & 1) << shift
        ind >>= 3

      return colormap

    def label_to_color_image(self,label):
      """Adds color defined by the dataset colormap to the label.

      Args:
        label: A 2D array with integer type, storing the segmentation label.

      Returns:
        result: A 2D array with floating type. The element of the array
          is the color indexed by the corresponding element in the input label
          to the PASCAL color map.

      Raises:
        ValueError: If label is not of rank 2 or its value is larger than color
          map maximum entry.
      """
      if label.ndim != 2:
        raise ValueError('Expect 2-D input label')

      colormap = self.create_pascal_label_colormap()

      if np.max(label) >= len(colormap):
        raise ValueError('label value too large.')

      return colormap[label]


    def vis_segmentation(self,image, seg_map,fname):
      """Visualizes input image, segmentation map and overlay view."""
      plt.figure(figsize=(15, 5))
      grid_spec = gridspec.GridSpec(1, 4, width_ratios=[6, 6, 6, 1])

      plt.subplot(grid_spec[0])
      plt.imshow(image)
      plt.axis('off')
      plt.title('input image')

      plt.subplot(grid_spec[1])
      seg_image = self.label_to_color_image(seg_map).astype(np.uint8)
      plt.imshow(seg_image)
      plt.axis('off')
      plt.title('segmentation map')

      plt.subplot(grid_spec[2])
      plt.imshow(image)
      plt.imshow(seg_image, alpha=0.7)
      plt.axis('off')
      plt.title('segmentation overlay')

      unique_labels = np.unique(seg_map)
      ax = plt.subplot(grid_spec[3])
      plt.imshow(
          self.FULL_COLOR_MAP[unique_labels].astype(np.uint8), interpolation='nearest')
      ax.yaxis.tick_right()
      plt.yticks(range(len(unique_labels)), self.LABEL_NAMES[unique_labels])
      plt.xticks([], [])
      ax.tick_params(width=0.0)
      plt.grid('off')

      #save to vis directory
      plt.savefig(os.path.join(self.vis_logdir,fname))
      # plt.show()

    def run_visualization(self,url):
        start  = time.time()
        """Inferences DeepLab model and visualizes result."""
        try:
            #     f = urllib.request.urlopen(url)
            #     jpeg_str = f.read()
            #     original_im = Image.open(BytesIO(jpeg_str))
            original_im = Image.open(open(url, 'rb'))
        except IOError:
            print('Cannot retrieve image. Please check url: ' + url)
            return

        fname = os.path.split(url)[1]

        # print('detection %s...' % url)
        resized_im, seg_map = self.MODEL.run(original_im)

        self.vis_segmentation(resized_im, seg_map,fname)
        print("检测图片 "+ fname,", 耗时 ",str(time.time()-start))



if __name__=="__main__":
    config = configparser.ConfigParser()
    config.read('config/model.ini')
    imroot = config['inference']['images']
    imroot = os.path.join(pwd.getpwuid(os.getuid()).pw_dir, imroot)
    vs = VisualSeg()
    # imroot = "/home/tenghui/crack/selected/sample_images/"
    for f in os.listdir(imroot):
        image_url = os.path.join(imroot, f)
        vs.run_visualization(image_url)