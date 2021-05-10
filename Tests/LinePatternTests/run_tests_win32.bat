@REM This script expects Delphi to be on the PATH and uses the Win32 libraries.

@call rsvars.bat
@dcc32.exe --no-config ^
-B ^
-AForms=Vcl.Forms;Graphics=Vcl.Graphics;Controls=Vcl.Controls;Dialogs=Vcl.Dialogs;ExtCtrls=Vcl.ExtCtrls;Clipbrd=Vcl.Clipbrd ^
-NSSystem;Winapi ^
-U"%BDS%\lib\Win32\release" ^
LinePatternTests.dpr
@if %errorlevel% neq 0 (pause & exit)

LinePatternTests.exe
del LinePatternTests.exe
