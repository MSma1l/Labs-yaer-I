VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Ëèñò5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Private Sub CommandButton1_Click()
UserForm1.Show
End Sub


Private Sub ClearRowsColumns_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim i As Long
    
    ' Referin?a la foaia activa
    Set ws = ThisWorkbook.ActiveSheet
    
    ' Gase?te ultimul rând utilizat
    lastRow = ws.Cells(ws.Rows.Count, 1).End(xlUp).Row
    
    ' Parcurge fiecare linie, cu excep?ia primei
    For i = 2 To lastRow
        ' ?terge con?inutul din fiecare celula din linie
        ws.Rows(i).ClearContents
    Next i
End Sub

Public Sub buget_Click()
    Dim i As Integer
    Dim IndPol As Integer
    Dim wsStudent As Worksheet
    Dim wsbuget As Worksheet
    
    ' Referin?e la foile de lucru relevante
    Set wsStudent = ThisWorkbook.Sheets("Student")
    Set wsbuget = ThisWorkbook.Sheets("Buget ")
    
    IndPol = 2 ' Linia de start pentru foaia de lucru "Buget"
    

    For i = 1 To 20
        ' Verificarea daca media este mai mare sau egala cu 7.8
        If wsStudent.Cells(i, 7).Value >= 7.8 Then
            ' Adaugarea informa?iilor pe foaia de lucru "Buget"
            wsbuget.Cells(IndPol, 1).Value = wsStudent.Cells(i, 1).Value ' Nume
            wsbuget.Cells(IndPol, 2).Value = wsStudent.Cells(i, 2).Value ' Prenume
            wsbuget.Cells(IndPol, 3).Value = wsStudent.Cells(i, 3).Value ' Medie
            wsbuget.Cells(IndPol, 4).Value = wsStudent.Cells(i, 7).Value ' Grupa
            IndPol = IndPol + 1
        End If
    Next i
End Sub

Public Sub contract_Click()
    Dim i As Integer
    Dim IndPol As Integer
    Dim wsStudent As Worksheet
    Dim wsContract As Worksheet
    
    ' Referin?e la foile de lucru relevante
    Set wsStudent = ThisWorkbook.Sheets("Student")
    Set wsContract = ThisWorkbook.Sheets(" Contract")
    
    IndPol = 2 ' Linia de start pentru foaia de lucru "Contract"
    
    For i = 1 To 20
        ' Verificarea daca media este mai mica decât 7.8
        If wsStudent.Cells(i, 7).Value < 7.8 Then
            ' Adaugarea informa?iilor pe foaia de lucru "Contract"
            wsContract.Cells(IndPol, 1).Value = wsStudent.Cells(i, 1).Value ' Nume
            wsContract.Cells(IndPol, 2).Value = wsStudent.Cells(i, 2).Value ' Prenume
            wsContract.Cells(IndPol, 3).Value = wsStudent.Cells(i, 3).Value ' Medie
            wsContract.Cells(IndPol, 4).Value = wsStudent.Cells(i, 7).Value ' Grupa
            IndPol = IndPol + 1
        End If
    Next i
End Sub
Public Sub lipse_Click()
    Dim i As Integer
    Dim IndPol As Integer
    Dim wsStudent As Worksheet
    Dim wslipse As Worksheet
    
    ' Referin?e la foile de lucru relevante
    Set wsStudent = ThisWorkbook.Sheets("Student")
    Set wslipse = ThisWorkbook.Sheets("Lipse")
    
    IndPol = 2 ' Linia de start pentru foaia de lucru "Contract"
    
    For i = 1 To 20
            ' Adaugarea informa?iilor pe foaia de lucru "Contract"
            wslipse.Cells(IndPol, 1).Value = wsStudent.Cells(i, 1).Value  'Nume
            wslipse.Cells(IndPol, 2).Value = wsStudent.Cells(i, 2).Value  'Prenumele
            wslipse.Cells(IndPol, 3).Value = wsStudent.Cells(i, 3).Value  'grupa
            wslipse.Cells(IndPol, 4).Value = wsStudent.Cells(i, 5).Value 'motivate
             wslipse.Cells(IndPol, 5).Value = wsStudent.Cells(i, 6).Value 'nemotivate
              wslipse.Cells(IndPol, 6).Value = wsStudent.Cells(i, 4).Value 'total
            IndPol = IndPol + 1
    Next i
End Sub

