@ECHO OFF

set ResinName="Resin"

goto begin
:nofoundresin
echo û���ҵ�����ΪResin�ķ�����鿴window�������ԣ�ȷ�Ϸ��������(Ctrl+C �˳���

set /p ResinName=���������Resin����ķ�������:

:begin
sc qc %ResinName% 3000 > info.txt
findstr "httpd.exe" .\info.txt > info2.txt

If %ERRORLEVEL% GTR 0 goto nofoundresin

findstr "XX:MaxPermSize" .\info.txt > nul
IF %ERRORLEVEL% EQU 0 goto nofound1
echo ��ʼ��Ӳ��� -XX:PermSize=128m -XX:MaxPermSize=256m
set /p jvmline=<info2.txt
set jvmline=%jvmline:*: =%
set jvmline=%jvmline% -J-XX:PermSize=128m -J-XX:MaxPermSize=256m
set jvmline
sc config %ResinName% binPath= "%jvmline%"
goto end1
:nofound1
echo �Ѿ��������Ӧ����
:end1

sc qc %ResinName% 3000 > info.txt
findstr "httpd.exe" .\info.txt > info2.txt
findstr "javaagent:wagent.jar" .\info.txt > nul
IF %ERRORLEVEL% EQU 0 goto nofound2
echo ��ʼ��Ӳ��� -javaagent:wagent.jar
set /p jvmline=<info2.txt
set jvmline=%jvmline:*: =%
set jvmline=%jvmline% -J-javaagent:wagent.jar
set jvmline
sc config %ResinName% binPath= "%jvmline%"
goto end2
:nofound2
echo �Ѿ��������Ӧ����
:end2

del info.txt info2.txt

pause
