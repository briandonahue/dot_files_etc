#SingleInstance force

#+k::

consoleX := A_ScreenWidth * .70
consoleHeight := A_ScreenHeight

DetectHiddenWindows, on
IfWinExist ahk_class Console_2_Main
{
    IfWinActive ahk_class Console_2_Main
          {
                  WinHide ahk_class Console_2_Main
                  WinActivate ahk_class Shell_TrayWnd
          }
    else
          {
                  WinShow ahk_class Console_2_Main
                  WinActivate ahk_class Console_2_Main
          }
}
else
    Run, C:\Program Files\ConEmu\ConEmu64.exe -WndX %consoleX% -WndY 0 -WndH %consoleHeight%
DetectHiddenWindows, off
return

#IfWinActive ahk_class Console_2_Main
/*
esc::
{
WinHide ahk_class Console_2_Main
WinActivate ahk_class Shell_TrayWnd
}
*/


