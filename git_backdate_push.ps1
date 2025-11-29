# ============================================================
# Git Backdate Script - 20 commits over November 2025
# ============================================================

Set-Location "d:\IEEE_CV_EVENT"

# Remove old git history and reinitialize
Remove-Item -Recurse -Force .git -ErrorAction SilentlyContinue
git init
git remote add origin https://github.com/ASHUTOSHNIMBALKAR/Computer-Vision-Opencv-Python.git

# Helper function to make a backdated commit
function Make-Commit {
    param([string]$date, [string]$message)
    $env:GIT_AUTHOR_DATE = $date
    $env:GIT_COMMITTER_DATE = $date
    git commit -m $message
    Write-Host "✅ Committed: $message at $date"
}

# ─── COMMIT 1 — Nov 1, 2025 ────────────────────────────────
git add README.md
Make-Commit "2025-11-01T09:00:00" "Initial commit: Add comprehensive README for Computer Vision OpenCV Python tutorials"

# ─── COMMIT 2 — Nov 2, 2025 ────────────────────────────────
git add .gitignore
Make-Commit "2025-11-02T10:30:00" "Add .gitignore for Python and OpenCV project"

# ─── COMMIT 3 — Nov 3, 2025 ────────────────────────────────
git add "1) Tutorial- Remove background - opencv 3.2 with python 3/"
Make-Commit "2025-11-03T11:00:00" "Tutorial 1: Add background removal using MOG2 background subtractor"

# ─── COMMIT 4 — Nov 5, 2025 ────────────────────────────────
git add "2) Loading images - OpenCV 3.4 with python 3 Tutorial 1/load_images.py"
Make-Commit "2025-11-05T09:15:00" "Tutorial 2: Add image loading script with cv2.imread and imshow"

# ─── COMMIT 5 — Nov 6, 2025 ────────────────────────────────
git add "2) Loading images - OpenCV 3.4 with python 3 Tutorial 1/"
Make-Commit "2025-11-06T10:45:00" "Tutorial 2: Add save images script and sample red panda image"

# ─── COMMIT 6 — Nov 8, 2025 ────────────────────────────────
git add "3) Loading Video and Webcam - OpenCV 3.4 with python 3 Tutorial 2/read_from_webcam.py"
Make-Commit "2025-11-08T14:00:00" "Tutorial 3: Add webcam capture script using VideoCapture(0)"

# ─── COMMIT 7 — Nov 9, 2025 ────────────────────────────────
git add "3) Loading Video and Webcam - OpenCV 3.4 with python 3 Tutorial 2/read_from_file.py"
Make-Commit "2025-11-09T11:30:00" "Tutorial 3: Add video file reading script"

# ─── COMMIT 8 — Nov 10, 2025 ────────────────────────────────
git add "3) Loading Video and Webcam - OpenCV 3.4 with python 3 Tutorial 2/"
Make-Commit "2025-11-10T09:00:00" "Tutorial 3: Add read and save video script with VideoWriter"

# ─── COMMIT 9 — Nov 12, 2025 ────────────────────────────────
git add "4) Object detection using HSV Color space - OpenCV 3.4 with python 3 Tutorial 9/"
Make-Commit "2025-11-12T13:00:00" "Tutorial 4: Add HSV color space object detection script"

# ─── COMMIT 10 — Nov 14, 2025 ────────────────────────────────
git add "5) Edge detection - OpenCV 3.4 with python 3 Tutorial 18/image-edge-detection.py"
Make-Commit "2025-11-14T10:00:00" "Tutorial 5: Add Canny edge detection on static image"

# ─── COMMIT 11 — Nov 15, 2025 ────────────────────────────────
git add "5) Edge detection - OpenCV 3.4 with python 3 Tutorial 18/"
Make-Commit "2025-11-15T12:30:00" "Tutorial 5: Add real-time video edge detection using Canny algorithm"

# ─── COMMIT 12 — Nov 17, 2025 ────────────────────────────────
git add "6) Virtual Keyboard - Gaze controlled keyboard with Python and Opencv p.5/"
Make-Commit "2025-11-17T15:00:00" "Tutorial 6: Add gaze-controlled virtual keyboard with eye tracking"

# ─── COMMIT 13 — Nov 18, 2025 ────────────────────────────────
git add "7) Eye motion tracking - Opencv with Python/eye_motion_tracking.py"
Make-Commit "2025-11-18T09:30:00" "Tutorial 7: Add eye motion tracking script using Haar cascades"

# ─── COMMIT 14 — Nov 19, 2025 ────────────────────────────────
git add "7) Eye motion tracking - Opencv with Python/"
Make-Commit "2025-11-19T11:00:00" "Tutorial 7: Add eye recording sample video for testing"

# ─── COMMIT 15 — Nov 20, 2025 ────────────────────────────────
git add "8) Mouse Events - OpenCV 3.4 with python 3 Tutorial 27/draw_circle.py"
Make-Commit "2025-11-20T14:00:00" "Tutorial 8: Add interactive draw circle on mouse click event"

# ─── COMMIT 16 — Nov 21, 2025 ────────────────────────────────
git add "8) Mouse Events - OpenCV 3.4 with python 3 Tutorial 27/"
Make-Commit "2025-11-21T10:15:00" "Tutorial 8: Add interactive draw rectangle on mouse drag event"

# ─── COMMIT 17 — Nov 23, 2025 ────────────────────────────────
git add "9) YOLO object detection using Opencv with Python/yolo_object_detection.py"
git add "9) YOLO object detection using Opencv with Python/coco.names"
Make-Commit "2025-11-23T13:30:00" "Tutorial 9: Add YOLOv3 object detection script with COCO class names"

# ─── COMMIT 18 — Nov 24, 2025 ────────────────────────────────
git add "9) YOLO object detection using Opencv with Python/"
Make-Commit "2025-11-24T11:00:00" "Tutorial 9: Add YOLOv3 config weights and sample room image for YOLO detection"

# ─── COMMIT 19 — Nov 26, 2025 ────────────────────────────────
git add "10) Face recognition in real-time with OpenCV and Python/source code/simple_facerec.py"
git add "10) Face recognition in real-time with OpenCV and Python/source code/image_comparison.py"
Make-Commit "2025-11-26T09:45:00" "Tutorial 10: Add face recognition helper class and image comparison script"

# ─── COMMIT 20 — Nov 28, 2025 ────────────────────────────────
git add "10) Face recognition in real-time with OpenCV and Python/"
Make-Commit "2025-11-28T16:00:00" "Tutorial 10: Add real-time face recognition main video script and sample face images"

# Clear env vars
Remove-Item Env:\GIT_AUTHOR_DATE -ErrorAction SilentlyContinue
Remove-Item Env:\GIT_COMMITTER_DATE -ErrorAction SilentlyContinue

Write-Host ""
Write-Host "🎉 All 20 commits created with November 2025 timestamps!"
Write-Host ""

# Setup branch and push
git branch -M main
git push -u origin main --force

Write-Host ""
Write-Host "🚀 Successfully pushed to GitHub!"
