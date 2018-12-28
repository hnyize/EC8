@ECHO OFF

set ResinName="Resin"

goto begin
:nofoundresin
echo 没有找到名称为Resin的服务，请查看window服务属性，确认服务的名称(Ctrl+C 退出）

set /p ResinName=请输入你的Resin服务的服务名称:

:begin
sc qc %ResinName% 3000 > info.txt
findstr "httpd.exe" .\info.txt > info2.txt

If %ERRORLEVEL% GTR 0 goto nofoundresin

findstr "XX:MaxPermSize" .\info.txt > nul
IF %ERRORLEVEL% EQU 0 goto nofound1
echo 开始添加参数 -XX:PermSize=128m -XX:MaxPermSize=256m
set /p jvmline=<info2.txt
set jvmline=%jvmline:*: =%
set jvmline=%jvmline% -J-XX:PermSize=128m -J-XX:MaxPermSize=256m
set jvmline
sc config %ResinName% binPath= "%jvmline%"
goto end1
:nofound1
echo 已经添加了相应参数
:end1

sc qc %ResinName% 3000 > info.txt
findstr "httpd.exe" .\info.txt > info2.txt
findstr "javaagent:wagent.jar" .\info.txt > nul
IF %ERRORLEVEL% EQU 0 goto nofound2
echo 开始添加参数 -javaagent:wagent.jar
set /p jvmline=<info2.txt
set jvmline=%jvmline:*: =%
set jvmline=%jvmline% -J-javaagent:wagent.jar
set jvmline
sc config %ResinName% binPath= "%jvmline%"
goto end2
:nofound2
echo 已经添加了相应参数
:end2

del info.txt info2.txt

pause
