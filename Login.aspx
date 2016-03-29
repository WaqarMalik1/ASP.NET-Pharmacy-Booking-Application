<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalYearProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style7 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style7">
    
        <asp:Image ID="Image1" runat="server" Height="275px" ImageAlign="Middle" ImageUrl="~/Images/thelogo.jpg" style="margin-left: 36px; margin-top: 0px" Width="703px" />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="caption" runat="server" Font-Names="Georgia" style="font-weight: 700; font-style: italic; font-size: xx-large;" Text="Please log in to the delivery application" ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <br />
        <br />

        <asp:Label ID="username" runat="server" CssClass="auto-style6" Text="User Name:" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBoxUserName" runat="server" Height="25px" Width="200px" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUserName" ErrorMessage="PLEASE ENTER USERNAME!" ForeColor="Red" Height="25px" style="font-weight: 700"></asp:RequiredFieldValidator>

        <br />
        <br />

        <asp:Label ID="password" runat="server" CssClass="auto-style6" Text="Password:" Width="100px"></asp:Label>
        <asp:TextBox ID="TextBoxPassword" runat="server" Height="25px" Width="200px" TextMode="Password" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="PLEASE ENTER PASSOWRD!" ForeColor="Red" Height="25px" style="font-weight: 700"></asp:RequiredFieldValidator>

        <br />
        <br />
        <asp:Button ID="Button_Login" runat="server" Height="40px" OnClick="Button_Login_Click" Text="SIGN IN" Width="400px" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">CLICK HERE TO REGISTER FOR NEW STAFF MEMBERS TO USE THE DELIVERY PORTAL</asp:HyperLink>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    </div>
    </form>
</body>
</html>
