Imports System.Data.SqlClient
Imports System.Data

Imports System.Net.Mail
Public Class forgot2
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim comm As SqlCommand
    Dim myreader As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim strVal As String = DirectCast(Session("val1"), String)
        Dim parts As String() = strVal.Split(New Char() {","c})

        If parts(1) = TextBox2.Text Then
            Try
                con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=" + "C:\Users\AAYUSH\Documents\Visual Studio 2013\Projects\mycompalint\mycompalint\App_Data\qwert.mdf" + ";Integrated Security=True")

                con.Open()
                ' MsgBox("connection sucessful")
                comm = New SqlCommand()
                comm.Connection = con
                


                comm.CommandText = "UPDATE [USER] SET password='" & TextBox3.Text & "' where complaint_id= '" & TextBox1.Text & "'"
                myreader = comm.ExecuteReader()
                wpass5.Text = ""
                Response.Redirect("home.aspx", False)
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        Else
            wpass5.Text = "worng code"



        End If


        myreader.Close()



    End Sub
End Class