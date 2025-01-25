VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   9540.001
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   16500
   OleObjectBlob   =   "UserForm1 cod lab1.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer

Private Sub UserForm_Click()
 If (i = 0) Then
 Eticheta.Caption = "Luni"
 i = i + 1
 Else
 If (i = 1) Then
 Eticheta.Caption = "Marti"
 i = i + 1
 Else
 If (i = 2) Then
 Eticheta.Caption = "Miercuri"
 Else
 If (i = 3) Then
 Eticheta.Caption = "joi"
 Else
 If (i = 4) Then
 Eticheta.Caption = "Vineri"
 i = 0
 End If
 End If
 End If
 End If
End If
End Sub
Private Sub CommandButton2_Click()
 Unload UserForm1
End Sub

Private Sub CommandButton1_Click()
 If (OptionButton1.Value = True) Then
 Eticheta.Caption = "Luni"
 Else
 If (OptionButton2.Value = True) Then
 Eticheta.Caption = "Marti"
 Else
 If (OptionButton3.Value = True) Then
 Eticheta.Caption = "Miercuri"
  Else
 If (OptionButton4.Value = True) Then
 Eticheta.Caption = "Joi"
  Else
 If (OptionButton5.Value = True) Then
 Eticheta.Caption = "Vineri"
 End If
 End If
 End If
 End If
 End If
 
End Sub
