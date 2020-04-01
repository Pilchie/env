#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
#WinActivateForce

activate_teams()
{
    if not WinActive("ahk_exe Teams.exe")
    {
        ; Depends on having Teams "first" on your taskbar.
        ; I couldn't get WinActivate to work :(
        Send, #1
        Sleep, 250
    }
}

activate_obs()
{
    if not WinActive("ahk_exe obs64.exe")
    {
        ; Depends on having OBS "second" on your taskbar.
        ; I couldn't get WinActivate to work :(
        Send, #2
        Sleep, 250
    }
}

F13::
    activate_teams()

F14::
    mute()
    {
        activate_teams()
        Send, ^+m
    }

F15::
    blur()
    {
        activate_teams()
        Send, ^+p
    }

F16::
    camera()
    {
        activate_teams()
        Send, ^+o
    }

F17::
    scene1()
    {
        activate_obs()
        Send, {F1}
    }

F18::
    scene2()
    {
        activate_obs()
        Send, {F3}
    }

F19::
    scene3()
    {
        activate_obs()
        Send, {F4}
    }

F20::
    scene4()
    {
        activate_obs()
        Send, {F5}
    }

F21::
    scene5()
    {
        activate_obs()
        Send, {F6}
    }

F22::
    scene6()
    {
        activate_obs()
        Send, {F7}
    }

F23::
    scene7()
    {
        activate_obs()
        Send, {F8}
    }