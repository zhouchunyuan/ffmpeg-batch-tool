setlocal enableextensions enabledelayedexpansion
set /a count = 1

for %%f in (*.mp4) do (

ffmpeg -y -i "%%f" -acodec libmp3lame -vcodec rawvideo output!count!.avi
set /a count += 1

)

endlocal
pause