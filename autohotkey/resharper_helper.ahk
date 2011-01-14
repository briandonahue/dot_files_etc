;==========================
;Initialise
;==========================
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir% 
SetTitleMatchMode 2

;==========================
;Process Move Down A Method
;==========================
$!J::
    Send, !{Down}
return

;==========================
;Process Move Up A Method
;==========================
$!K::
	Send, !{Up}
return

;==========================
;Process Move Method Up
;==========================
$^+!K::
    Send, ^+!{Up}
return

;==========================
;Process Move Method Down
;==========================
$^+!J::
    Send, ^+!{Down}
return

;==========================
;Process Go to next usage 
;==========================
$+!J::
    Send, ^!{Down}
return

;==========================
;Process Go to previous usage 
;==========================
$+!k::
    Send, ^!{Up}
return

;==========================
;Process Generate Code
;==========================
$!I::
    Send, !{Insert}
return

;==========================
;Process Generate File
;==========================
$^!I::
    Send, ^!{Insert}
return


