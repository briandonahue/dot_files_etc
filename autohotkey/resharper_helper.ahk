#SingleInstance force
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
$!J::Send !{Down}

;==========================
;Process Move Up A Method
;==========================
$!K::Send !{Up}

;==========================
;Process Move Method Up
;==========================
$^+!K::Send ^+!{Up}

;==========================
;Process Move Method Down
;==========================
$^+!J::Send ^+!{Down}

;==========================
;Process Go to next usage 
;==========================
$+!J::Send ^!{Down}

;==========================
;Process Go to previous usage 
;==========================
$+!k::Send ^!{Up}

;==========================
;Process Generate Code
;==========================
$!I::Send !{Insert}

;==========================
;Process Generate File
;==========================
$^!I::Send ^!{Insert}


