VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "����3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True

Private Sub Clear_Click()
    Dim ws As Worksheet
    Dim lastRow As Long
    Dim i As Long
    
    ' Referin?a la foaia activa
    Set ws = ThisWorkbook.ActiveSheet
    
    ' Gase?te ultimul r�nd utilizat
    lastRow = ws.Cells(ws.Rows.Count, 1).End(xlUp).Row
    
    ' Parcurge fiecare linie, cu excep?ia primei
    For i = 2 To lastRow
        ' ?terge con?inutul din fiecare celula din linie
        ws.Rows(i).ClearContents
    Next i
End Sub

