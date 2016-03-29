<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="successfulldeliverybooking.aspx.cs" Inherits="FinalYearProject.successfulldeliverybooking" %>

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
        <asp:Label ID="LabelSR" runat="server" style="font-size: xx-large; font-weight: 700; font-style: italic" Text="YOUR MEDICINE DELIVERY IS SUCCESSFULLY BOOKED AND EMAIL HAS BEEN SENT  TO PATIENT EMAIL FOR CONFIRMATION" ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/afterregistrationpage1.aspx">CLICK HERE FOR BOOKING DELIVERIES</asp:HyperLink>
        <br />
        <br />
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/regsuccess.jpg" Height="246px" />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
