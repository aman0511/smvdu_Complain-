<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PoAdmin.aspx.vb" Inherits="mycompalint.PoAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Site.css" rel="stylesheet" />
    <title></title>
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
                       
                       
                    </tr>
                </tbody>

            </table>
        </div>
    

    <form id="form1" runat="server">
    <div class="CenterP" >
        
    <div style="height:400px;">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="complaint_id" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" Width="855px" Height="410px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="complaint_id" HeaderText="complaint_id" ReadOnly="True" SortExpression="complaint_id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                <asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
       </div>
        
    
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [complaint_id], [name], [email], [mobile], [type], [department], [text], [status] FROM [USER]"></asp:SqlDataSource>
        
        <div>
            <div class="CenterP" style="height:150px; padding-left:0px;">
                <h1>Update Status</h1>
        <table style="margin: 0 auto;CELLPADDING:14px; CELLSPACING:12px">
            <tbody>
                <tr>
                    <td style="width:200px"><strong>Complaint Id</strong></td>
                    <td> <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox></td>
                </tr>
                <tr><td><strong>Status</strong></td>
                    <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:Label ID="wpass" runat="server" ForeColor="Red" Width="200px"></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
               <table><tbody><tr><td width="410px" class="auto-style1"></td><td class="auto-style1"><asp:Button ID="Button1" runat="server" Text="Submit" BorderColor="#FFFF99" Width="75px"  /></td></tr></tbody></table>
        
    
    </div>
            <div class="CenterP" style="height:245px; padding-left:0px;">
                <h1>Search</h1>
        <table style="margin: 0 auto;CELLPADDING:14px; CELLSPACING:12px">
            <tbody>
                <tr>
                    <td style="width:200px"><strong>Complaint Id</strong></td>
                    <td> <asp:TextBox ID="TextBox3"  runat="server"></asp:TextBox></td>
                </tr>
                
                </tr>
            </tbody>
        </table>
               <table><tbody><tr><td width="410px" class="auto-style1"></td><td class="auto-style1"><asp:Button ID="Button2" runat="server" Text="Submit" BorderColor="#FFFF99" Width="75px"  /></td></tr></tbody></table>
        
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="855px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                        <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                        <asp:BoundField DataField="text" HeaderText="text" SortExpression="text" />
                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                        <asp:BoundField DataField="Adress" HeaderText="Adress" SortExpression="Adress" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [email], [mobile], [department], [type], [text], [status], [Adress] FROM [USER] WHERE ([complaint_id] = @complaint_id)">
                    <SelectParameters>
                        <asp:FormParameter DefaultValue="1" FormField="TextBox3" Name="complaint_id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
        
    
    </div>

        </div>
    
    </div>
    </form>
          
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
