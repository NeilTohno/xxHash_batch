@echo off 

color 2F
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━
echo 校验文件使用 xxHash
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━
echo=

cd /d "%~dp0"

move "%CD%\move\*" "%CD%\or\"

set input=%cd%\H2.xxHash

%cd%\_tmp\xxhsum.exe -H2 -c "%input%"


echo ━━━━━
echo 操作成功。
echo ━━━━━ 

timeout /t 2 /nobreak
echo. & pause