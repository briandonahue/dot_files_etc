#k::
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
    run "c:\software\Console2\Console.exe"
DetectHiddenWindows, off
return

#+`::
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
    run "c:\software\Console2\consolecygwin"
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

