VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   11535
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10020
   OleObjectBlob   =   "UserForm1lab2.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub CommandButton1_Click()
 UserForm1.Hide
 
End Sub

Private Sub CommandButton4_Click()
Dim s, r As Integer

r = Range("C4").End(xlDown).Row
s = r - 3
Label6.Caption = s
Dim m As Integer, l As Range

Set l = Range("D4", Range("D4").End(xlDown))
m = Application.WorksheetFunction.CountIf(l, "p")

Label7.Caption = m
Label8.Caption = s - m

Dim h As Range

If (OptionButton2.Value = True) Then

Range("C5").Font.Color = vbRed
Range("C6").Font.Color = vbRed
Range("C10").Font.Color = vbRed

End If

If (OptionButton1.Value = True) Then

Range("C4").Font.Color = vbGreen
Range("C7").Font.Color = vbGreen
Range("C8").Font.Color = vbGreen
Range("C9").Font.Color = vbGreen
Range("C11").Font.Color = vbGreen

 End If

If (OptionButton3.Value = True) Then

Range("C4:C11").Font.Color = vbBlack

End If


End Sub

Private Sub CommandButton3_Click()
Label4.Caption = Date

Dim Day As Variant

    Day = Array("Duminica", "Luni", "Marti", "Miercuri", "Joi", "Vineri", "Sambata")
    Label5.Caption = Day(Weekday(Date) - 1)
End Sub


Private Sub UserForm_Click()

End Sub
