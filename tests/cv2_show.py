from __future__ import print_function
import sys
import cv2

# cv2.VideoCapture(0).release()
# cv2.VideoCapture(1).release()


def main(argv):
    #capture from camera at location 0
    cap = cv2.VideoCapture(0)
    cap1 = cv2.VideoCapture(1)



    # print(cap.isOpened())
    print(cap1.isOpened())


    while True:
        ret, img = cap.read()
        cv2.imshow("0", img)

        ret, img1 = cap1.read()
        cv2.imshow("1",img1)

        key = cv2.waitKey(10)
        if key == 27:
            break

    cv2.destroyAllWindows()
    cv2.VideoCapture(1).release()

if __name__ == '__main__':
    main(sys.argv)