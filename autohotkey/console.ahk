#SingleInstance force


#+k::

consoleX := A_ScreenWidth * .70
consoleHeight := A_ScreenHeight - 40

; TrayTip,,%consoleHeight% 


DetectHiddenWindows, on
If WinExist("ahk_class VirtualConsoleClass")
{
    If WinActive("ahk_class VirtualConsoleClass")
          {
                  WinHide ahk_class VirtualConsoleClass
                  WinActivate ahk_class Shell_TrayWnd
          }
    else
          {
                  WinShow ahk_class VirtualConsoleClass
                  WinActivate ahk_class VirtualConsoleClass
          }
}
else
    Run, C:\Program Files\ConEmu\ConEmu64.exe -WndX %consoleX%px -WndY 0px -WndH %consoleHeight%px
DetectHiddenWindows, off
return


