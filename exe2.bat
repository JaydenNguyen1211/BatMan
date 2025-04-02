@echo off
echo Starting 

:: Set GitHub repo URL and image URL
set GIT_REPO=https://github.com/JaydenNguyen1211/BatMan.git
set IMAGE_URL=https://img.freepik.com/free-photo/sexy-blond-female-cream-dress-posing-big-hall_613910-2851.jpg
set IMAGE_NAME=blonde8.jpg


curl -o %IMAGE_NAME% %IMAGE_URL%

echo Waiting for downloading IMAGE_NAME
timeout /t 10 /nobreak >nul

if not exist %IMAGE_NAME% (
	echo Image download failed. Exiting...
)

echo Image downloaded successfully.

:: Add all files to Git
git add .

:: Commit changes
git commit -m "Added image 2"

:: Push changes to GitHub
git push -u origin master

echo Done!
pause

