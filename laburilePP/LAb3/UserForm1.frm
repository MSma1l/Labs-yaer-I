VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   8565.001
   ClientLeft      =   240
   ClientTop       =   915
   ClientWidth     =   21480
   OleObjectBlob   =   "UserForm1.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Function SumaVector(rng As Range) As Double
    Dim i As Integer
    Dim n As Integer
    Dim Suma As Double

    n = rng.Rows.Count
    ReDim vect(1 To n) As Double
    Suma = 0
    For i = 1 To n
        vect(i) = rng(i)
        Suma = Suma + vect(i)
    Next i
    SumaVector = Suma
End Function
Public Function MaxVector(rng As Range) As Double
    Dim i As Integer
    Dim n As Integer
    Dim max As Double
    ' Preluarea plajei de celule
    n = rng.Rows.Count
    ReDim vect(1 To n) As Double
    For i = 1 To n: vect(i) = rng(i): Next i
    max = vect(1)
    For i = 2 To n
        If (vect(i) > max) Then
            max = vect(i)
        End If
    Next i
    MaxVector = max
End Function
Public Function MinVector(rng As Range) As Double
    Dim i As Integer
    Dim n As Integer
    Dim min As Double
    ' Preluarea plajei de celule
    n = rng.Rows.Count
    ReDim vect(1 To n) As Double
    For i = 1 To n: vect(i) = rng(i): Next i
    min = vect(1)
    For i = 2 To n
        If (vect(i) < min) Then
            min = vect(i)
        End If
    Next i
    MinVector = min
End Function

Public Function ScaleVector(rng As Range, sc As Double) As Double()
 Dim i As Integer
 Dim n As Integer
 ' Preluarea plajei de celule
 n = rng.Rows.Count
 ReDim vect(1 To n) As Double
 For i = 1 To n: vect(i) = rng(i): Next i
 ReDim scaled(1 To n) As Double
 For i = 1 To n
 scaled(i) = sc * vect(i)
 Next i
 ScaleVector = scaled
End Function
Public Function Suma2Vec(rng1 As Range, rng2 As Range) As Variant
 Dim i As Integer
 Dim n1 As Integer
 Dim n2 As Integer
 ' Preluarea plajei de celule
 n1 = rng1.Rows.Count
 n2 = rng2.Rows.Count
 If (n1 <> n2) Then
 Suma2Vec = "Dimensiuni inegale."
 Exit Function
 End If
 ReDim vect(1 To n1) As Double
 For i = 1 To n1
 vect(i) = rng1(i) + rng2(i)
 Next i
 Suma2Vec = vect
End Function
Public Function Bubble(rng As Range) As Double()
 Dim temp As Double
 Dim i As Integer, j As Integer
 Dim n As Integer
 n = rng.Rows.Count
 ReDim A(1 To n) As Double
 For i = 1 To n
 A(i) = rng(i)
 Next i
 For i = 1 To n - 1
 For j = 1 To n - i
 If (A(j) > A(j + 1)) Then
 temp = A(j)
 A(j) = A(j + 1)
 A(j + 1) = temp
 End If
 Next j
 Next i
 Bubble = A
End Function
Private Sub cmdExit_Click()
 MainUserForm1.Hide
 Unload MainUserForm1
End Sub
Private Sub cmdMinMax_Click()
 Dim min As Double
 Dim max As Double
 Dim vect As Range
    
    Set vect = Range("B2:B10")
 min = MinVector(vect)
 max = MaxVector(vect)

 viewMin.Caption = "Minimul este: " & min
 viewMax.Caption = "Maximul este: " & max
End Sub
Private Sub cmdScale_Click()
 Dim c As Double
 Dim n As Integer
 Dim col As Integer
 Dim vect As Range
 Set vect = Range("B2:B10")
 
 n = vect.Rows.Count
 c = insConst.Value

 ReDim scal(1 To n) As Double
 scal = ScaleVector(vect, c)

 col = insCol.Value
 Cells(1, col).Value = "Scaled"
 For i = 1 To n
 Cells(i + 1, col).Value = scal(i)
 Next i

End Sub
Private Sub cmdSort_Click()
 Dim col As Integer
 Dim vect As Range
 Set vect = Range("B2:B10")
 
 ReDim rez(1 To vect.Rows.Count) As Double
 rez = Bubble(vect)
 col = insCol4.Value
 Cells(1, col).Value = "Sorted"
 For i = 1 To vect.Rows.Count
 Cells(i + 1, col).Value = rez(i)
 Next i
End Sub
Private Sub cmdSuma_Click()
    Dim sum As Double
    Dim vect As Range
    
    Set vect = Range("B2:B10")
    
    If Not vect Is Nothing Then
        sum = SumaVector(vect)
        
        viewSuma.Caption = "Suma este: " & sum
    Else
        MsgBox "Variabila 'vect' nu este definita sau este goala!", vbExclamation
    End If
End Sub

Private Sub cmdSumeaza_Click()
 Dim vect1 As Range
 Dim vect2 As Range
 Dim rez As Variant
 Dim col As Integer
 Dim vect As Range
 Set vect = Range("B2:B10")
 
 Set vect1 = Range(insCol1.Value)
 Set vect2 = Range(insCol2.Value)

 rez = Suma2Vec(vect1, vect2)

 If (VarType(rez) = vbString) Then
 MsgBox rez
 Else
 col = insCol3.Value
 Cells(1, col).Value = "Suma 2 vectori"

For i = 1 To vect1.Rows.Count
 Cells(i + 1, col).Value = rez(i)
 Next i
 End If
End Sub
Private Sub UserForm1_Activate()
 Set vect = Worksheets("Sheet1").Range(ActiveWindow.RangeSelection.Address)
End Sub

Private Sub MultiPage1_Change()

End Sub
