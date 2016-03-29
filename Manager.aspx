<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="FinalYearProject.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <a href="Manager.aspx">Manager.aspx</a>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Image ID="Image1" runat="server" Height="275px" ImageUrl="~/Images/thelogo.jpg" Width="703px" />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LabelSR" runat="server" style="font-size: xx-large; font-weight: 700; font-style: italic" Text="The registerd users for delivery portal" ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSourceRegistration" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Table]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([YourAge] = @original_YourAge) OR ([YourAge] IS NULL AND @original_YourAge IS NULL)) AND (([FirstLineOfAddress] = @original_FirstLineOfAddress) OR ([FirstLineOfAddress] IS NULL AND @original_FirstLineOfAddress IS NULL)) AND (([Town] = @original_Town) OR ([Town] IS NULL AND @original_Town IS NULL)) AND (([County] = @original_County) OR ([County] IS NULL AND @original_County IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([ContactNumber] = @original_ContactNumber) OR ([ContactNumber] IS NULL AND @original_ContactNumber IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))" InsertCommand="INSERT INTO [Table] ([Id], [Gender], [Title], [FirstName], [LastName], [YourAge], [FirstLineOfAddress], [Town], [County], [PostCode], [ContactNumber], [UserName], [Email], [Password]) VALUES (@Id, @Gender, @Title, @FirstName, @LastName, @YourAge, @FirstLineOfAddress, @Town, @County, @PostCode, @ContactNumber, @UserName, @Email, @Password)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Table] SET [Gender] = @Gender, [Title] = @Title, [FirstName] = @FirstName, [LastName] = @LastName, [YourAge] = @YourAge, [FirstLineOfAddress] = @FirstLineOfAddress, [Town] = @Town, [County] = @County, [PostCode] = @PostCode, [ContactNumber] = @ContactNumber, [UserName] = @UserName, [Email] = @Email, [Password] = @Password WHERE [Id] = @original_Id AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Title] = @original_Title) OR ([Title] IS NULL AND @original_Title IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([YourAge] = @original_YourAge) OR ([YourAge] IS NULL AND @original_YourAge IS NULL)) AND (([FirstLineOfAddress] = @original_FirstLineOfAddress) OR ([FirstLineOfAddress] IS NULL AND @original_FirstLineOfAddress IS NULL)) AND (([Town] = @original_Town) OR ([Town] IS NULL AND @original_Town IS NULL)) AND (([County] = @original_County) OR ([County] IS NULL AND @original_County IS NULL)) AND (([PostCode] = @original_PostCode) OR ([PostCode] IS NULL AND @original_PostCode IS NULL)) AND (([ContactNumber] = @original_ContactNumber) OR ([ContactNumber] IS NULL AND @original_ContactNumber IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Object" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_YourAge" Type="String" />
                <asp:Parameter Name="original_FirstLineOfAddress" Type="String" />
                <asp:Parameter Name="original_Town" Type="String" />
                <asp:Parameter Name="original_County" Type="String" />
                <asp:Parameter Name="original_PostCode" Type="String" />
                <asp:Parameter Name="original_ContactNumber" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Object" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="YourAge" Type="String" />
                <asp:Parameter Name="FirstLineOfAddress" Type="String" />
                <asp:Parameter Name="Town" Type="String" />
                <asp:Parameter Name="County" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="YourAge" Type="String" />
                <asp:Parameter Name="FirstLineOfAddress" Type="String" />
                <asp:Parameter Name="Town" Type="String" />
                <asp:Parameter Name="County" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="ContactNumber" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_Id" Type="Object" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Title" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_YourAge" Type="String" />
                <asp:Parameter Name="original_FirstLineOfAddress" Type="String" />
                <asp:Parameter Name="original_Town" Type="String" />
                <asp:Parameter Name="original_County" Type="String" />
                <asp:Parameter Name="original_PostCode" Type="String" />
                <asp:Parameter Name="original_ContactNumber" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceRegistration" Height="293px" Width="16px" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="YourAge" HeaderText="YourAge" SortExpression="YourAge" />
                <asp:BoundField DataField="FirstLineOfAddress" HeaderText="FirstLineOfAddress" SortExpression="FirstLineOfAddress" />
                <asp:BoundField DataField="Town" HeaderText="Town" SortExpression="Town" />
                <asp:BoundField DataField="County" HeaderText="County" SortExpression="County" />
                <asp:BoundField DataField="PostCode" HeaderText="PostCode" SortExpression="PostCode" />
                <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:TemplateField ShowHeader="False" HeaderText="DeleteRecord">
                    <ItemTemplate>
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" />
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
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">CLICK HERE TO GO BACK AND LOGIN TO DELIVERY PORTAL</asp:HyperLink>
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
