' BSOD Prank Script
' Based on the original MsgBox idea, but enhanced for a more realistic Blue Screen of Death prank.
' WARNING: This is for prank purposes only. It does not actually crash the system.
' Close the blue window to dismiss the "BSOD".

Set WshShell = CreateObject("WScript.Shell")
Set FSO = CreateObject("Scripting.FileSystemObject")

' Create a temporary HTA file that looks like a classic BSOD
htaPath = WshShell.ExpandEnvironmentStrings("%TEMP%\bsod_prank.hta")
Set htaFile = FSO.CreateTextFile(htaPath, True)

htaContent = "<html>" & vbCrLf & _
"<head>" & vbCrLf & _
"<title>Windows</title>" & vbCrLf & _
"<HTA:APPLICATION ID=""BSODPrank"" " & _
"BORDER=""none"" " & _
"CAPTION=""no"" " & _
"SHOWINTASKBAR=""no"" " & _
"SINGLEINSTANCE=""yes"" " & _
"SYSMENU=""no"" " & _
"WINDOWSTATE=""maximize"" " & _
"SCROLL=""no"">" & vbCrLf & _
"<style>" & vbCrLf & _
"body { margin:0; padding:0; background-color:#0000AA; color:#FFFFFF; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size:18px; overflow:hidden; }" & vbCrLf & _
"pre { margin:40px; white-space:pre-wrap; }" & vbCrLf & _
"</style>" & vbCrLf & _
"</head>" & vbCrLf & _
"<body>" & vbCrLf & _
"<pre>" & vbCrLf & _
"A problem has been detected and Windows has been shut down to prevent damage" & vbCrLf & _
"to your computer." & vbCrLf & vbCrLf & _
"The problem seems to be caused by the following file: ntoskrnl.exe" & vbCrLf & vbCrLf & _
"If this is the first time you've seen this Stop error screen," & vbCrLf & _
"restart your computer. If this screen appears again, follow" & vbCrLf & _
"these steps:" & vbCrLf & vbCrLf & _
"Check to make sure any new hardware or software is properly installed." & vbCrLf & _
"If this is a new installation, ask your hardware or software manufacturer" & vbCrLf & _
"for any Windows updates you might need." & vbCrLf & vbCrLf & _
"If problems continue, disable or remove any newly installed hardware" & vbCrLf & _
"or software. Disable BIOS memory options such as caching or shadowing." & vbCrLf & _
"If you need to use Safe Mode to remove or disable components, restart" & vbCrLf & _
"your computer, press F8 to select Advanced Startup Options, and then" & vbCrLf & _
"select Safe Mode." & vbCrLf & vbCrLf & _
"Technical information:" & vbCrLf & vbCrLf & _
"*** STOP: 0x0000007B (0xF78D2524, 0xC0000034, 0x00000000, 0x00000000)" & vbCrLf & vbCrLf & _
"BSOD NEEDS RESTART" & vbCrLf & vbCrLf & _
"Collecting data for crash dump ..." & vbCrLf & _
"Initializing disk for crash dump ..." & vbCrLf & _
"Beginning dump of physical memory." & vbCrLf & _
"Dumping physical memory to disk: 100" & vbCrLf & _
"</pre>" & vbCrLf & _
"</body>" & vbCrLf & _
"</html>"

htaFile.Write htaContent
htaFile.Close

' Launch the fake BSOD full-screen
WshShell.Run "mshta.exe """ & htaPath & """", 1, False

' Optional: Show a message box after a delay or as fallback
WScript.Sleep 500
X = MsgBox("BSOD NEEDS RESTART" & vbCrLf & vbCrLf & "This is a prank. Close the blue window to continue.", 1 + 16, "Windows - System Error")

' Clean up the HTA file after a short time (optional, can be removed if you want it to persist)
' WScript.Sleep 2000
' On Error Resume Next
' FSO.DeleteFile htaPath, True
