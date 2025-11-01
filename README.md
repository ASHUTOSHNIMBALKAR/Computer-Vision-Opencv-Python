# Computer-Vision-Opencv-Python 🎯

> A comprehensive collection of **Computer Vision** tutorials and projects using **OpenCV** and **Python** — covering everything from basic image loading to real-time YOLO object detection and face recognition.

![Python](https://img.shields.io/badge/Python-3.x-blue?style=flat-square&logo=python)
![OpenCV](https://img.shields.io/badge/OpenCV-4.x-green?style=flat-square&logo=opencv)
![License](https://img.shields.io/badge/License-MIT-yellow?style=flat-square)
![Commits](https://img.shields.io/badge/Tutorials-10-orange?style=flat-square)

---

## 📖 Table of Contents

- [About](#about)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Tutorials Overview](#tutorials-overview)
  - [1. Remove Background](#1-remove-background)
  - [2. Loading Images](#2-loading-images)
  - [3. Loading Video and Webcam](#3-loading-video-and-webcam)
  - [4. Object Detection using HSV Color Space](#4-object-detection-using-hsv-color-space)
  - [5. Edge Detection](#5-edge-detection)
  - [6. Virtual Keyboard – Gaze Controlled](#6-virtual-keyboard--gaze-controlled)
  - [7. Eye Motion Tracking](#7-eye-motion-tracking)
  - [8. Mouse Events](#8-mouse-events)
  - [9. YOLO Object Detection](#9-yolo-object-detection)
  - [10. Real-Time Face Recognition](#10-real-time-face-recognition)
- [Project Structure](#project-structure)
- [Key Concepts Covered](#key-concepts-covered)
- [Contributing](#contributing)
- [License](#license)

---

## 🧠 About

This repository is a hands-on learning resource for **Computer Vision** enthusiasts. It was originally created as part of an **IEEE Computer Vision Event** and covers a wide range of OpenCV techniques — from basic image manipulation to advanced deep learning-based detection systems like **YOLO** and **Face Recognition**.

Each tutorial is self-contained with its own folder and Python scripts, making it easy to learn step by step.

---

## ✅ Prerequisites

Make sure you have the following installed:

- **Python 3.x**
- **OpenCV** (`cv2`)
- **NumPy**
- **face_recognition** (for Tutorial 10)
- **dlib**

---

## ⚙️ Installation

```bash
# Clone the repository
git clone https://github.com/ASHUTOSHNIMBALKAR/Computer-Vision-Opencv-Python.git
cd Computer-Vision-Opencv-Python

# Install required packages
pip install opencv-python numpy face-recognition dlib
```

---

## 📚 Tutorials Overview

---

### 1. Remove Background

📁 `1) Tutorial- Remove background - opencv 3.2 with python 3`

**Script:** `Remove background.py`

**What you'll learn:**
- Using `cv2.createBackgroundSubtractorMOG2()` to detect moving foreground objects
- Applying morphological operations to clean the mask
- Real-time background subtraction from video/webcam feed

**Key OpenCV Functions:**
- `cv2.createBackgroundSubtractorMOG2()`
- `cv2.morphologyEx()`
- `cv2.bitwise_and()`

**How it works:**
The MOG2 (Mixture of Gaussians) algorithm models the background by analyzing multiple frames over time. Any pixel that deviates significantly from the background model is considered foreground (moving object).

---

### 2. Loading Images

📁 `2) Loading images - OpenCV 3.4 with python 3 Tutorial 1`

**Scripts:** `load_images.py`, `save_images.py`

**What you'll learn:**
- Reading images using `cv2.imread()`
- Displaying images in a window with `cv2.imshow()`
- Saving/writing images to disk with `cv2.imwrite()`
- Understanding BGR vs RGB color format in OpenCV

**Key OpenCV Functions:**
- `cv2.imread(path, flag)`
- `cv2.imshow(window_name, image)`
- `cv2.imwrite(filename, image)`
- `cv2.waitKey()`, `cv2.destroyAllWindows()`

**How it works:**
OpenCV reads images in **BGR** format (Blue, Green, Red) by default — opposite to the standard RGB used in most image libraries. This tutorial covers basic image I/O operations which form the foundation of any computer vision project.

---

### 3. Loading Video and Webcam

📁 `3) Loading Video and Webcam - OpenCV 3.4 with python 3 Tutorial 2`

**Scripts:** `read_from_webcam.py`, `read_from_file.py`, `read_and_save.py`

**What you'll learn:**
- Capturing live webcam feed using `cv2.VideoCapture(0)`
- Reading video files frame by frame
- Saving processed video output using `cv2.VideoWriter()`
- Controlling frame rate with `cv2.waitKey()`

**Key OpenCV Functions:**
- `cv2.VideoCapture(source)` — `0` for webcam, file path for video
- `cap.read()` — returns `(ret, frame)`
- `cv2.VideoWriter()`
- `cap.release()`

**How it works:**
`VideoCapture` opens a camera or video file. Each `cap.read()` call grabs the next frame. A `while True` loop continuously reads frames, processes them, and displays them — creating the real-time video effect.

---

### 4. Object Detection using HSV Color Space

📁 `4) Object detection using HSV Color space - OpenCV 3.4 with python 3 Tutorial 9`

**Script:** `color.py`

**What you'll learn:**
- Converting BGR images to HSV color space
- Creating color masks using `cv2.inRange()`
- Detecting specific colored objects in real-time
- Applying bitwise operations to isolate objects

**Key OpenCV Functions:**
- `cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)`
- `cv2.inRange(hsv, lower_bound, upper_bound)`
- `cv2.bitwise_and()`

**How it works:**
**HSV (Hue, Saturation, Value)** is much better than BGR for color-based detection because lighting changes mostly affect the V channel while H (the actual color) stays relatively stable. You define a lower and upper HSV range for your target color and create a binary mask — white where the color exists, black everywhere else.

---

### 5. Edge Detection

📁 `5) Edge detection - OpenCV 3.4 with python 3 Tutorial 18`

**Scripts:** `image-edge-detection.py`, `realtime-video-edge.py`

**What you'll learn:**
- Applying Canny edge detection algorithm
- Preprocessing with Gaussian blur to reduce noise
- Running real-time edge detection on webcam feed
- Understanding gradient-based edge detection

**Key OpenCV Functions:**
- `cv2.GaussianBlur()`
- `cv2.Canny(image, threshold1, threshold2)`
- `cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)`

**How it works:**
The **Canny Edge Detector** works in 4 steps:
1. **Noise Reduction** — Gaussian blur smooths the image
2. **Gradient Calculation** — Sobel filter detects intensity changes
3. **Non-Maximum Suppression** — Thin edges to 1-pixel width
4. **Hysteresis Thresholding** — Keep only strong/connected edges

---

### 6. Virtual Keyboard – Gaze Controlled

📁 `6) Virtual Keyboard - Gaze controlled keyboard with Python and Opencv p.5`

**Script:** `gaze_controlled_keyboard.py`

**What you'll learn:**
- Building a virtual on-screen keyboard
- Tracking eye gaze to control keyboard input
- Detecting gaze direction using facial landmarks
- Integrating `gaze` tracking library with OpenCV

**Key Concepts:**
- Gaze direction estimation (Left / Right / Center / Blinking)
- Eye aspect ratio (EAR) for blink detection
- Virtual key highlighting and selection via dwell time

**How it works:**
The system detects facial landmarks using `dlib`, isolates the eye region, and calculates the ratio of the pupil position within the eye to determine gaze direction. When the user focuses on a key long enough (dwell time), it gets selected — enabling completely hands-free typing.

---

### 7. Eye Motion Tracking

📁 `7) Eye motion tracking - Opencv with Python`

**Script:** `eye_motion_tracking.py`

**What you'll learn:**
- Detecting eyes using Haar Cascade classifiers
- Tracking eye movement across frames
- Using `cv2.HoughCircles()` to detect the iris/pupil
- Drawing tracking overlays on detected eye regions

**Key OpenCV Functions:**
- `cv2.CascadeClassifier('haarcascade_eye.xml')`
- `cv2.HoughCircles()`
- `cv2.circle()`, `cv2.rectangle()`

**How it works:**
**Haar Cascade** classifiers are pre-trained XML models that detect specific patterns (like eyes or faces) using a sliding window across the image at multiple scales. Once the eye region is isolated, Hough Circle Transform detects circular shapes (iris) within it to pinpoint the pupil location.

---

### 8. Mouse Events

📁 `8) Mouse Events - OpenCV 3.4 with python 3 Tutorial 27`

**Scripts:** `draw_circle.py`, `draw_rectangle.py`

**What you'll learn:**
- Setting up mouse callback functions with `cv2.setMouseCallback()`
- Detecting left click, right click, double click, and mouse move events
- Drawing shapes interactively based on mouse position
- Building simple interactive drawing applications

**Key OpenCV Functions:**
- `cv2.setMouseCallback(window_name, callback_function)`
- Mouse events: `cv2.EVENT_LBUTTONDOWN`, `cv2.EVENT_MOUSEMOVE`, `cv2.EVENT_LBUTTONUP`
- `cv2.circle()`, `cv2.rectangle()`

**How it works:**
OpenCV's mouse callback system lets you register a Python function that gets called automatically with event type and coordinates whenever the user interacts with the display window. This enables building interactive annotation, drawing, and selection tools.

---

### 9. YOLO Object Detection

📁 `9) YOLO object detection using Opencv with Python`

**Script:** `yolo_object_detection.py`  
**Config:** `yolov3.cfg`, `yolov3.weights`, `coco.names`

**What you'll learn:**
- Loading a pre-trained YOLOv3 model using OpenCV DNN module
- Running inference on images and video streams
- Parsing YOLO output to get bounding boxes, confidence scores, and class IDs
- Applying Non-Maximum Suppression (NMS) to remove duplicate detections
- Drawing labeled bounding boxes on detected objects

**Key OpenCV Functions:**
- `cv2.dnn.readNet(weights, config)`
- `net.setInput()`, `net.forward()`
- `cv2.dnn.blobFromImage()`
- `cv2.dnn.NMSBoxes()`

**How it works:**
**YOLO (You Only Look Once)** divides the image into a grid and predicts bounding boxes + class probabilities for each grid cell in a **single forward pass** — making it extremely fast (real-time capable). The model is pre-trained on the **COCO dataset** (80 object classes). OpenCV's DNN module can load and run the `.weights` and `.cfg` files directly without needing the original YOLO framework.

**COCO Classes (80 objects):** person, bicycle, car, dog, cat, and 75 more...

---

### 10. Real-Time Face Recognition

📁 `10) Face recognition in real-time with OpenCV and Python`

**Scripts:** `main_video.py`, `simple_facerec.py`, `image_comparison.py`

**What you'll learn:**
- Loading and encoding known face images using `face_recognition` library
- Detecting and recognizing faces in real-time from webcam
- Comparing face encodings using Euclidean distance
- Drawing name labels on recognized faces

**Key Libraries & Functions:**
- `face_recognition.load_image_file()`
- `face_recognition.face_encodings()`
- `face_recognition.compare_faces()`
- `face_recognition.face_distance()`

**How it works:**
The `face_recognition` library uses **dlib's deep learning model** (trained on millions of faces) to generate a 128-dimensional face encoding for each face. To recognize a person:
1. Encode all known face images and store them
2. For each new face detected, generate its encoding
3. Calculate the Euclidean distance between the new encoding and all known encodings
4. The known face with the **smallest distance** (below a threshold ~0.6) is the match

---

## 📁 Project Structure

```
Computer-Vision-Opencv-Python/
│
├── 1) Tutorial- Remove background - opencv 3.2 with python 3/
│   └── Remove background.py
│
├── 2) Loading images - OpenCV 3.4 with python 3 Tutorial 1/
│   ├── load_images.py
│   ├── save_images.py
│   └── red_panda.jpg
│
├── 3) Loading Video and Webcam - OpenCV 3.4 with python 3 Tutorial 2/
│   ├── read_from_webcam.py
│   ├── read_from_file.py
│   └── read_and_save.py
│
├── 4) Object detection using HSV Color space - OpenCV 3.4 with python 3 Tutorial 9/
│   └── color.py
│
├── 5) Edge detection - OpenCV 3.4 with python 3 Tutorial 18/
│   ├── image-edge-detection.py
│   ├── realtime-video-edge.py
│   └── white_panda.jpg
│
├── 6) Virtual Keyboard - Gaze controlled keyboard with Python and Opencv p.5/
│   └── gaze_controlled_keyboard.py
│
├── 7) Eye motion tracking - Opencv with Python/
│   ├── eye_motion_tracking.py
│   └── eye_recording.flv
│
├── 8) Mouse Events - OpenCV 3.4 with python 3 Tutorial 27/
│   ├── draw_circle.py
│   └── draw_rectangle.py
│
├── 9) YOLO object detection using Opencv with Python/
│   ├── yolo_object_detection.py
│   ├── yolov3.cfg
│   ├── yolov3.weights
│   ├── coco.names
│   └── room_ser.jpg
│
├── 10) Face recognition in real-time with OpenCV and Python/
│   └── source code/
│       ├── main_video.py
│       ├── simple_facerec.py
│       ├── image_comparison.py
│       └── images/
│
├── README.md
└── .gitignore
```

---

## 🔑 Key Concepts Covered

| Concept | Tutorial |
|--------|----------|
| Image I/O (read, display, save) | Tutorial 2 |
| Video & Webcam Capture | Tutorial 3 |
| Color Space Conversion (BGR → HSV) | Tutorial 4 |
| Background Subtraction (MOG2) | Tutorial 1 |
| Canny Edge Detection | Tutorial 5 |
| Haar Cascade Classifiers | Tutorial 7 |
| Mouse Event Callbacks | Tutorial 8 |
| Gaze / Eye Tracking | Tutorial 6, 7 |
| Deep Learning with DNN Module (YOLO) | Tutorial 9 |
| Face Encoding & Recognition | Tutorial 10 |
| Non-Maximum Suppression (NMS) | Tutorial 9 |
| Morphological Operations | Tutorial 1 |

---

## 🛠️ Technologies Used

- **Python 3.x**
- **OpenCV 3.x / 4.x**
- **NumPy**
- **dlib**
- **face_recognition**
- **YOLOv3 (COCO pre-trained)**

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

1. Fork the repository
2. Create a new branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a Pull Request

---

## 📄 License

This project is licensed under the **MIT License** — feel free to use and modify for your own learning and projects.

---

<p align="center">
  Made with ❤️ for Computer Vision learners everywhere 🚀
</p>
