@echo off 

color 2F
echo ����������������������������������������������������
echo У���ļ�ʹ�� xxHash
echo ����������������������������������������������������
echo=

cd /d "%~dp0"

move "%CD%\move\*" "%CD%\or\"

set input=%cd%\H2.xxHash

%cd%\_tmp\xxhsum.exe -H2 -c "%input%"


echo ����������
echo �����ɹ���
echo ���������� 

timeout /t 2 /nobreak
echo. & pause