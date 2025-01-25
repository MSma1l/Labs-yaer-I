VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   8220.001
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   14940
   OleObjectBlob   =   "UserForm1.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAcrual_Click()
lbData.Caption = Date

Dim Day As Variant

    Day = Array("Воскресенье", "Понедельник", "Вторник", "Среда", "Четверг", "Пятница", "Субота")
    Lbday.Caption = Day(Weekday(Date) - 1)
    ThisWorkbook.ActiveSheet.Range("K" & Rows.Count).End(xlUp).Offset(1).Value = Date
    
     ' ?terge con?inutul din TextBox-uri

End Sub

Private Sub cmdNext_Click()
    ' Verificam daca pagina curenta este ultima pagina
    If MultiPage1.Value < MultiPage1.Pages.Count - 1 Then
        ' Daca nu, trecem la urmatoarea pagina
        MultiPage1.Value = MultiPage1.Value + 1
    End If
End Sub

Private Sub CommandButton2_Click()
   UserForm1.Hide
End Sub



Private Sub Showshow_Click()
    If Trim(Box1.Value) <> "" Then
    
        ThisWorkbook.ActiveSheet.Range("A" & Rows.Count).End(xlUp).Offset(1).Value = Box1.Value
    Else
       
        MsgBox "Заполните поле", vbExclamation
    End If
    
        If Trim(Box2.Value) <> "" Then
       
        ThisWorkbook.ActiveSheet.Range("B" & Rows.Count).End(xlUp).Offset(1).Value = Box2.Value
    Else
     
        MsgBox "Заполните поле", vbExclamation
    End If
    
        If Trim(Box3.Value) <> "" Then
        
        ThisWorkbook.ActiveSheet.Range("C" & Rows.Count).End(xlUp).Offset(1).Value = Box3.Value
    Else
        
        MsgBox "Заполните поле", vbExclamation
    End If
    If Trim(Box4.Value) <> "" Then
        
        ThisWorkbook.ActiveSheet.Range("D" & Rows.Count).End(xlUp).Offset(1).Value = Box4.Value
    Else
        
        MsgBox "Заполните поле", vbExclamation
    End If
    
     Box1.Value = ""
     Box2.Value = ""
     Box3.Value = ""
     Box4.Value = ""
     
End Sub
Private Sub SHow_Click()
    If Trim(box5.Value) <> "" Then
    
        ThisWorkbook.ActiveSheet.Range("F" & Rows.Count).End(xlUp).Offset(1).Value = box5.Value
    Else
       
        MsgBox "Заполните поле", vbExclamation
    End If
    
        If Trim(Box6.Value) <> "" Then
       
        ThisWorkbook.ActiveSheet.Range("E" & Rows.Count).End(xlUp).Offset(1).Value = Box6.Value
    Else
     
        MsgBox "Заполните поле", vbExclamation
    End If
    
        If Trim(box7.Value) <> "" Then
        
        ThisWorkbook.ActiveSheet.Range("G" & Rows.Count).End(xlUp).Offset(1).Value = box7.Value
    Else
        
        MsgBox "Заполните поле", vbExclamation
    End If
    
     box5.Value = ""
     Box6.Value = ""
     box7.Value = ""
     
End Sub
Private Sub Show1_Click()
    
        If Trim(Box8.Value) <> "" Then
       
        ThisWorkbook.ActiveSheet.Range("I" & Rows.Count).End(xlUp).Offset(1).Value = Box8.Value
    Else
     
        MsgBox "Заполните поле", vbExclamation
    End If
    
        If Trim(Box9.Value) <> "" Then
        
        ThisWorkbook.ActiveSheet.Range("J" & Rows.Count).End(xlUp).Offset(1).Value = Box9.Value
    Else
        
        MsgBox "Заполните поле", vbExclamation
    End If
    
     Box8.Value = ""
     Box9.Value = ""
     
End Sub

Private Sub CommandButton6_Click()
 UserForm1.Hide
End Sub

Private Sub CommandButton9_Click()
 UserForm1.Hide
End Sub

Private Sub next1_Click()
    ' Verificam daca pagina curenta este ultima pagina
    If MultiPage1.Value < MultiPage1.Pages.Count - 1 Then
        ' Daca nu, trecem la urmatoarea pagina
        MultiPage1.Value = MultiPage1.Value + 1
    End If
End Sub

Private Sub Exit43_Click()
 UserForm1.Hide
End Sub

Private Sub SHow2_Click()
    Dim baci As Double
    Dim bacm As Double
    Dim mat As Double
    Dim info As Double
    Dim mid As Double
    
    baci = TextBox5.Value
    bacm = TextBox6.Value
     info = TextBox7.Value
      mat = TextBox8.Value
      
    mid = (baci + bacm + info + mat) / 4

   ThisWorkbook.ActiveSheet.Range("H" & Rows.Count).End(xlUp).Offset(1).Value = mid

    Labe.Caption = mid

    
     TextBox5.Value = ""
   TextBox6.Value = ""
   TextBox7.Value = ""
   TextBox8.Value = ""
    
End Sub

