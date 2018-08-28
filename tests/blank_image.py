import os
import cv2
import numpy as np


path = "/home/tenghui/models/research/deeplab/datasets/crack/view/X_训练图像/image4_watershed_mask.png"
img = cv2.imread(path)
img[img != 12] = 0
img[img == 12] = 1
cv2.imshow("",img*255)
cv2.waitKey(0)



# blank_image = np.zeros(img.shape, np.uint8)
# blank_image[:,:] = (103,103,66)
# # print(blank_image[:,:]==(103,103,66))
#
# # mask_image = np.zeros(img.shape, np.uint8)
# blank_image[(img[:,:]==(0, 132, 11))[:,:,0]]=(0, 132, 11)
# # print((blank_image[:,:]==(103,103,66))[:,:,0].shape)
# cv2.imshow("blank_image",blank_image)
# # cv2.imshow("mask_image",mask_image)
#
# cv2.waitKey(0)