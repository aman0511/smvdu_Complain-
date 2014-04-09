Imports System.Data.SqlClient
Imports System.Data

Imports System.Net.Mail
Public Class Admin
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim comm As SqlCommand
    Dim myreader As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim pass As String
        Dim upass As String

        Try
            con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=" + "C:\Users\AAYUSH\Documents\Visual Studio 2013\Projects\mycompalint\mycompalint\App_Data\qwert.mdf" + ";Integrated Security=True")

            con.Open()
            'MsgBox("connection sucessful")
            comm = New SqlCommand()
            comm.Connection = con
            comm.CommandText = "select password from [Admin] where email = '" & TextBox1.Text & "' "

            upass = CStr(TextBox2.Text)
            myreader = comm.ExecuteReader()
            If myreader.HasRows Then

                myreader.Read()
                pass = CStr(myreader.Item("password"))
                
                If (pass) = (upass) Then
                    'MsgBox("sucess")
                    Response.Redirect("PoAdmin.aspx", False)

                Else
                    wpass.Text = "worng password or user"
                End If




                myreader.Close()

            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class