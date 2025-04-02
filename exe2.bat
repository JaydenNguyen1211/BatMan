@echo off
echo Starting 

:: Set GitHub repo URL and image URL
set GIT_REPO=https://github.com/JaydenNguyen1211/BatMan.git
set IMAGE_URL=https://img.freepik.com/free-photo/sexy-blond-female-cream-dress-posing-big-hall_613910-2851.jpg
set IMAGE_NAME=blonde.jpg

git init
git remote add origin https://github.com/JaydenNguyen1211/BatMan.git


curl -o IMAGE_NAME IMAGE_URL

git add .
git commit -m "Start init"

git push origin master

