@echo off
color a
echo:
color 4
echo YouTube Video Link:
set /p link=

echo:
echo Video Location:
set /p location=
cls

echo Link: %link%
echo Location: %location%
timeout 1 >nul
echo:
color a
echo:
echo Starting
echo:
youtube-dl.exe -o %location%\%%(title)s.%%(ext)s --extract-audio --audio-format mp3 --embed-thumbnail %link%
echo:
echo youtube-dl.exe closed
echo Closing in 3 second!
timeout 3 >nul
exit