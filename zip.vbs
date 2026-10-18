' Harmless fun prank - fake ERROR + shutdown
' Double-click to run. Close with Task Manager if needed.

Set objShell = CreateObject("WScript.Shell")

' Fake critical error
objShell.Popup "ERROR! Critical system failure detected!" & vbCrLf & vbCrLf & "Initiating emergency shutdown sequence...", 4, "SYSTEM ERROR", 16

' Dramatic countdown
For i = 10 To 1 Step -1
    objShell.Popup "SHUTTING DOWN IN " & i & " SECONDS..." & vbCrLf & vbCrLf & "ERROR! ERROR! ERROR!", 1, "EMERGENCY SHUTDOWN", 48
Next

' The punchline
objShell.Popup "Just kidding!" & vbCrLf & vbCrLf & "No shutdown. Your computer is fine." & vbCrLf & "Have a nice day! :)", 6, "Prank Successful", 64
