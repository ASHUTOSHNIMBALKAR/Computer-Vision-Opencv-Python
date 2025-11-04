# Final fix - add ALL remaining untracked files at once with proper backdate
Set-Location "d:\IEEE_CV_EVENT"

# Stage everything untracked
git add .

# Commit with Nov 2025 timestamp
$env:GIT_AUTHOR_DATE = "2025-11-04T10:00:00"
$env:GIT_COMMITTER_DATE = "2025-11-04T10:00:00"
git commit -m "Add all tutorial folders: background removal, image loading, video capture, HSV detection, edge detection, virtual keyboard, eye tracking, mouse events"

Remove-Item Env:\GIT_AUTHOR_DATE -ErrorAction SilentlyContinue
Remove-Item Env:\GIT_COMMITTER_DATE -ErrorAction SilentlyContinue

# Push
git push origin main
Write-Host "Done! All files pushed."
git log --oneline
