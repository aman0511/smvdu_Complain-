Imports System.Data.SqlClient
Imports System.Data

Imports System.Net.Mail

Public Class Reminder
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim comm As SqlCommand
    Dim myreader As SqlDataReader
    Dim mail As New MailMessage()


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=" + "C:\Users\AAYUSH\Documents\Visual Studio 2013\Projects\mycompalint\mycompalint\App_Data\qwert.mdf" + ";Integrated Security=True")

            con.Open()
            ' MsgBox("connection sucessful")
            comm = New SqlCommand()
            comm.Connection = con
            comm.CommandText = "select text ,department from [USER] where complaint_id = '" & Lname.Text & " ' "


            myreader = comm.ExecuteReader()
            If myreader.HasRows Then

                myreader.Read()
                If CStr(TextBox2.Text) = CStr(myreader.Item("password")) Then
                    Dim msg2 As String = myreader.Item("text")
                    Dim msg3 As String = myreader.Item("department")
                    'message send
                    Dim SmtpServer As New SmtpClient()
                    SmtpServer.Credentials = New Net.NetworkCredential("jibaba121@gmail.com", "newtime123")
                    SmtpServer.Port = 587
                    SmtpServer.Host = "smtp.gmail.com"
                    SmtpServer.EnableSsl = True

                    Mail = New MailMessage()
                    Dim msg1 As String

                    Randomize()
                    ' Generate random value between 1 and 1000. 

                    msg1 = msg2
                    Dim em As String = "amankumar0511@gmail.com"
                    Dim addr() As String = em.Split(",")
                    Try
                        Mail.From = New MailAddress("jibaba121@gmail.com",
                            "Complaint Portail", System.Text.Encoding.UTF8)

                        Dim i As Byte
                        For i = 0 To addr.Length - 1
                            Mail.To.Add(addr(i))
                        Next
                        mail.Subject = "Complaint related to " + msg3


                        Mail.Body = msg1

                        Mail.DeliveryNotificationOptions =
                                DeliveryNotificationOptions.OnFailure
                        Mail.ReplyTo = New MailAddress(em)
                        SmtpServer.Send(Mail)
                    Catch ex As Exception
                        MsgBox(ex.ToString())
                    End Try
                    MsgBox("complent is revied ")
                    Response.Redirect("home.aspx", False)
                   

                Else
                    wpass2.Text = "worng password or registration"
                End If

                myreader.Close()

            End If




        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class