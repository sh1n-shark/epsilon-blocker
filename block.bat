
::Credit https://stackoverflow.com/a/24665214
net file 1>NUL 2>NUL
if not '%errorlevel%' == '0' (
    powershell Start-Process -FilePath "%0" -ArgumentList "%cd%" -verb runas >NUL 2>&1
    exit /b
)

cd /d %1
::


echo 127.0.0.1 api.epsilon1337.com >> %windir%\System32\drivers\etc\hosts    
echo 127.0.0.1 epsilon1337.com >> %windir%\System32\drivers\etc\hosts    

echo "Done :3"

pause
exit 
