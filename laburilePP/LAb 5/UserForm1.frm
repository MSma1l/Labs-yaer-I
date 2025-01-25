VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   10140
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13260
   OleObjectBlob   =   "UserForm1.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCancel_Click()
    FormContr.Hide
End Sub

Private Sub cmdContr_Click()
    Dim oContr As Document
    Set oContr = Application.Documents.Add("D:\Laburi\Laburile la PP\LAb 5\lab5.RTF")
    oContr.Bookmarks("bFirma1").Range.Text = numeFirma1.Value
    oContr.Bookmarks("bFirma2").Range.Text = numeFirma2.Value
    oContr.Bookmarks("bAdresa1").Range.Text = adresaFirma1.Value
    oContr.Bookmarks("bAdresa2").Range.Text = adresaFirma2.Value
    oContr.Bookmarks("bCertificat1").Range.Text = nrCertificat1.Value
    oContr.Bookmarks("bCertificat2").Range.Text = nrCertificat2.Value
    oContr.Bookmarks("bNumPren1").Range.Text = numePrenume1.Value
    oContr.Bookmarks("bNumPren2").Range.Text = numePrenume2.Value
    oContr.Bookmarks("bFunctia1").Range.Text = functia1.Value
    oContr.Bookmarks("bFunctia2").Range.Text = functia2.Value
    If incasariFirma1.Value = True Then
        oContr.Bookmarks("bIncasari").Range.Text = numeFirma1.Value
    End If
    If incasariFirma2.Value = True Then
        oContr.Bookmarks("bIncasari").Range.Text = numeFirma2.Value
    End If
    oContr.Bookmarks("data").Range.Text = Date
    FormContr.Hide
    oContr.Activate
End Sub

Public Sub FormContrShow()
    FormContr.Show
End Sub

