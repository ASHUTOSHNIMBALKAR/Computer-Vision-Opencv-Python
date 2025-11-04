# Fix remaining untracked folders (em dash folder names)
Set-Location "d:\IEEE_CV_EVENT"

$dates = @(
    "2025-11-03T11:00:00",
    "2025-11-05T09:15:00",
    "2025-11-08T14:00:00",
    "2025-11-12T13:00:00",
    "2025-11-14T10:00:00",
    "2025-11-17T15:00:00",
    "2025-11-18T09:30:00",
    "2025-11-20T14:00:00"
)

$messages = @(
    "Tutorial 1: Add background removal using MOG2 background subtractor",
    "Tutorial 2: Add image loading, save scripts and sample images",
    "Tutorial 3: Add webcam, video read and save scripts",
    "Tutorial 4: Add HSV color space object detection",
    "Tutorial 5: Add Canny edge detection static and realtime scripts",
    "Tutorial 6: Add gaze-controlled virtual keyboard",
    "Tutorial 7: Add eye motion tracking with Haar cascades",
    "Tutorial 8: Add mouse event draw circle and rectangle scripts"
)

$folders = @(
    "1) Tutorial- Remove background \u2013 opencv 3.2 with python 3",
    "2) Loading images \u2013 OpenCV 3.4 with python 3 Tutorial 1",
    "3) Loading Video and Webcam \u2013 OpenCV 3.4 with python 3 Tutorial 2",
    "4) Object detection using HSV Color space \u2013 OpenCV 3.4 with python 3 Tutorial 9",
    "5) Edge detection \u2013 OpenCV 3.4 with python 3 Tutorial 18",
    "6) Virtual Keyboard \u2013 Gaze controlled keyboard with Python and Opencv p.5",
    "7) Eye motion tracking \u2013 Opencv with Python",
    "8) Mouse Events \u2013 OpenCV 3.4 with python 3 Tutorial 27"
)

for ($i = 0; $i -lt $folders.Length; $i++) {
    $folder = $folders[$i]
    $date = $dates[$i]
    $msg = $messages[$i]

    Write-Host "Adding: $folder"
    git add $folder

    $env:GIT_AUTHOR_DATE = $date
    $env:GIT_COMMITTER_DATE = $date
    git commit -m $msg
    Write-Host "Committed: $msg at $date"
}

# Also commit the script cleanup
git add git_backdate_push.ps1
$env:GIT_AUTHOR_DATE = "2025-11-29T10:00:00"
$env:GIT_COMMITTER_DATE = "2025-11-29T10:00:00"
git commit -m "Add git automation script for backdated commit setup"
Write-Host "Committed setup script"

Remove-Item Env:\GIT_AUTHOR_DATE -ErrorAction SilentlyContinue
Remove-Item Env:\GIT_COMMITTER_DATE -ErrorAction SilentlyContinue

git push origin main --force
Write-Host "All done - pushed to GitHub!"
