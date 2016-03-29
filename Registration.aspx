<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FinalYearProject.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 70%;
            margin-right: 0px;
        }
        .auto-style2 {
            width: 442px;
            text-align: left;
        }
        .auto-style3 {
            width: 184px;
            text-align: right;
            font-weight: bold;
        }
        .auto-style4 {
            text-align: left;
            width: 237px;
        }
        .auto-style5 {
            width: 184px;
            text-align: right;
            height: 23px;
            font-weight: bold;
        }
        .auto-style6 {
            text-align: left;
            height: 23px;
            width: 237px;
        }
        .auto-style7 {
            width: 442px;
            height: 23px;
            text-align: left;
        }
        .auto-style8 {
            width: 184px;
            text-align: right;
            height: 26px;
            font-weight: bold;
        }
        .auto-style9 {
            text-align: left;
            height: 26px;
            width: 237px;
        }
        .auto-style10 {
            width: 442px;
            height: 26px;
            text-align: left;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style12 {
            font-size: xx-large;
            color: #800000;
        }
        .auto-style13 {
            width: 184px;
            text-align: right;
            height: 25px;
            font-weight: bold;
        }
        .auto-style14 {
            text-align: left;
            width: 237px;
            height: 25px;
        }
        .auto-style15 {
            width: 442px;
            text-align: left;
            height: 25px;
        }
        #Reset1 {
            width: 100px;
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Image ID="Image1" runat="server" Height="275px" ImageUrl="~/Images/thelogo.jpg" Width="703px" />
        <br />
        <br />
        <br />
        <h1 class="auto-style12">Staff Registration Page</h1>


    
        <table class="auto-style1" align="center">
            <tr>
                <td class="auto-style13">Gender:</td>

                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownListGender" runat="server" Width="200px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownListGender" ErrorMessage="Gender is required" ForeColor="Red" style="font-weight: 700" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style5">Title:</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownListTitle" runat="server" Width="200px">
                        <asp:ListItem>Select Title</asp:ListItem>
                        <asp:ListItem>Prof</asp:ListItem>
                        <asp:ListItem>Dr</asp:ListItem>
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Miss</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListTitle" CssClass="auto-style11" ErrorMessage="Select a title is required" ForeColor="Red" InitialValue="Select Title"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">First Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxFN" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxFN" CssClass="auto-style11" ErrorMessage="First Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Last Name:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxLN" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxLN" CssClass="auto-style11" ErrorMessage="Last Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Your Date Of Birth:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxYA" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxYA" CssClass="auto-style11" ErrorMessage="Your age is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">First Line Of Address:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxFLOA" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxFLOA" CssClass="auto-style11" ErrorMessage="First line of address is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Town:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxTOWN" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxTOWN" CssClass="auto-style11" ErrorMessage="Town is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">County:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxCOUNTY" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxCOUNTY" CssClass="auto-style11" ErrorMessage="County is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Postal Code:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPC" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxPC" CssClass="auto-style11" ErrorMessage="Postal code is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Contact Number:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxCN" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxCN" CssClass="auto-style11" ErrorMessage="Contact number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">User Name:</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxUN" CssClass="auto-style11" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">E-Mail:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxEmail" CssClass="auto-style11" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter a valid email I.E. abc@gmail.com" ForeColor="Red" style="font-weight: 700" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxPass" CssClass="auto-style11" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxRPass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxRPass" CssClass="auto-style11" ErrorMessage="Confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRPass" ErrorMessage="Both passwords must be the same!" ForeColor="Red" style="font-weight: 700"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" style="height: 26px" Height="100px" Width="100px" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />


    
    </div>
    </form>
</body>
</html>
