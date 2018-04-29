echo off
setlocal enableextensions enabledelayedexpansion

for %%f in (*.mp4) do (
set avifile=%%f
ffmpeg -y -i "%%f" -acodec libmp3lame -vcodec rawvideo "!avifile:mp4=avi!"
)

endlocal
pause