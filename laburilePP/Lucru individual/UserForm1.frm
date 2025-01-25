VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   9390.001
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15090
   OleObjectBlob   =   "UserForm1.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False




Private Sub Anulare_Click()

End Sub

Private Sub cmdAcrual_Click()
lbData.Caption = Date

Dim Day As Variant

    Day = Array("Duminica", "Luni", "Marti", "Miercuri", "Joi", "Vineri", "Sambata")
    lbZIua.Caption = Day(Weekday(Date) - 1)
    ThisWorkbook.ActiveSheet.Range("H" & Rows.Count).End(xlUp).Offset(1).Value = Date
    
     ' ?terge con?inutul din TextBox-uri

End Sub

Private Sub CmdBgbExecuta_Click()

End Sub

Private Sub cmdExit_Click()
 UserForm1.Hide
End Sub
Private Sub cmdExecut_Click()
    Dim numar1 As Double
    Dim numar2 As Double
    Dim numar3 As Double
    Dim numar4 As Double
    Dim media As Double
    Dim ws As Worksheet
    Dim nextRow As Long
    
    ' Referin?a la foaia activa
    Set ws = ThisWorkbook.ActiveSheet
    
    ' Ia valorile din TextBox-uri
    numar1 = boxNota.Value
    numar2 = boxAtestareI.Value
    numar3 = boxAtestareII.Value
    numar4 = boxExamen.Value
    
    ' Calculeaza media
    media = (0.2 * numar1 + 0.2 * numar2 + 0.2 * numar3 + 0.4 * numar4)
    
    ' Afi?eaza media in eticheta
    lbMedia.Caption = "Media este: " & media
    
ThisWorkbook.ActiveSheet.Range("G" & Rows.Count).End(xlUp).Offset(1).Value = media

     ' ?terge con?inutul din TextBox-uri
    boxNota.Value = ""
    boxAtestareI.Value = ""
    boxAtestareII.Value = ""
    boxExamen.Value = ""
   
End Sub


Private Sub cmdBAck_Click()
    ' Verificam daca pagina curenta este ultima pagina
    If MultiPage1.Value < MultiPage1.Pages.Count - 1 Then
        ' Daca nu, trecem la urmatoarea pagina
        MultiPage1.Value = MultiPage1.Value + 1
    End If
End Sub
Private Sub cdBack_Click()
    ' Verificam daca pagina curenta este ultima pagina
    If MultiPage1.Value < MultiPage1.Pages.Count - 1 Then
        ' Daca nu, trecem la urmatoarea pagina
        MultiPage1.Value = MultiPage1.Value + 1
    End If
End Sub
Private Sub cmdNext_Click()
    ' Verificam daca pagina curenta este ultima pagina
    If MultiPage1.Value < MultiPage1.Pages.Count - 1 Then
        ' Daca nu, trecem la urmatoarea pagina
        MultiPage1.Value = MultiPage1.Value + 1
    End If
End Sub
Private Sub Back_Click()
 UserForm1.Hide
End Sub





Private Sub Executa_Click()
    Dim Mot As Double
    Dim Nem As Double
    Dim Total As Double
    Dim Achit As Double
    
    ' Ia valorile din TextBox-urile corespunzatoare în forma
    Mot = boxMot.Value
    Nem = boxNemot.Value
    
    Total = Mot + Nem
    ' Calculeaza media
    Achit = Nem * 25
  

   ThisWorkbook.ActiveSheet.Range("D" & Rows.Count).End(xlUp).Offset(1).Value = Total
   ThisWorkbook.ActiveSheet.Range("E" & Rows.Count).End(xlUp).Offset(1).Value = Mot
   ThisWorkbook.ActiveSheet.Range("F" & Rows.Count).End(xlUp).Offset(1).Value = Nem
    ' Afi?eaza media într-o eticheta dintr-o forma Excel
    lbNr.Caption = Total
    Nrlipse.Caption = Nem
    Achitare.Caption = Achit
    
     boxMot.Value = ""
    boxNemot.Value = ""
    
End Sub

Private Sub afiseaza_Click()
    ' Verificam daca TextBox-ul nu este gol
    If Trim(Nume.Value) <> "" Then
        ' Adaugam ?irul la urmatorul rând disponibil pe coloana A
        ThisWorkbook.ActiveSheet.Range("A" & Rows.Count).End(xlUp).Offset(1).Value = Nume.Value
    Else
        ' Daca TextBox-ul este gol, afi?am un mesaj de avertizare
        MsgBox "Va rugam sa introduceti un sir în câmpul text.", vbExclamation
    End If
    
        If Trim(Prenume.Value) <> "" Then
        ' Adaugam ?irul la urmatorul rând disponibil pe coloana A
        ThisWorkbook.ActiveSheet.Range("B" & Rows.Count).End(xlUp).Offset(1).Value = Prenume.Value
    Else
        ' Daca TextBox-ul este gol, afi?am un mesaj de avertizare
        MsgBox "Va rugam sa introduceti un sir în câmpul text.", vbExclamation
    End If
    
        If Trim(Grupa.Value) <> "" Then
        ' Adaugam ?irul la urmatorul rând disponibil pe coloana A
        ThisWorkbook.ActiveSheet.Range("C" & Rows.Count).End(xlUp).Offset(1).Value = Grupa.Value
    Else
        ' Daca TextBox-ul este gol, afi?am un mesaj de avertizare
        MsgBox "Va rugam sa introduceti un sir în câmpul text.", vbExclamation
    End If
    
     Nume.Value = ""
     Prenume.Value = ""
     Grupa.Value = ""
     
End Sub


' Subprocedura pentru butonul radio cu numarul mai mare decât 5
Private Sub gogo_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    ' Referin?a la foaia activa
    Set ws = ThisWorkbook.ActiveSheet
    
    ' Gase?te ultimul rand utilizat in coloana H
    lastRow = ws.Cells(ws.Rows.Count, "G").End(xlUp).Row
    
    ' Definim intervalul de celule pe care dorim sa aplicam formatarea
    Set rng = ws.Range("G2:G" & lastRow)
    
    ' Parcurgem fiecare celula din intervalul definit
    For Each cell In rng
        ' Verificam daca valoarea celulei este mai mare sau egala cu 5
        If cell.Value > 5 Then
            ' Daca da, coloreaza celula cu verde
            cell.Interior.Color = RGB(0, 255, 0) ' Verde
        ElseIf cell.Value < 5 Then
            ' Daca nu, coloreaza celula cu ro?u
            cell.Interior.Color = RGB(255, 0, 0) ' Ro?u
        End If
    Next cell
End Sub
' Subprocedura pentru butonul radio care va anula formatarea celulelor
Private Sub Anulare2_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    ' Referin?a la foaia activa
    Set ws = ThisWorkbook.ActiveSheet
    
    ' Gase?te ultimul rand utilizat in coloana G
    lastRow = ws.Cells(ws.Rows.Count, "G").End(xlUp).Row
    
    ' Definirea intervalului de celule pe care dorim sa eliminam formatarea
    Set rng = ws.Range("G2:G" & lastRow)
    
    ' Parcurgem fiecare celula din intervalul definit
    For Each cell In rng
        ' Resetam culoarea de fundal a celulei
        cell.Interior.ColorIndex = xlNone
    Next cell
End Sub

' Subprocedura pentru butonul radio cu numarul mai mare decât 5
Private Sub gogogo_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    ' Referin?a la foaia activa
    Set ws = ThisWorkbook.ActiveSheet
    
    ' Gase?te ultimul rand utilizat in coloana H
    lastRow = ws.Cells(ws.Rows.Count, "E").End(xlUp).Row
    
    ' Definim intervalul de celule pe care dorim sa aplicam formatarea
    Set rng = ws.Range("E2:E" & lastRow)
    
    ' Parcurgem fiecare celula din intervalul definit
    For Each cell In rng
        ' Verificam daca valoarea celulei este mai mare sau egala cu 5
        If cell.Value <= 9 Then
            ' Daca da, coloreaza celula cu verde
            cell.Interior.Color = RGB(0, 255, 0) ' Verde
        ElseIf cell.Value >= 10 Then
            ' Daca nu, coloreaza celula cu ro?u
            cell.Interior.Color = RGB(255, 0, 0) ' Ro?u
        End If
    Next cell
End Sub
' Subprocedura pentru butonul radio care va anula formatarea celulelor
Private Sub Anulare1_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    ' Referin?a la foaia activa
    Set ws = ThisWorkbook.ActiveSheet
    
    ' Gase?te ultimul rand utilizat in coloana G
    lastRow = ws.Cells(ws.Rows.Count, "E").End(xlUp).Row
    
    ' Definirea intervalului de celule pe care dorim sa eliminam formatarea
    Set rng = ws.Range("E2:E" & lastRow)
    
    ' Parcurgem fiecare celula din intervalul definit
    For Each cell In rng
        ' Resetam culoarea de fundal a celulei
        cell.Interior.ColorIndex = xlNone
    Next cell
End Sub
Private Sub gogogogo_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    ' Referin?a la foaia activa
    Set ws = ThisWorkbook.ActiveSheet
    
    ' Gase?te ultimul rand utilizat in coloana H
    lastRow = ws.Cells(ws.Rows.Count, "F").End(xlUp).Row
    
    ' Definim intervalul de celule pe care dorim sa aplicam formatarea
    Set rng = ws.Range("F2:F" & lastRow)
    
    ' Parcurgem fiecare celula din intervalul definit
    For Each cell In rng
        ' Verificam daca valoarea celulei este mai mare sau egala cu 5
        If cell.Value <= 9 Then
            ' Daca da, coloreaza celula cu verde
            cell.Interior.Color = RGB(0, 255, 0) ' Verde
        ElseIf cell.Value >= 10 Then
            ' Daca nu, coloreaza celula cu ro?u
            cell.Interior.Color = RGB(255, 0, 0) ' Ro?u
        End If
    Next cell
End Sub
' Subprocedura pentru butonul radio care va anula formatarea celulelor
Private Sub Anularego_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    ' Referin?a la foaia activa
    Set ws = ThisWorkbook.ActiveSheet
    
    ' Gase?te ultimul rand utilizat in coloana G
    lastRow = ws.Cells(ws.Rows.Count, "F").End(xlUp).Row
    
    ' Definirea intervalului de celule pe care dorim sa eliminam formatarea
    Set rng = ws.Range("F2:F" & lastRow)
    
    ' Parcurgem fiecare celula din intervalul definit
    For Each cell In rng
        ' Resetam culoarea de fundal a celulei
        cell.Interior.ColorIndex = xlNone
    Next cell
End Sub

Private Sub MultiPage1_Change()

End Sub
