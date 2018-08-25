# -*- coding: utf-8 -*-
import imgaug as ia
from imgaug import augmenters as iaa
import os
import cv2
import numpy as np
import configparser
from tool import *
import shutil

class DataAug():
    def __init__(self,):
        self.config = configparser.ConfigParser()
        self.config.read('config/model.ini')
        self.root = self.config['augmentation']['root']
        self.annotation_folder = self.config["annotation"]['raw']
        self.annotation_folder= getAbsolutePath(self.annotation_folder)

        self.root = getAbsolutePath(self.root)
        self.num_after_gen = self.config.getint('augmentation','totalnum')
        self.isdemostrate = self.config.getboolean('augmentation', 'isdemostrate')  # getboolean(section, options)

        self.seed_img = os.path.join(self.root,"raw/images")
        self.seed_seg = os.path.join(self.root,"raw/segmentations")
        self.temp = os.path.join(self.root,"temp")
        self.JPEG = os.path.join(self.temp,"JPEGImages")

        if not os.path.exists(self.JPEG):
            os.makedirs(self.JPEG)
        self.Segmen = os.path.join(self.temp,"SegmentationClassRaw")
        if not os.path.exists(self.Segmen):
            os.makedirs(self.Segmen)
        self.ImageSets = os.path.join(self.temp,"ImageSets/Segmentation")
        if not os.path.exists(self.ImageSets):
            os.makedirs(self.ImageSets)

        self.img_seg_correspondence()


    def img_seg_correspondence(self,):
        for f in os.listdir(self.annotation_folder):
            srcf = os.path.join(self.annotation_folder, f)

            if f.endswith("png"):
                if "_watershed_mask" in f:
                    # convert pngs to pascal format
                    img = cv2.imread(srcf)
                    img[img != 12] = 0
                    img[img == 12] = 1
                    tarf = os.path.join(self.seed_seg, f.replace("_watershed_mask", ""))
                    cv2.imwrite(tarf, img)

                # os.remove(srcf)
            if f.endswith("jpg"):
                img_path = os.path.join(self.annotation_folder,f)
                tarimg = os.path.join(self.seed_img, f)
                img1 = cv2.imread(img_path)
                cv2.imwrite(tarimg, img1)
        imglist = []
        seglist = []
        for f in os.listdir(self.seed_img):
            imglist.append(f[:-4])

        for f in os.listdir(self.seed_seg):
            seglist.append(f[:-4])

        diff = list(set(imglist).difference(seglist))
        for f in diff:
            os.remove(os.path.join(self.seed_img,f+".jpg"))
            print("images - "+ f)

        diff = list(set(seglist).difference(imglist))
        for f in diff:
            os.remove(os.path.join(self.seed_seg,f+".png"))
            print("seg - "+f)

    def get_max_size(self):
        mh = 0
        mw = 0
        for f in os.listdir(self.seed_img):
            img_path = os.path.join(self.seed_img,f)
            img = cv2.imread(img_path,0)
            png = cv2.imread(os.path.join(self.seed_seg,f[:-4]+".png"),0)
            ph,pw = png.shape
            h,w = img.shape
            if h!=ph or w!=pw:
                print("not equal -->: ",f)
            if h>mh:
                mh = h
            if w>mw:
                mw = w
        print("max heigh: " + str(mh),"max_width: "+str(mw))

    def resize(self,leng):
        for f in os.listdir(self.seed_img):
            img_path = os.path.join(self.seed_img,f)
            img = cv2.imread(img_path)
            png = cv2.imread(os.path.join(self.seed_seg,f[:-4]+".png"))
            h,w,_ = img.shape
            mlen = max(h,w)
            if mlen>leng:
                ratio = leng/mlen
                nh,nw = int(h*ratio),int(w*ratio)
                img = cv2.resize(img,(nw,nh))
                cv2.imwrite(os.path.join(self.seed_img,f),img)
                png = cv2.resize(png,(nw,nh))
                cv2.imwrite(os.path.join(self.seed_seg,f[:-4]+".png"),png)

        # for f in os.listdir(self.seed_img):
        #     img_path = os.path.join(self.seed_img,f)
        #     img = cv2.imread(img_path)
        #     png = cv2.imread(os.path.join(self.seed_seg,f[:-4]+".png"))
        #     h,w,_ = png.shape
        #     mlen = max(h,w)
        #     if mlen>leng:
        #         ratio = leng/mlen
        #         nh,nw = int(h*ratio),int(w*ratio)
        #         # img = cv2.resize(img,(nw,nh))
        #         # cv2.imwrite(os.path.join(self.tmp,f),img)
        #         png = cv2.resize(png,(nw,nh))
        #         cv2.imwrite(os.path.join(self.tmp,f[:-4]+".png"),png)

    def aug_img(self,):
        imgsount = len(
            [name for name in os.listdir(self.seed_img) if os.path.isfile(os.path.join(self.seed_img, name)) and name.endswith("jpg")])
        if imgsount==0:
            print("there is no images to augmentation.")
            return
        iter_steps = int(self.num_after_gen/imgsount)

        for f in os.listdir(self.seed_img):
            img_path = os.path.join(self.seed_img,f)
            img = cv2.imread(img_path)
            seg = cv2.imread(os.path.join(self.seed_seg,f[:-4]+".png"))
            height,width,_ = img.shape
            images = np.random.randint(0, 255, (1, height, width, 3), dtype=np.uint8)
            heatmaps = np.random.randint(0, 255, (1, height, width, 3), dtype=np.uint8)

            images[0] = img
            heatmaps[0] = seg


            # Define our sequence of augmentation steps that will be applied to every image
            # All augmenters with per_channel=0.5 will sample one value _per image_
            # in 50% of all cases. In all other cases they will sample new values
            # _per channel_.
            seq1 = iaa.Sequential(
                [
                    iaa.Affine(
                        translate_percent={"x": (-0.3, 0.3), "y": (-0.3, 0.3)},
                        # translate by -20 to +20 percent (per axis)#平移变换
                        rotate=(-180, 180),  # rotate by -45 to +45 degrees
                        # shear=(-8, 8), # shear by -16 to +16 degrees
                    ),
                    #  iaa.OneOf([
                    #             iaa.Dropout((0.01, 0.1), per_channel=0.5), # randomly remove up to 10% of the pixels
                    #             iaa.CoarseDropout((0.03, 0.15), size_percent=(0.02, 0.05)),
                    #         ]),
                ],
                random_order=True
            )
            seq = iaa.Sequential(
                [
                    iaa.Add((0, 45)),
                    iaa.OneOf([
                                    iaa.GaussianBlur((0, 0.7)),  # blur images with a sigma between 0 and 3.0
                                    iaa.Sharpen(alpha=(0, 0.7), lightness=(0.75, 1.5)),  # sharpen images
                                ]),
                    # iaa.GaussianBlur((0, 3.0)),
                    iaa.ContrastNormalization((0.5, 2.0)),
                    iaa.AdditiveGaussianNoise(loc=0, scale=(0.01 * 255, 0.06 * 255))
                ],
                random_order=True
            )

            for i in range(0,iter_steps):
                # print(i)
                seq_det = seq1.to_deterministic()  # call this for each batch again, NOT only once at the start
                images_aug_tmp = seq_det.augment_images(images)
                heatmaps_aug = seq_det.augment_images(heatmaps)
                # heatmap = cv2.resize(heatmaps_aug[0],(int(width/2),int(height/2)))
                cv2.imwrite(os.path.join(self.Segmen,f[:-4] + str(i) + ".png"), heatmaps_aug[0])
                if not self.isdemostrate:
                    images_aug_tmp = seq.augment_images(images_aug_tmp)
                # image = cv2.resize(images_aug[0],(int(width/2),int(height/2)))
                cv2.imwrite(os.path.join(self.JPEG,f[:-4] + str(i) + ".jpg"), images_aug_tmp[0])
                print(f,"generating {} image.".format(i))
                # seq.show_grid(images[0], cols=8, rows=8)

        # self.write_txt()
    def write_txt(self,):
        train = os.path.join(self.ImageSets,"train.txt")
        val = os.path.join(self.ImageSets,"val.txt")
        tf = open(train, "w")
        vf = open(val, "w")
        i = 0
        trnum = 0
        tenum = 0
        for f in os.listdir(self.JPEG):
            name = f[:-4]
            if i % 20 != 0:
                new_context = name + '\n'
                tf.write(new_context)
                trnum+=1
            else:
                new_context = name + '\n'
                vf.write(new_context)
                tenum +=1
            i+=1
        # print("{0} train images and {1} test images generated.".format(trnum,tenum))

        tf.close()
        vf.close()

if __name__ == '__main__':
    pdata = DataAug()
    # pdata.img_seg_correspondence()
    # pdata.get_max_size()
    # pdata.resize(513)
    # pdata.get_max_size()
    pdata.aug_img()
    pdata.write_txt()