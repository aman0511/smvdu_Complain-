
Imports System.Data.SqlClient
Imports System.Data

Imports System.Net.Mail

Public Class PoAdmin
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim comm As SqlCommand
    Dim myreader As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Try
            con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=" + "C:\Users\AAYUSH\Documents\Visual Studio 2013\Projects\mycompalint\mycompalint\App_Data\qwert.mdf" + ";Integrated Security=True")

            con.Open()
            ' MsgBox("connection sucessful")
            comm = New SqlCommand()
            comm.Connection = con
            comm.CommandText = "UPDATE [USER] SET status='" & TextBox2.Text & "' where complaint_id= '" & TextBox1.Text & "'"


            myreader = comm.ExecuteReader()
            MsgBox("update sucess full" + TextBox2.Text)
                
                myreader.Close()




        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class