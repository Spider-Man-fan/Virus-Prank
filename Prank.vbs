' Prank.vbs - A simple message box prank based on the provided notes
' Button options:
' 0 = OK Button
' 1 = OK / Cancel Button
' 2 = Abort / Retry / Ignore Button
' 3 = Yes / No / Cancel Button
' 4 = Yes / No Button
' 5 = Retry / Cancel Button
' Icon options:
' 16 = Critical Icon
' 32 = Help Icon
' 48 = Warning Icon
' 64 = Information Icon

Dim result
result = MsgBox("Message Description", 0 + 16, "Title")

' Optional: You can check the result and respond accordingly
' If result = vbOK Then
'     MsgBox "You clicked OK!", vbInformation, "Response"
' End If
