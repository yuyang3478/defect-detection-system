import cv2

img = cv2.imread("/home/tenghui/models/research/deeplab/datasets/crack/imganno/temp/SegmentationClassRaw/single_crack1.png")
cv2.imshow("123",img*255)
# cv2.waitKey(0)

img = cv2.imread("/home/tenghui/models/research/deeplab/datasets/crack/imganno/temp/JPEGImages/single_crack1.jpg")
cv2.imshow("321",img)
cv2.waitKey(0)