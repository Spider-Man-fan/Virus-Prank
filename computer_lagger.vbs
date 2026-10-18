' Computer Lagger Script
' WARNING: This will open a new Notepad window every second and lag your computer.
' To stop it: Open Task Manager (Ctrl+Shift+Esc) and end any "wscript.exe" or "cscript.exe" processes.
' Then close all the Notepad windows that opened.

Dim X
X = MsgBox("lag", 1 + 16, "Title")

If X = 1 Then  ' If user clicks OK
    ' Delay more than 10 seconds
    WScript.Sleep 11000  ' 11 seconds delay

    ' Open a new window every second
    Dim WshShell
    Set WshShell = WScript.CreateObject("WScript.Shell")
    
    Do
        WshShell.Run "notepad.exe", 1, False
        WScript.Sleep 1000  ' Wait 1 second
    Loop
Else
    MsgBox "Cancelled.", 0, "Title"
End If
