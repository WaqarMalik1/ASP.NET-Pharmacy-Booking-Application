<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingDeliveryView.aspx.cs" Inherits="FinalYearProject.BookingDeliveryView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 977px; width: 1250px; text-align: center;">
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="275px" ImageUrl="~/Images/thelogo.jpg" Width="703px" />
    
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelSR" runat="server" style="font-size: xx-large; font-weight: 700; font-style: italic" Text="THE SCHEDULE VIEW, YOUR BOOKED DELIVERIES" ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceBooking" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table2]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Table2] WHERE [Id] = @original_Id AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([FirstLineOfAddress] = @original_FirstLineOfAddress) OR ([FirstLineOfAddress] IS NULL AND @original_FirstLineOfAddress IS NULL)) AND (([Town] = @original_Town) OR ([Town] IS NULL AND @original_Town IS NULL)) AND (([County] = @original_County) OR ([County] IS NULL AND @original_County IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([TelephoneNo] = @original_TelephoneNo) OR ([TelephoneNo] IS NULL AND @original_TelephoneNo IS NULL)) AND (([MobileNo] = @original_MobileNo) OR ([MobileNo] IS NULL AND @original_MobileNo IS NULL)) AND (([DateOfDeliveryBooking] = @original_DateOfDeliveryBooking) OR ([DateOfDeliveryBooking] IS NULL AND @original_DateOfDeliveryBooking IS NULL)) AND (([TimeOfDeliveryBooking] = @original_TimeOfDeliveryBooking) OR ([TimeOfDeliveryBooking] IS NULL AND @original_TimeOfDeliveryBooking IS NULL)) AND (([MedicineName1] = @original_MedicineName1) OR ([MedicineName1] IS NULL AND @original_MedicineName1 IS NULL)) AND (([MedicineName2] = @original_MedicineName2) OR ([MedicineName2] IS NULL AND @original_MedicineName2 IS NULL)) AND (([MedicineName3] = @original_MedicineName3) OR ([MedicineName3] IS NULL AND @original_MedicineName3 IS NULL)) AND (([SelectPaymentMethod] = @original_SelectPaymentMethod) OR ([SelectPaymentMethod] IS NULL AND @original_SelectPaymentMethod IS NULL)) AND (([CardNumber] = @original_CardNumber) OR ([CardNumber] IS NULL AND @original_CardNumber IS NULL)) AND (([CardHolderName] = @original_CardHolderName) OR ([CardHolderName] IS NULL AND @original_CardHolderName IS NULL)) AND (([ExpiryDate] = @original_ExpiryDate) OR ([ExpiryDate] IS NULL AND @original_ExpiryDate IS NULL)) AND (([SecuirtyNumber] = @original_SecuirtyNumber) OR ([SecuirtyNumber] IS NULL AND @original_SecuirtyNumber IS NULL))" InsertCommand="INSERT INTO [Table2] ([Id], [Title], [FirstName], [LastName], [DateOfBirth], [Age], [Gender], [FirstLineOfAddress], [Town], [County], [PostCode], [TelephoneNo], [MobileNo], [DateOfDeliveryBooking], [TimeOfDeliveryBooking], [MedicineName1], [MedicineName2], [MedicineName3], [SelectPaymentMethod], [CardNumber], [CardHolderName], [ExpiryDate], [SecuirtyNumber]) VALUES (@Id, @Title, @FirstName, @LastName, @DateOfBirth, @Age, @Gender, @FirstLineOfAddress, @Town, @County, @PostCode, @TelephoneNo, @MobileNo, @DateOfDeliveryBooking, @TimeOfDeliveryBooking, @MedicineName1, @MedicineName2, @MedicineName3, @SelectPaymentMethod, @CardNumber, @CardHolderName, @ExpiryDate, @SecuirtyNumber)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Table2] SET [Title] = @Title, [FirstName] = @FirstName, [LastName] = @LastName, [DateOfBirth] = @DateOfBirth, [Age] = @Age, [Gender] = @Gender, [FirstLineOfAddress] = @FirstLineOfAddress, [Town] = @Town, [County] = @County, [PostCode] = @PostCode, [TelephoneNo] = @TelephoneNo, [MobileNo] = @MobileNo, [DateOfDeliveryBooking] = @DateOfDeliveryBooking, [TimeOfDeliveryBooking] = @TimeOfDeliveryBooking, [MedicineName1] = @MedicineName1, [MedicineName2] = @MedicineName2, [MedicineName3] = @MedicineName3, [SelectPaymentMethod] = @SelectPaymentMethod, [CardNumber] = @CardNumber, [CardHolderName] = @CardHolderName, [ExpiryDate] = @ExpiryDate, [SecuirtyNumber] = @SecuirtyNumber WHERE [Id] = @original_Id AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Age] = @original_Age) OR ([Age] IS NULL AND @original_Age IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([FirstLineOfAddress] = @original_FirstLineOfAddress) OR ([FirstLineOfAddress] IS NULL AND @original_FirstLineOfAddress IS NULL)) AND (([Town] = @original_Town) OR ([Town] IS NULL AND @original_Town IS NULL)) AND (([County] = @original_County) OR ([County] IS NULL AND @original_County IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([TelephoneNo] = @original_TelephoneNo) OR ([TelephoneNo] IS NULL AND @original_TelephoneNo IS NULL)) AND (([MobileNo] = @original_MobileNo) OR ([MobileNo] IS NULL AND @original_MobileNo IS NULL)) AND (([DateOfDeliveryBooking] = @original_DateOfDeliveryBooking) OR ([DateOfDeliveryBooking] IS NULL AND @original_DateOfDeliveryBooking IS NULL)) AND (([TimeOfDeliveryBooking] = @original_TimeOfDeliveryBooking) OR ([TimeOfDeliveryBooking] IS NULL AND @original_TimeOfDeliveryBooking IS NULL)) AND (([MedicineName1] = @original_MedicineName1) OR ([MedicineName1] IS NULL AND @original_MedicineName1 IS NULL)) AND (([MedicineName2] = @original_MedicineName2) OR ([MedicineName2] IS NULL AND @original_MedicineName2 IS NULL)) AND (([MedicineName3] = @original_MedicineName3) OR ([MedicineName3] IS NULL AND @original_MedicineName3 IS NULL)) AND (([SelectPaymentMethod] = @original_SelectPaymentMethod) OR ([SelectPaymentMethod] IS NULL AND @original_SelectPaymentMethod IS NULL)) AND (([CardNumber] = @original_CardNumber) OR ([CardNumber] IS NULL AND @original_CardNumber IS NULL)) AND (([CardHolderName] = @original_CardHolderName) OR ([CardHolderName] IS NULL AND @original_CardHolderName IS NULL)) AND (([ExpiryDate] = @original_ExpiryDate) OR ([ExpiryDate] IS NULL AND @original_ExpiryDate IS NULL)) AND (([SecuirtyNumber] = @original_SecuirtyNumber) OR ([SecuirtyNumber] IS NULL AND @original_SecuirtyNumber IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Object" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_DateOfBirth" Type="String" />
                <asp:Parameter Name="original_Age" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_FirstLineOfAddress" Type="String" />
                <asp:Parameter Name="original_Town" Type="String" />
                <asp:Parameter Name="original_County" Type="String" />
                <asp:Parameter Name="original_PostCode" Type="String" />
                <asp:Parameter Name="original_TelephoneNo" Type="String" />
                <asp:Parameter Name="original_MobileNo" Type="String" />
                <asp:Parameter Name="original_DateOfDeliveryBooking" Type="String" />
                <asp:Parameter Name="original_TimeOfDeliveryBooking" Type="String" />
                <asp:Parameter Name="original_MedicineName1" Type="String" />
                <asp:Parameter Name="original_MedicineName2" Type="String" />
                <asp:Parameter Name="original_MedicineName3" Type="String" />
                <asp:Parameter Name="original_SelectPaymentMethod" Type="String" />
                <asp:Parameter Name="original_CardNumber" Type="String" />
                <asp:Parameter Name="original_CardHolderName" Type="String" />
                <asp:Parameter Name="original_ExpiryDate" Type="String" />
                <asp:Parameter Name="original_SecuirtyNumber" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Object" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="String" />
                <asp:Parameter Name="Age" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="FirstLineOfAddress" Type="String" />
                <asp:Parameter Name="Town" Type="String" />
                <asp:Parameter Name="County" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="TelephoneNo" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="DateOfDeliveryBooking" Type="String" />
                <asp:Parameter Name="TimeOfDeliveryBooking" Type="String" />
                <asp:Parameter Name="MedicineName1" Type="String" />
                <asp:Parameter Name="MedicineName2" Type="String" />
                <asp:Parameter Name="MedicineName3" Type="String" />
                <asp:Parameter Name="SelectPaymentMethod" Type="String" />
                <asp:Parameter Name="CardNumber" Type="String" />
                <asp:Parameter Name="CardHolderName" Type="String" />
                <asp:Parameter Name="ExpiryDate" Type="String" />
                <asp:Parameter Name="SecuirtyNumber" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="String" />
                <asp:Parameter Name="Age" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="FirstLineOfAddress" Type="String" />
                <asp:Parameter Name="Town" Type="String" />
                <asp:Parameter Name="County" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="TelephoneNo" Type="String" />
                <asp:Parameter Name="MobileNo" Type="String" />
                <asp:Parameter Name="DateOfDeliveryBooking" Type="String" />
                <asp:Parameter Name="TimeOfDeliveryBooking" Type="String" />
                <asp:Parameter Name="MedicineName1" Type="String" />
                <asp:Parameter Name="MedicineName2" Type="String" />
                <asp:Parameter Name="MedicineName3" Type="String" />
                <asp:Parameter Name="SelectPaymentMethod" Type="String" />
                <asp:Parameter Name="CardNumber" Type="String" />
                <asp:Parameter Name="CardHolderName" Type="String" />
                <asp:Parameter Name="ExpiryDate" Type="String" />
                <asp:Parameter Name="SecuirtyNumber" Type="String" />
                <asp:Parameter Name="original_Id" Type="Object" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_DateOfBirth" Type="String" />
                <asp:Parameter Name="original_Age" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_FirstLineOfAddress" Type="String" />
                <asp:Parameter Name="original_Town" Type="String" />
                <asp:Parameter Name="original_County" Type="String" />
                <asp:Parameter Name="original_PostCode" Type="String" />
                <asp:Parameter Name="original_TelephoneNo" Type="String" />
                <asp:Parameter Name="original_MobileNo" Type="String" />
                <asp:Parameter Name="original_DateOfDeliveryBooking" Type="String" />
                <asp:Parameter Name="original_TimeOfDeliveryBooking" Type="String" />
                <asp:Parameter Name="original_MedicineName1" Type="String" />
                <asp:Parameter Name="original_MedicineName2" Type="String" />
                <asp:Parameter Name="original_MedicineName3" Type="String" />
                <asp:Parameter Name="original_SelectPaymentMethod" Type="String" />
                <asp:Parameter Name="original_CardNumber" Type="String" />
                <asp:Parameter Name="original_CardHolderName" Type="String" />
                <asp:Parameter Name="original_ExpiryDate" Type="String" />
                <asp:Parameter Name="original_SecuirtyNumber" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceBooking" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="FirstLineOfAddress" HeaderText="FirstLineOfAddress" SortExpression="FirstLineOfAddress" />
                <asp:BoundField DataField="Town" HeaderText="Town" SortExpression="Town" />
                <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
                <asp:BoundField DataField="PostCode" HeaderText="PostCode" SortExpression="PostCode" />
                <asp:BoundField DataField="TelephoneNo" HeaderText="TelephoneNo" SortExpression="TelephoneNo" />
                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                <asp:BoundField DataField="DateOfDeliveryBooking" HeaderText="DateOfDeliveryBooking" SortExpression="DateOfDeliveryBooking" />
                <asp:BoundField DataField="TimeOfDeliveryBooking" HeaderText="TimeOfDeliveryBooking" SortExpression="TimeOfDeliveryBooking" />
                <asp:BoundField DataField="MedicineName1" HeaderText="MedicineName1" SortExpression="MedicineName1" />
                <asp:BoundField DataField="MedicineName2" HeaderText="MedicineName2" SortExpression="MedicineName2" />
                <asp:BoundField DataField="MedicineName3" HeaderText="MedicineName3" SortExpression="MedicineName3" />
                <asp:BoundField DataField="SelectPaymentMethod" HeaderText="SelectPaymentMethod" SortExpression="SelectPaymentMethod" />
                <asp:BoundField DataField="CardNumber" HeaderText="CardNumber" SortExpression="CardNumber" />
                <asp:BoundField DataField="CardHolderName" HeaderText="CardHolderName" SortExpression="CardHolderName" />
                <asp:BoundField DataField="ExpiryDate" HeaderText="ExpiryDate" SortExpression="ExpiryDate" />
                <asp:BoundField DataField="SecuirtyNumber" HeaderText="SecuirtyNumber" SortExpression="SecuirtyNumber" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/afterregistrationpage1.aspx" style="font-weight: 700; font-size: x-large">CLICK HERE TO GO BACK TO DELIVERY PORTAL</asp:HyperLink>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
