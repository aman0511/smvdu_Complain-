<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="reg.aspx.vb" Inherits="mycompalint.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/Site.css" rel="stylesheet" />
    <style type="text/css">
        #Radio1 {
            height: 19px;
            width: 46px;
        }
        
        .auto-style1 {
            height: 21px;
        }
        .auto-style2 {
            width: 354px;
        }
        .auto-style3 {
            float: right;
            width: 354px;
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
                        <td class="link2"><a href="reg.aspx">Lodge a Grievances</a></td>
                        <td width="4px" class="dotted_line" ></td>
                        <td class="link2"><a href="Reminder.aspx">Lodge Reminder/Clarification</a></td>
                        <td width="4px" class="dotted_line" ></td>
                        <td class="link2"><a href="ViewStatus.aspx">View Status</a></td>
                        <td width="4px" class="dotted_line" ></td>
                        <td class="link2"><a href="changeP.aspx">Change Password</a></td>
                        <td width="4px" class="dotted_line" ></td>
                        <td class="link2"><a href="forgot1.aspx">Forgot Password</a></td>
                        <td width="4px" class="dotted_line" ></td>
                    </tr>
                </tbody>

            </table>
        </div>
    <form id="form1" runat="server">
    <div class="CenterP">
        <h1>Grievance Registration Form</h1>
        <table>
            <tbody>
                <tr> 
<p>Entries Prefixed with * are Mandatory</p> <hr size="2"></tr>
                <tr><td><span style="color:red ;">*</span> <strong>Grievance Pertains to</strong></td><td class="auto-style2"><asp:RadioButton ID="type"   runat="server" GroupName="choice" text ="Academic" />
                    <asp:RadioButton runat="server" GroupName="choice" text ="residential" Checked/></span></td>
                    </tr><tr><td><span style="color:red ;">*</span> <strong>Department</strong></td><td class="auto-style2"><asp:DropDownList ID="department" runat="server">
                    <asp:ListItem>Computer Science</asp:ListItem>
                    <asp:ListItem>Mechnical </asp:ListItem>
                    <asp:ListItem>Elcetronics</asp:ListItem>
                    <asp:ListItem>IBT</asp:ListItem>
                    <asp:ListItem>Arcitecture</asp:ListItem>
                    <asp:ListItem>Faculty</asp:ListItem>
                    </asp:DropDownList></td>
        <hr size="2" /></tr>
        <tr>
            
            <td style="width:300px;"><span style="color:red">*</span><strong>Name</strong></td><td class="auto-style3"><asp:TextBox ID="name" runat="server" AutoCompleteType="FirstName" Width="218px" Wrap="False" ValidateRequestMode="Enabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" ErrorMessage="Enter name" ForeColor="Red"></asp:RequiredFieldValidator>
          
            
            </td>
        </tr><br />
                <tr>
                    <td><span style="color:red">*</span><strong>Password</strong></td><td class="auto-style2">
                        <asp:TextBox ID="password" TextMode="password" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                </tr>
                 <tr>
                    <td><span style="color:red">*</span><strong>Repassword</strong></td><td class="auto-style2">
                        <asp:TextBox ID="TextBox2" TextMode="password" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="password"  ControlToCompare="TextBox2"  ErrorMessage="ReEnter Password" ForeColor="Red"></asp:CompareValidator>
                        
                </tr>
            

                <tr ><td  style="height:60px;"><strong>&nbsp;Adress</strong></td><td class="auto-style2" style="height:60px;">
                    <asp:TextBox ID="line1" runat="server" Height="60px" Width="226px" TextMode="MultiLine"></asp:TextBox></td></tr>
                       
                


              
                 <tr>
                    <td>&nbsp; <strong>State</strong></td><td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="197px">
                            <asp:ListItem>State</asp:ListItem>
                            <asp:ListItem>Andaman And Nicobar IslandsBihar</asp:ListItem>
                            <asp:ListItem>Andhra PradeshChandigarh</asp:ListItem>
                            <asp:ListItem>Arunachal PradeshChhattisgarh</asp:ListItem>
                            <asp:ListItem>AssamDadra and Nagar Haveli</asp:ListItem>
                            <asp:ListItem>BiharDaman and Diu</asp:ListItem>
                            <asp:ListItem>ChandigarhDelhi</asp:ListItem>
                            <asp:ListItem>ChhattisgarhGoa</asp:ListItem>
                            <asp:ListItem>Dadra and Nagar HaveliGujara</asp:ListItem>
                            <asp:ListItem>Daman and DiuHaryana</asp:ListItem>
                            <asp:ListItem>DelhiHimachal Pradesh</asp:ListItem>
                            <asp:ListItem>GoaJammu And Kashmir</asp:ListItem>
                            <asp:ListItem>GujaraJharkhand</asp:ListItem>
                            <asp:ListItem>HaryanaKarnataka</asp:ListItem>
                            <asp:ListItem>Himachal PradeshKerala</asp:ListItem>
                            <asp:ListItem>Jammu And KashmirLakshadweep</asp:ListItem>
                            <asp:ListItem>JharkhandMadhya Pradesh</asp:ListItem>
                            <asp:ListItem>KarnatakaSelect</asp:ListItem>
                            <asp:ListItem>KeralaAndaman And Nicobar Islands</asp:ListItem>
                            <asp:ListItem>LakshadweepAndhra Pradesh</asp:ListItem>
                            <asp:ListItem>Madhya PradeshArunachal Pradesh</asp:ListItem>
                        </asp:DropDownList>
                </tr>
                 <tr>
                    <td>&nbsp; <strong>Country</strong></td><td class="auto-style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="198px">
                            <asp:ListItem>country</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                        </asp:DropDownList>
                </tr>
                 <tr>
                    <td><strong>&nbsp; Pincode</strong></td><td class="auto-style2">
                        <asp:TextBox ID="pincode"  runat="server"></asp:TextBox>
                </tr>
                 <tr>
                    <td><span style="color:red">*</span><strong>Mobile</strong></td><td class="auto-style2">
                        <asp:TextBox ID="mobile" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="mobile"  runat ="server" ErrorMessage="Enter valid Phone no ." ForeColor="Red" ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="mobile" ErrorMessage="Enter mobile" ForeColor="Red"></asp:RequiredFieldValidator>
                </tr>
                 <tr>
                    <td><span style="color:red">*</span><strong>Email</strong></td><td class="auto-style2">
                        <asp:TextBox ID="email"  runat="server"></asp:TextBox>
                        
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="email" runat="server" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" ErrorMessage="Enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                        </tr>
             
            </tbody>
        </table>
        <hr />
        <table>
            <tbody>
                <tr><td class="auto-style1"><span style="color:red">*</span><strong> Please enter Grievance Description upto 4000 characters </strong></td></tr>
                <tr><td><span style="color:red">*</span><strong>Special charecters like ^ [ ^ { } ` ~ | ^ & # ! \ [ \ ] < > ] $ are not allowed. </strong></td></tr>
                <tr><td>
                    <asp:TextBox ID="text" runat="server" BorderColor="Black" Height="144px" TextMode="MultiLine" Width="506px"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="text" ErrorMessage="Enter Complaint" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    </td></tr>
               
            </tbody>
        </table>
        <br />
        <asp:Label ID="Label1" runat="server" Text="I hereby state that the facts mentioned above are true to the best of my knowledge and belief." Font-Bold="True" ForeColor="Black"></asp:Label>
   
   <table>
       <tbody>
           
           <tr>
           
           <td style="width:80px"><asp:Button ID="Button1" runat="server" Text="Submit" Font-Bold="True" ForeColor="#FF0066" /></td><td><asp:Button ID="Button2" runat="server" Text="Reset" Font-Bold="True" ForeColor="#FF0066" /></td></tr></tbody>
   </table>
           
    
        
           

    
  </div> 
 
    </form>
        </div>
</body>
</html>

