<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="successfullregistration.aspx.cs" Inherits="FinalYearProject.successfullregistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Image ID="Image1" runat="server" Height="275px" ImageUrl="~/Images/thelogo.jpg" Width="703px" />
        <br />
        <br />
        <br />
        <asp:Label ID="LabelSR" runat="server" style="font-size: xx-large; font-weight: 700; font-style: italic" Text="KINGSWAY STAFF REGISTRATION WAS SUCCESSFULL" ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">CLICK HERE TO LOG IN TO THE DELIVERY PORTAL</asp:HyperLink>
        <br />
        <asp:Image ID="Image2" runat="server" Height="246px" ImageUrl="~/Images/regsuccess.jpg" />
    
    </div>
    </form>
</body>
</html>
