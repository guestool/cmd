@echo off
setlocal enabledelayedexpansion
mode con cols=113 lines=15 &color 2f
cls
set ipdizhi=
set arpa=-a

echo.                ������Ҫɨ���IP����ǰ3�� ���磺192.168.10.
set /p ipdizhi=           ������ǰ3����:
echo �������������������ȴ�ɨ�����������������������

set total=254
set progress=0

for /L %%i IN (1,1,%total%) DO (
    ping -w 100 -n 1 %ipdizhi%%%i | findstr TTL= >>C:\1.txt
    set /a progress=%%i*100/%total%
    echo [%%i/%total%] ��ɽ���: !progress!%%
)

echo ��������������������ɨ�������������������������
arp %arpa% >>C:\1.txt

cd c:\
1.txt
pause