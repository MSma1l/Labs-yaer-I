VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   10455
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   18135
   OleObjectBlob   =   "UserForm1.12.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub CommandButton1_Click()
Randomize
Label5.Caption = Date

Label1.Caption = Int((Rnd * 90) + 1)
' The function RGB returns yellow color
Label1.BackColor = RGB(255, 255, 0)
Label2.Caption = Sqr(Label1.Caption)
Label2.BackColor = RGB(255, 255, 0)
Label3.Caption = Cos(Label1.Caption * 3.14159 / 180)
Label3.BackColor = RGB(255, 255, 0)
Label4.Caption = Sin(Label1.Caption * 3.14159 / 180)
Label4.BackColor = RGB(255, 255, 0)
End Sub

Private Sub CommandButton2_Click()
UserForm1.Hide
End Sub

Private Sub UserForm_Click()

End Sub
