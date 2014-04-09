Imports System.Data.SqlClient
Imports System.Data

Imports System.Net.Mail

Public Class ViewStatus
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim comm As SqlCommand
    Dim myreader As SqlDataReader
    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Try
            con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=" + "C:\Users\AAYUSH\Documents\Visual Studio 2013\Projects\mycompalint\mycompalint\App_Data\qwert.mdf" + ";Integrated Security=True")

            con.Open()
            ' MsgBox("connection sucessful")
            comm = New SqlCommand()
            comm.Connection = con
            comm.CommandText = "select name ,email ,status ,password from [USER] where complaint_id = '" & TextBox1.Text & " ' "


            myreader = comm.ExecuteReader()
            If myreader.HasRows Then

                myreader.Read()
                If CStr(TextBox2.Text) = CStr(myreader.Item("password")) Then
                    Lname.Text = myreader.Item("name")
                    Lemail.Text = myreader.Item("email")
                    Lstatus.Text = myreader.Item("status")

                Else
                    wpass1.Text = "worng password or registration"
                End If

                myreader.Close()

            End If




        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
End Class