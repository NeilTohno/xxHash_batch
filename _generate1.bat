@echo off 

color 2F
echo ━━━━━━━━━━━━━━━━━━
echo 创建 xxHash 校验码
echo ━━━━━━━━━━━━━━━━━━
echo=

cd /d "%~dp0"

set output=%cd%\H2.xxHash

if "%~1" == "" goto error

%cd%\_tmp\xxhsum.exe -H2 --tag "%~1" >>"%output%"


echo ━━━━━━━━
echo 操作成功。
echo ━━━━━━━━ 

::timeout /t 1 /nobreak
echo.