<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="mycompalint.Admin" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
    </style>
</head>
<body>
      <div id="container" >
   <div id ="header">
      <img src="Images/smvdu_logo.png" />
        <div id="titlesmall"><span id="lblh1">PORTAL FOR  </span></div>
       <div id="titleDiv">STUDENT GRIEVANCES</div>
       <div class="DIVDARPG"><span>Brought to you by</span>Department of Computer Science</div>
    </div>
    <div id="header-logo">
        <div id="logo">SMVD University,Katra</div>
         <div id="divhome"><a href="Home.aspx">Home</a></div>
    </div>
          <div id="header1">
            <table align="center">
                <tbody>
                    <tr>
                       
                        
                        
                        <td width="4px" class="dotted_line" ></td>
                        <td class="link2"><a href="#">Change Password</a></td>
                        <td width="4px" class="dotted_line" ></td>
                        <td class="link2"><a href="#">Forgot Password</a></td>
                        <td width="4px" class="dotted_line" ></td>
                    </tr>
                </tbody>

            </table>
        </div>
    

    <form id="form1" runat="server">
 
   <div class="CenterP" style="height:200px">
        <h1>Admin login</h1>
        <table style="margin: 0 auto;CELLPADDING:14px; CELLSPACING:12px">
            <tbody>
                <tr>
                    <td style="width:200px"><strong>User Name</strong></td>
                    <td> <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox></td>
                </tr>
                <tr><td><strong>Password</strong></td>
                    <td> <asp:TextBox ID="TextBox2" TextMode="password" runat="server"></asp:TextBox>
                        <asp:Label ID="wpass" runat="server" ForeColor="Red" Width="200px"></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
               <table><tbody><tr><td width="410px" class="auto-style1"></td><td class="auto-style1"><asp:Button ID="Button1" runat="server" Text="Submit" BorderColor="#FFFF99" Width="75px"  /></td></tr></tbody></table>
        
    
    </div>
    </form>
          <marquee width="100%" behavior="SCROLL" class="marquee" loop="3"> <i>* Recommended Browsers *
       
           1. Microsoft Internet Explorer 7.0 or higher for Windows <a class="mr" href="http://www.microsoft.com/windows/ie/downloads/default.asp" target="_blank">(get latest Internet Explorer browser)</a>
       
           ******2. Mozilla Firefox 3.0 or higher for Mac, Windows, and Linux <a href="http://www.mozilla.org/products/firefox/" target="_blank" class="mr">(get latest Firefox browser)</a></i></marquee>
          <div id="footer">
        <div id="lowerband">
       
            <a href="#" target="_blank">DARPG Website</a> || <a href="Adress.htm" target="_blank">Contact Us</a> ||  <a href="#" target="_blank">SMVDU Portal of India</a> ||
            <a href="#" target="_blank">Disclaimer</a>
        </div>
        
        ©2014 Designed, Developed and hosted by <a href="#" target="_blank">
            Department of computer science</a>
             .
            
    </div>
          
</div></body>
</html>