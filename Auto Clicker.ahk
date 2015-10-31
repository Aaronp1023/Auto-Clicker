#SingleInstance, Force
Gui, Clicker:Add, Text, , Click Speed
Gui, Clicker:Add, Text, y+1 , 0-100 Millisconds
Gui, Clicker:Add, Edit, y+10 w125 vClickSpeed
Gui, Clicker:Add, Button, x+m w35 gSet, Set
Gui, Clicker:Add, Radio, xs y+20 w110 gLeft, Left Click
Gui, Clicker:Add, Radio, y+20 w110 gRight, Right Click
Gui, Clicker:Add, Radio, y+20 w110 gMiddle, Middle Click
Gui, Clicker:Add, Text, y+20, Only allows single hotkeys
Gui, Clicker:Add, Hotkey, xm y+1 w125 vCustomHotkey
Gui, Clicker:Add, Button, x+m w35 gSet2, Set
Menu, Extra, Add, &About, About
Menu, Extra, Add, &Visit Website, Website
Menu, Extra, Add, &Reload Script, Reload
Menu, Extra, Add, &Exit, Exit
Menu, MenuBar, Add, &Extra Commands, :Extra
+F1::
	Gui, Clicker:Menu, MenuBar
	Gui, Clicker:Show, y200, Auto Clicker
	return
Set:
	Gui, Clicker:Submit, NoHide
	SetMouseDelay, %ClickSpeed%
	return
Left:
	ClickVar := "Left"
	return
Right:
	ClickVar := "Right"
	return
Middle:
	ClickVar := "Middle"
	return
Set2:
	Gui, Clicker:Submit, NoHide
	Hotkey, %CustomHotkey%, AutoClick, On
	return
About:
	MsgBox, 64, Auto Clicker About, Creator: Stan1023`nVersion: 1.4`nDescription: Auto Clicker is a program used for any game`n or app that requires a lot of clicking
	return
Reload:
	Reload
Website:
		Run, http://stan1023.wix.com/info, , Max
		return
Exit:
	ExitApp
AutoClick:
	Loop
		{
		GetKeyState, Key, %CustomHotkey%, P
		if Key = D
			MouseClick, %ClickVar%
		} Until Key = U
