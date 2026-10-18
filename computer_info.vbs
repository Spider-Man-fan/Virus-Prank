' Computer Information Script with CPU Details
' Displays system info via MsgBox using WMI

Option Explicit

Dim objWMIService, colItems, objItem
Dim strComputer, strUser, strOS, strVersion, strRAM, strCPU
Dim strMessage

Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")

' Computer System info
Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_ComputerSystem")
For Each objItem In colItems
    strComputer = objItem.Name
    strUser = objItem.UserName
    If IsNull(strUser) Then strUser = "N/A"
    strRAM = FormatNumber(objItem.TotalPhysicalMemory / 1024 / 1024 / 1024, 2) & " GB"
Next

' Operating System info
Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_OperatingSystem")
For Each objItem In colItems
    strOS = objItem.Caption
    strVersion = objItem.Version
Next

' CPU info
strCPU = ""
Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_Processor")
For Each objItem In colItems
    strCPU = strCPU & "CPU: " & objItem.Name & vbCrLf
    strCPU = strCPU & "Manufacturer: " & objItem.Manufacturer & vbCrLf
    strCPU = strCPU & "Cores: " & objItem.NumberOfCores & vbCrLf
    strCPU = strCPU & "Logical Processors: " & objItem.NumberOfLogicalProcessors & vbCrLf
    strCPU = strCPU & "Max Clock Speed: " & objItem.MaxClockSpeed & " MHz" & vbCrLf
    strCPU = strCPU & "Current Clock Speed: " & objItem.CurrentClockSpeed & " MHz" & vbCrLf
    If objItem.NumberOfCores > 1 Or colItems.Count > 1 Then
        strCPU = strCPU & "------------------------" & vbCrLf
    End If
Next

' Build message
strMessage = "=== COMPUTER INFORMATION ===" & vbCrLf & vbCrLf
strMessage = strMessage & "Computer Name: " & strComputer & vbCrLf
strMessage = strMessage & "Logged-in User: " & strUser & vbCrLf
strMessage = strMessage & "Operating System: " & strOS & vbCrLf
strMessage = strMessage & "OS Version: " & strVersion & vbCrLf
strMessage = strMessage & "Total RAM: " & strRAM & vbCrLf & vbCrLf
strMessage = strMessage & strCPU

' Display in MsgBox (info icon + OK button)
MsgBox strMessage, 64, "Computer Info"
