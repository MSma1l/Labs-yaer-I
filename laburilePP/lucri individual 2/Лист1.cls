VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Лист1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Private Sub ClearRowsColumns_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim i As Long
    
    Set ws = ThisWorkbook.ActiveSheet
    lastRow = ws.Cells(ws.Rows.Count, 1).End(xlUp).Row
    For i = 2 To lastRow
       
        ws.Rows(i).ClearContents
    Next i
End Sub

Private Sub Run_Click()
UserForm1.Show
End Sub
Public Sub budget_Click()
    Dim i As Integer
    Dim IndPol As Integer
    Dim wsStudent As Worksheet
    Dim wsbuget As Worksheet
    
    
    Set wsStudent = ThisWorkbook.Sheets("Sheet1")
    Set wsbuget = ThisWorkbook.Sheets("SheetBudget")
    
    IndPol = 2
    

    For i = 1 To 20
     
        If wsStudent.Cells(i, 8).Value >= 7.7 Then
           
            wsbuget.Cells(IndPol, 1).Value = wsStudent.Cells(i, 1).Value
            wsbuget.Cells(IndPol, 2).Value = wsStudent.Cells(i, 2).Value
            wsbuget.Cells(IndPol, 3).Value = wsStudent.Cells(i, 3).Value
            wsbuget.Cells(IndPol, 4).Value = wsStudent.Cells(i, 4).Value
             wsbuget.Cells(IndPol, 5).Value = wsStudent.Cells(i, 5).Value
              wsbuget.Cells(IndPol, 6).Value = wsStudent.Cells(i, 8).Value
            IndPol = IndPol + 1
        End If
    Next i
End Sub

Public Sub contract_Click()
    Dim i As Integer
    Dim IndPol As Integer
    Dim wsStudent As Worksheet
    Dim wsContract As Worksheet
    
    
    Set wsStudent = ThisWorkbook.Sheets("Sheet1")
    Set wsContract = ThisWorkbook.Sheets("SheetContract")
    
    IndPol = 2
    
    For i = 1 To 20
        
        If wsStudent.Cells(i, 8).Value < 7.7 Then
           
           wsContract.Cells(IndPol, 1).Value = wsStudent.Cells(i, 1).Value
            wsContract.Cells(IndPol, 2).Value = wsStudent.Cells(i, 2).Value
            wsContract.Cells(IndPol, 3).Value = wsStudent.Cells(i, 3).Value
            wsContract.Cells(IndPol, 4).Value = wsStudent.Cells(i, 4).Value
             wsContract.Cells(IndPol, 5).Value = wsStudent.Cells(i, 5).Value
              wsContract.Cells(IndPol, 6).Value = wsStudent.Cells(i, 8).Value
              IndPol = IndPol + 1
        End If
    Next i
End Sub
Public Sub Hotel_Click()
    Dim i As Integer
    Dim IndPol As Integer
    Dim wsStudent As Worksheet
    Dim wsHotel As Worksheet
    
    Set wsStudent = ThisWorkbook.Sheets("Sheet1")
    Set wsHotel = ThisWorkbook.Sheets("SheetHotel")
    
    IndPol = 2
    
    For i = 1 To 20
      If wsStudent.Cells(i, 9).Value = 1 Then
            wsHotel.Cells(IndPol, 1).Value = wsStudent.Cells(i, 1).Value
            wsHotel.Cells(IndPol, 2).Value = wsStudent.Cells(i, 2).Value
            wsHotel.Cells(IndPol, 3).Value = wsStudent.Cells(i, 3).Value
            wsHotel.Cells(IndPol, 4).Value = wsStudent.Cells(i, 4).Value
             wsHotel.Cells(IndPol, 5).Value = wsStudent.Cells(i, 5).Value
              wsHotel.Cells(IndPol, 6).Value = wsStudent.Cells(i, 6).Value
              wsHotel.Cells(IndPol, 7).Value = wsStudent.Cells(i, 10).Value
               wsHotel.Cells(IndPol, 8).Value = wsStudent.Cells(i, 9).Value
            IndPol = IndPol + 1
            End If
    Next i
End Sub
Private Sub budget21_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    Set ws = ThisWorkbook.ActiveSheet
    
    lastRow = ws.Cells(ws.Rows.Count, "H").End(xlUp).Row
    
    Set rng = ws.Range("H2:H" & lastRow)
    
    For Each cell In rng
        If cell.Value >= 7.7 Then
            cell.Interior.Color = RGB(0, 255, 0)
        Else
            MsgBox "Нету Бюджетников"
        End If
    Next cell
End Sub
Private Sub Anularego_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    Set ws = ThisWorkbook.ActiveSheet

    lastRow = ws.Cells(ws.Rows.Count, "H").End(xlUp).Row

    Set rng = ws.Range("H2:H" & lastRow)

    For Each cell In rng

        cell.Interior.ColorIndex = xlNone
    Next cell
End Sub
Private Sub contract21_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    Set ws = ThisWorkbook.ActiveSheet
    
    lastRow = ws.Cells(ws.Rows.Count, "H").End(xlUp).Row
    
    Set rng = ws.Range("H2:H" & lastRow)
    
    For Each cell In rng
        If cell.Value < 7.7 Then
            cell.Interior.Color = RGB(0, 0, 250)
        Else
            MsgBox "Нету Контракников"
        End If
    Next cell
End Sub
Private Sub hotel32_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    Set ws = ThisWorkbook.ActiveSheet
    
    lastRow = ws.Cells(ws.Rows.Count, "I").End(xlUp).Row
    
    Set rng = ws.Range("I2:I" & lastRow)
    
    For Each cell In rng
        If cell.Value = 1 Then
            cell.Interior.Color = RGB(150, 250, 110)
        End If
    Next cell
End Sub
Private Sub cancel_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim cell As Range
    Dim rng As Range
    
    Set ws = ThisWorkbook.ActiveSheet

    lastRow = ws.Cells(ws.Rows.Count, "I").End(xlUp).Row

    Set rng = ws.Range("I2:I" & lastRow)

    For Each cell In rng

        cell.Interior.ColorIndex = xlNone
    Next cell
End Sub
