echo off
chcp 65001
cd /d %~dp0
rem %temp%\mpv_thumbs_cache
rem まずファイルをすべて削除します。
del  /q  %appdata%\mpv\temp\thumbs\*

rem 削除対象のフォルダ内のフォルダに対して rmdir を実行します。
for /D %%1 in (%appdata%\mpv\temp\thumbs\*) do rmdir /s /q "%%1"
exit