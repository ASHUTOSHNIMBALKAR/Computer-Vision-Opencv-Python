# #####
#
# https://pysource.com
#
# Tutorial: Edge detection – OpenCV 3.4 with python 3 Tutorial 18
#
# URL: https://pysource.com/2018/02/28/edge-detection-opencv-3-4-with-python-3-tutorial-18/
# 
# ###

import cv2
import numpy as np

cap = cv2.VideoCapture(0)

while True:
    _, frame = cap.read()
    frame = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    blurred_frame = cv2.GaussianBlur(frame, (5, 5), 0)
    
    laplacian = cv2.Laplacian(blurred_frame, cv2.CV_64F)
    canny = cv2.Canny(blurred_frame, 100, 150)
    
    cv2.imshow("Frame", frame)
    cv2.imshow("Laplacian", laplacian)
    cv2.imshow("Canny", canny)
    
    key = cv2.waitKey(1)
    if key == 27:
        break

cap.release()
cv2.destroyAllWindows()