Imports System.Data.SqlClient
Imports System.Data

Imports System.Net.Mail
Imports System.Web
Public Class forgot1
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim comm As SqlCommand
    Dim myreader As SqlDataReader
    Dim mail As New MailMessage()
    Dim val As String
    Dim value As String
    Dim name1 As String
    Dim email1 As String
    Dim status1 As String
    Dim val1 As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try

      
        con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=" + "C:\Users\AAYUSH\Documents\Visual Studio 2013\Projects\mycompalint\mycompalint\App_Data\qwert.mdf" + ";Integrated Security=True")

        con.Open()
        'MsgBox("connection sucessful")
        comm = New SqlCommand()
        comm.Connection = con
            comm.CommandText = "select  email , name,status from [USER] where complaint_id = '" & TextBox1.Text & " ' "
            myreader = comm.ExecuteReader()
            If myreader.HasRows Then
                
                myreader.Read()

                name1 = myreader.Item("name")
                email1= myreader.Item("email")
                status1 = myreader.Item("status")


            End If

            'message
            Dim SmtpServer As New SmtpClient()
            SmtpServer.Credentials = New Net.NetworkCredential("jibaba121@gmail.com", "newtime123")
            SmtpServer.Port = 587
            SmtpServer.Host = "smtp.gmail.com"
            SmtpServer.EnableSsl = True

            mail = New MailMessage()
            Dim msg1 As String

            Randomize()
            ' Generate random value between 1 and 1000. 
            value = CStr(Int((1000 * Rnd()) + 1))
            msg1 = "name :" + Environment.NewLine.ToString() + "status :" + status1 + Environment.NewLine.ToString() + "verifiction code :" + value
            Dim em As String = email1
            Dim addr() As String = em.Split(",")
            Try
                mail.From = New MailAddress("jibaba121@gmail.com",
                    "Complaint Portail", System.Text.Encoding.UTF8)

                Dim i As Byte
                For i = 0 To addr.Length - 1
                    mail.To.Add(addr(i))
                Next
                mail.Subject = "request to password reset"

                mail.Body = msg1

                mail.DeliveryNotificationOptions =
                        DeliveryNotificationOptions.OnFailure
                mail.ReplyTo = New MailAddress(em)
                SmtpServer.Send(mail)
            Catch ex As Exception
                MsgBox(ex.ToString())
            End Try
            Dim fr As String = CStr(TextBox1.Text)
            Session("val1") = fr + "," + value
            Response.Redirect("forgot2.aspx", False)
        Catch ex As Exception

        End Try

    End Sub
End Class