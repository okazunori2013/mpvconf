@echo off
title update media-autobuild_suite
chcp 65001 >nul 2>&1
cd /d "%~dp0"
git stash -u
git fetch && git reset --hard "@{upstream}" && git stash pop
pause