Imports System.Runtime.InteropServices

Public Class Form1
    <DllImport("TestDLL.dll")>
    Public Shared Function AddInteger(ByVal a As Integer, ByVal b As Integer) As Integer

    End Function
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Public Declare Function AddIntegerV2 Lib "TestDLL.dll" Alias "AddInteger" (ByVal a As Integer, ByVal b As Integer) As Integer


    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        MessageBox.Show(AddInteger(TextBox1.Text, TextBox2.Text))
        MessageBox.Show(AddIntegerV2(TextBox1.Text, TextBox2.Text))
    End Sub
End Class
