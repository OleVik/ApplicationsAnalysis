Attribute VB_Name = "Module1"
Option Explicit

Sub ChangeDocsToTxtOrRTFOrHTML()
'with export to PDF in Word 2007
    Dim fs As Object
    Dim oFolder As Object
    Dim tFolder As Object
    Dim oFile As Object
    Dim strDocName As String
    Dim intPos As Integer
    Dim locFolder As String
    Dim fileType As String
    On Error Resume Next
    locFolder = InputBox("Enter the folder path to DOCs", "File Conversion", "C:\Users\Ole\Desktop\ApplicationsAnalysis\Data\Doc")
    Select Case Application.Version
        Case Is < 12
            Do
                fileType = UCase(InputBox("Change DOC to TXT, RTF, HTML", "File Conversion", "TXT"))
            Loop Until (fileType = "TXT" Or fileType = "RTF" Or fileType = "HTML")
        Case Is >= 12
            Do
                fileType = UCase(InputBox("Change DOC to TXT, RTF, HTML or PDF(2007+ only)", "File Conversion", "TXT"))
            Loop Until (fileType = "TXT" Or fileType = "RTF" Or fileType = "HTML" Or fileType = "PDF")
    End Select
    Application.ScreenUpdating = False
    Set fs = CreateObject("Scripting.FileSystemObject")
    Set oFolder = fs.GetFolder(locFolder)
    Set tFolder = fs.CreateFolder(locFolder & "Converted")
    Set tFolder = fs.GetFolder(locFolder & "Converted")
    For Each oFile In oFolder.Files
        Dim d As Document
        Set d = Application.Documents.Open(oFile.Path)
        strDocName = ActiveDocument.Name
        intPos = InStrRev(strDocName, ".")
        strDocName = Left(strDocName, intPos - 1)
        ChangeFileOpenDirectory tFolder
        Select Case fileType
        Case Is = "TXT"
            strDocName = strDocName & ".txt"
            ActiveDocument.SaveAs FileName:=strDocName, FileFormat:=wdFormatText
        Case Is = "RTF"
            strDocName = strDocName & ".rtf"
            ActiveDocument.SaveAs FileName:=strDocName, FileFormat:=wdFormatRTF
        Case Is = "HTML"
            strDocName = strDocName & ".html"
            ActiveDocument.SaveAs FileName:=strDocName, FileFormat:=wdFormatFilteredHTML
        Case Is = "PDF"
            strDocName = strDocName & ".pdf"

            ' *** Word 2007 users - remove the apostrophe at the start of the next line ***
            'ActiveDocument.ExportAsFixedFormat OutputFileName:=strDocName, ExportFormat:=wdExportFormatPDF
            
        End Select
        d.Close
        ChangeFileOpenDirectory oFolder
    Next oFile
    Application.ScreenUpdating = True
End Sub
