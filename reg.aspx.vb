Imports System.Data.SqlClient
Imports System.Data

Imports System.Net.Mail
Imports System.Web



Public Class reg
    Inherits System.Web.UI.Page
   
    Dim mail As New MailMessage()
    Dim val As String
    Dim value As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
      
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
           


            'message send

            Dim SmtpServer As New SmtpClient()
            SmtpServer.Credentials = New Net.NetworkCredential("jibaba121@gmail.com", "newtime123")
            SmtpServer.Port = 587
            SmtpServer.Host = "smtp.gmail.com"
            SmtpServer.EnableSsl = True

            mail = New MailMessage()
            Dim msg1 As String
            msg1 = CStr(text.Text)
            Randomize()
            ' Generate random value between 1 and 1000. 
            value = CStr(Int((1000 * Rnd()) + 1))
            msg1 = "Name :" + name.Text + Environment.NewLine.ToString() + "reg :" + mobile.Text + Environment.NewLine.ToString() + "password:" + password.Text + Environment.NewLine.ToString() + "activation code :" + value
            Dim addr() As String = email.Text.Split(",")
            Try
                mail.From = New MailAddress("jibaba121@gmail.com",
                    "Complaint Portail", System.Text.Encoding.UTF8)

                Dim i As Byte
                For i = 0 To addr.Length - 1
                    mail.To.Add(addr(i))
                Next
                mail.Subject = "Complaint Registration"
                mail.Body = msg1
                
                mail.DeliveryNotificationOptions =
                        DeliveryNotificationOptions.OnFailure
                mail.ReplyTo = New MailAddress(email.Text)
                SmtpServer.Send(mail)
            Catch ex As Exception
                MsgBox(ex.ToString())
            End Try

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
        Dim fom As String
        fom = mobile.Text + "," + name.Text + "," + email.Text + "," + mobile.Text + "," + department.Text + "," + type.Text + "," + password.Text + "," + text.Text
        Session("val") = fom + "," + value + "," + line1.Text + "," + DropDownList1.Text + "," + DropDownList2.Text + "," + pincode.Text

        Response.Redirect("verfi.aspx", False)

    End Sub

    Protected Sub line1_TextChanged(sender As Object, e As EventArgs) Handles line1.TextChanged
    End Sub
End Class