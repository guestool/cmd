@echo off
setlocal enabledelayedexpansion
mode con cols=113 lines=15 &color 2f
cls
set ipdizhi=
set arpa=-a

echo.                请输需要扫描的IP网段前3段 列如：192.168.10.
set /p ipdizhi=           请输入前3网段:
echo ┌────────等待扫描结束────────┐

set total=254
set progress=0

for /L %%i IN (1,1,%total%) DO (
    ping -w 100 -n 1 %ipdizhi%%%i | findstr TTL= >>C:\1.txt
    set /a progress=%%i*100/%total%
    echo [%%i/%total%] 完成进度: !progress!%%
)

echo └─────────扫描结束─────────┘
arp %arpa% >>C:\1.txt

cd c:\
1.txt
pause