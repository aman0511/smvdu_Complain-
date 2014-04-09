Imports System.Data.SqlClient
Imports System.Data

Imports System.Net.Mail
Imports System.Web

Public Class verfi
    Inherits System.Web.UI.Page
    Dim con As SqlConnection
    Dim comm As SqlCommand
    Dim myreader As SqlDataReader
    Dim mail As New MailMessage()
    Dim val As String
    Dim value As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim strVal As String = DirectCast(Session("val"), String)
        Dim parts As String() = strVal.Split(New Char() {","c})
        Dim Add1 As String
        Add1 = parts(9) + "  ," + parts(10) + "   ," + parts(11) + "  ," + "pincode: " + parts(12)
        If parts(8) = TextBox1.Text Then

        
            con = New SqlConnection("Data Source=(LocalDB)\v11.0;AttachDbFilename=" + "C:\Users\AAYUSH\Documents\Visual Studio 2013\Projects\mycompalint\mycompalint\App_Data\qwert.mdf" + ";Integrated Security=True")

            con.Open()
            'MsgBox("connection sucessful")
            comm = New SqlCommand()
            comm.Connection = con
            comm.CommandText = "insert into [USER] values('" & parts(0) & "','" & parts(1) & "','" & parts(2) & "','" & parts(3) & "','" & parts(4) & "','" & parts(5) & "','" & parts(6) & "','" & parts(7) & "','Na','" & Add1 & "')"


            myreader = comm.ExecuteReader()

            Label1.Text = "complaint is registrated sucess full"

        Else
            Label1.Text = "verfiction code is not correct"
        End If
        'MsgBox(parts(8))

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
        value = CStr(Int((1000 * Rnd()) + 1))
        msg1 = parts(7)
        Dim em As String = "amankumar0511@gmail.com"
        Dim addr() As String = em.Split(",")
        Try
            Mail.From = New MailAddress("jibaba121@gmail.com",
                "Complaint Portail", System.Text.Encoding.UTF8)

            Dim i As Byte
            For i = 0 To addr.Length - 1
                Mail.To.Add(addr(i))
            Next
            mail.Subject = "Complaint related to " + parts(4)

            mail.Body = msg1

            Mail.DeliveryNotificationOptions =
                    DeliveryNotificationOptions.OnFailure
            mail.ReplyTo = New MailAddress(em)
            SmtpServer.Send(Mail)
        Catch ex As Exception
            MsgBox(ex.ToString())
        End Try
        Response.Redirect("home.aspx", False)
    End Sub
End Class