<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="afterregistrationpage1.aspx.cs" Inherits="FinalYearProject.afterregistrationpage1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

         <style>
body  {
    background-image: url(images/pagebg.jpg);

    background-size:80% 134%;

background-repeat:no-repeat;
}
</style>

    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 1050px;
        }
        .auto-style6 {
            height: 30px;
            width: 1044px;
        }
        .auto-style9 {
            margin-left: 280px;
            width: 1044px;
            font-weight: 700;
        }
        .auto-style10 {
            height: 30px;
            margin-left: 280px;
            width: 1044px;
        }
        .auto-style11 {
            height: 23px;
            margin-left: 280px;
            width: 1044px;
        }
        .auto-style12 {
            margin-left: 280px;
            width: 1044px;
            font-weight: 700;
            height: 23px;
        }
        .auto-style13 {
            margin-left: 280px;
            width: 1044px;
            font-weight: 700;
            height: 21px;
        }
        .auto-style14 {
            margin-left: 280px;
            width: 1044px;
            font-weight: 700;
            height: 30px;
        }
        #Reset1 {
            width: 190px;
            font-weight: 700;
            height: 38px;
        }
        #Reset2 {
            width: 308px;
            height: 42px;
            font-weight: 700;
            font-size: x-large;
            margin-left: 78px;
        }
        .auto-style29 {
            height: 35px;
            margin-left: 280px;
            width: 1044px;
        }
        .auto-style31 {
            margin-left: 280px;
            width: 1044px;
            font-weight: 700;
            height: 13px;
        }
        .auto-style32 {
            height: 22px;
            margin-left: 280px;
            width: 1044px;
        }
        .auto-style38 {
            height: 37px;
            margin-left: 280px;
            width: 1044px;
        }
        .auto-style39 {
            height: 29px;
            margin-left: 280px;
            width: 1044px;
        }
        .auto-style40 {
            height: 26px;
            margin-left: 280px;
            width: 1044px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: right; height: 1534px; width: 1067px;">
    
        <asp:Image ID="Image1" runat="server" Height="275px" ImageUrl="~/Images/thelogo.jpg" Width="703px" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manager.aspx">CLICK HERE TO MANAGE REGISTERD USERS OF DELIVERY PORTAL APPLICATION</asp:HyperLink>
        <br />
        <br style="text-align: left" />
        <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </cc1:ToolkitScriptManager>
        <br />
        <asp:Label ID="Label_welcome" runat="server" style="font-weight: 700; font-style: italic; font-size: xx-large;" Text="WELCOME KINGSWAY STAFF MEMBER:  " ForeColor="Maroon"></asp:Label>
        <br />
        <br />
        <br />
        <cc1:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="1600px" Width="1100px" style="text-align: left; margin-left: 173px; margin-right: 0px">
            <cc1:TabPanel runat="server" HeaderText="Scheduele View" ID="TabPanel1">
            
                <HeaderTemplate>
                    Delivery Scheduele View<br />
                </HeaderTemplate>
            
            <ContentTemplate>

                <p>
                    &nbsp;</p>
                <p style="text-align: center">
                    <asp:Label ID="Label_welcome0" runat="server" ForeColor="Maroon" style="font-weight: 700; font-style: italic; font-size: xx-large;" Text="CLICK IMAGE TO VIEW THE SCHEDULE OF DELIVERIES"></asp:Label>
                </p>

                <a href ="BookingDeliveryView.aspx" style="text-align: center"><img src="Images/schedule.jpg"" style="height: 1036px; width: 1001px;" /></a>

                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>

            </ContentTemplate>

            </cc1:TabPanel>
            <cc1:TabPanel runat="server" HeaderText="Book A Delivery" ID="TabPanel2">

                <HeaderTemplate>
                    Book A Delivery For Patient
                </HeaderTemplate>

                <ContentTemplate>

                <p>&nbsp;</p>

                    <p>
                        <strong>BOOKING MEDICINE FOR DELIVERY VIEW</strong></p>
                    <p>
                        &nbsp;</p>
                    <p>
                        <asp:Label ID="paitentslabel" runat="server" style="font-weight: 700" Text="PATIENTS DETAILS"></asp:Label>
                    </p>
                    <table class="auto-style3">
                        <tr>
                            <td class="auto-style6">
                                <asp:Label ID="LabelPaitentTtitle" runat="server" style="font-weight: 700" Text="Title:" Width="90px"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownListPaitentTitle" runat="server" Width="150px">
                                    <asp:ListItem>Select Title</asp:ListItem>
                                    <asp:ListItem>Mr</asp:ListItem>
                                    <asp:ListItem>Ms</asp:ListItem>
                                    <asp:ListItem>Miss</asp:ListItem>
                                    <asp:ListItem>Mrs</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListPaitentTitle" ErrorMessage="SELECT A TITLE!" ForeColor="Red" InitialValue="Select Title" style="font-weight: 700" Width="230px"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelPaitentFN" runat="server" style="font-weight: 700; margin-left: 0px;" Text="First Name:" Width="105px"></asp:Label>
                                <asp:TextBox ID="TextBoxPaitentFN" runat="server" Width="155px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxPaitentFN" ErrorMessage="FIRST NAME IS REQUIRED!" ForeColor="Red" style="font-weight: 700" Width="220px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelPaitentLS" runat="server" Height="19px" style="font-weight: 700" Text="Last Name:" Width="90px"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="TextBoxPaitentLN" runat="server" Width="150px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxPaitentLN" ErrorMessage="LAST NAME IS REQUIRED!" ForeColor="Red" style="font-weight: 700" Width="230px"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp; <asp:Label ID="LabelPaitentDOB" runat="server" style="font-weight: 700" Text="Date of birth:" Width="105px"></asp:Label>
                                <asp:TextBox ID="TextBoxPaitentDOB" runat="server" TextMode="Date" Width="155px" style="margin-left: 0px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxPaitentDOB" ErrorMessage="D.O.B IS REQUIRED!" ForeColor="Red" style="font-weight: 700" Width="220px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Label ID="LabelPaitentAge" runat="server" Height="19px" style="font-weight: 700" Text="Age:" Width="90px"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="TextBoxPaitentAge" runat="server" Width="150px" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxPaitentAge" ErrorMessage="AGE IS REQUIRED!" ForeColor="Red" style="font-weight: 700" Width="230px"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;<asp:Label ID="LabelPaitentGender" runat="server" style="font-weight: 700; margin-left: 7px;" Text="Gender:" Width="102px" Height="18px"></asp:Label>
                                <asp:DropDownList ID="DropDownListPaitentGender" runat="server" style="margin-left: 2px" Width="160px">
                                    <asp:ListItem>Select Gender</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownListPaitentGender" ErrorMessage="SELECT A GENDER!" ForeColor="Red" InitialValue="Select Gender" style="font-weight: 700" Width="220px"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</td>
                        </tr>
                        <tr>
                            <td class="auto-style29">
                                <asp:Label ID="deliverydetailslabel" runat="server" style="font-weight: 700" Text="DELIVERY DETAILS"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style40">
                                <asp:Label ID="LabelFirstLineOfAddress" runat="server" Height="19px" style="font-weight: 700" Text="First Line Of Address:" Width="170px"></asp:Label>
                                &nbsp;<asp:TextBox ID="TextBoxFirstLineOfAddress" runat="server" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxFirstLineOfAddress" ErrorMessage="FIRST LINE ADD REQUIRED" ForeColor="Red" Height="21px" style="font-weight: 700" Width="218px"></asp:RequiredFieldValidator>
                                &nbsp;<asp:Label ID="LabelPaitentTown" runat="server" style="font-weight: 700; margin-left: 0px;" Text="Town:" Width="53px"></asp:Label>
                                &nbsp;&nbsp; <asp:TextBox ID="TextBoxTown" runat="server" Width="155px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxTown" ErrorMessage="TOWN IS REQUIRED!" ForeColor="Red" style="font-weight: 700" Width="170px"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="LabelCounty" runat="server" Height="19px" style="font-weight: 700" Text="County:" Width="170px"></asp:Label>
                                &nbsp;<asp:TextBox ID="TextBoxCounty" runat="server" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxCounty" ErrorMessage="COUNTY IS REQUIRED!" ForeColor="Red" Height="21px" style="font-weight: 700" Width="200px"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;<asp:Label ID="LabelPostCode" runat="server" style="font-weight: 700" Text="Post Code:" Width="82px"></asp:Label>
                                <asp:TextBox ID="TextBoxPostCode" runat="server" Width="155px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBoxPostCode" ErrorMessage="POST CODE IS REQUIRED!" ForeColor="Red" Height="21px" style="font-weight: 700" Width="218px"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style39">
                                <asp:Label ID="LabelTelephone" runat="server" Height="19px" style="font-weight: 700" Text="Telephone No:" Width="170px"></asp:Label>
                                &nbsp;<asp:TextBox ID="TextBoxTelephoneNo" runat="server" TextMode="Phone" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBoxTelephoneNo" ErrorMessage="TELEPHONE IS REQUIRED!" ForeColor="Red" Height="21px" style="font-weight: 700" Width="210px"></asp:RequiredFieldValidator>
                                <asp:Label ID="LabelMobileNo" runat="server" style="font-weight: 700" Text="Mobile No:" Width="80px"></asp:Label>
                                <asp:TextBox ID="TextBoxMobileNo" runat="server" TextMode="Phone" Width="155px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBoxMobileNo" ErrorMessage="MOBILE NO IS REQUIRED!" ForeColor="Red" Height="21px" style="font-weight: 700" Width="215px"></asp:RequiredFieldValidator>
                                &nbsp;<br /></td>
                        </tr>
                        <tr>
                            <td class="auto-style38"><asp:Label ID="LabelCalender" runat="server" Height="19px" style="font-weight: 700" Text="Date Of Delivery Booking:" Width="196px"></asp:Label>
                                <asp:TextBox ID="TextBoxDateDelivery" runat="server" TextMode="Date" Width="130px"></asp:TextBox>
                                &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBoxDateDelivery" ErrorMessage="BOOKING DATE REQ!" ForeColor="Red" Height="20px" style="font-weight: 700" Width="190px"></asp:RequiredFieldValidator>
                                <asp:Label ID="LabelTimeBooking" runat="server" Height="19px" style="font-weight: 700" Text="Time Of Delivery:" Width="145px"></asp:Label>
                                <asp:TextBox ID="TextBoxTimeBooking" runat="server" TextMode="Time" Width="96px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBoxTimeBooking" ErrorMessage="TIME REQ!" ForeColor="Red" style="font-weight: 700" Width="100px"></asp:RequiredFieldValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style31">
                                <asp:Label ID="To" runat="server" Text="Kingsway Patient E-Mail:"></asp:Label>
                                <asp:TextBox ID="tobox" runat="server" Width="150px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="tobox" ErrorMessage="PATIENT E-MAIL REQ!" ForeColor="Red" Height="20px" style="font-weight: 700" Width="190px"></asp:RequiredFieldValidator>
                                <asp:Label ID="subject" runat="server" Text="Subject:"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="subjectbox" runat="server" Width="155px" ReadOnly="True">Your medicine/prescription delivery booking details:</asp:TextBox>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</td>
                        </tr>
                        <tr>
                            <td class="auto-style12">PRESECRIPTIONS DETAILS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;TICK HERE FOR REPEAT PRESCRIPTION DELIVERY</td>
                        </tr>
                        <tr>
                            <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelMedicineNameOne" runat="server" Height="19px" style="font-weight: 700" Text="Medicine Name 1" Width="170px"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownListPaitentMedicineNameOne" runat="server" style="margin-left: 2px" Width="160px">
                                    <asp:ListItem>Select Medicine 1</asp:ListItem>
                                    <asp:ListItem>Asprin 75MG</asp:ListItem>
                                    <asp:ListItem Value="CO-Codamol 30/500mg">CO-Codamol 30/500mg</asp:ListItem>
                                    <asp:ListItem>Amoxicillin 500mg</asp:ListItem>
                                    <asp:ListItem>Blister Pack</asp:ListItem>
                                    <asp:ListItem>Ibuprofen 400mg</asp:ListItem>
                                    <asp:ListItem>Sildenafil 100mg</asp:ListItem>
                                    <asp:ListItem>E45 Cream 500g</asp:ListItem>
                                    <asp:ListItem>Kytril 250mg</asp:ListItem>
                                    <asp:ListItem>Paracetamol 500mg</asp:ListItem>
                                    <asp:ListItem>Novomix Flexpen INJ</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="DropDownListPaitentMedicineNameOne" ErrorMessage="SELECT MEDICINE 1 IS REQUIRED!" ForeColor="Red" InitialValue="Select Medicine 1"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input id="Checkbox1" type="checkbox" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style12"></td>
                        </tr>
                        <tr>
                            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelMedicineNameTwo" runat="server" Height="19px" style="font-weight: 700" Text="Medicine Name 2" Width="170px"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style12"></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:DropDownList ID="DropDownListPaitentMedicineNameTwo" runat="server" style="margin-left: 2px" Width="160px">
                                    <asp:ListItem>Select Medicine 2</asp:ListItem>
                                    <asp:ListItem>Amlodipine 5mg</asp:ListItem>
                                    <asp:ListItem>Lansoprazole 30mg</asp:ListItem>
                                    <asp:ListItem>Simvastatin 40mg</asp:ListItem>
                                    <asp:ListItem>Latanoprost Eye Drops</asp:ListItem>
                                    <asp:ListItem>Ramipril 10mg</asp:ListItem>
                                    <asp:ListItem>Salbutamol 100mcg</asp:ListItem>
                                    <asp:ListItem>Metformin 500mg</asp:ListItem>
                                    <asp:ListItem>Atenolol 50mg</asp:ListItem>
                                    <asp:ListItem>Duac Gel</asp:ListItem>
                                    <asp:ListItem>Vitamin Tablets</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="DropDownListPaitentMedicineNameTwo" ErrorMessage="SELECT MEDICINE 2 IS REQUIRED!" ForeColor="Red" InitialValue="Select Medicine 2"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input id="Checkbox2" type="checkbox" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelMedicineNameThree" runat="server" Height="19px" style="font-weight: 700" Text="Medicine Name 3" Width="170px"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style12"></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownListPaitentMedicineNameThree" runat="server" style="margin-left: 2px" Width="160px">
                                    <asp:ListItem>Select Medicine 3</asp:ListItem>
                                    <asp:ListItem Value="ErythromycinSus 250mg/5ml">ErythromycinSus 250mg/5ml</asp:ListItem>
                                    <asp:ListItem Value="Lactolose Suspension">Lactolose Suspension</asp:ListItem>
                                    <asp:ListItem>Pennicillan 125mg/5ml</asp:ListItem>
                                    <asp:ListItem>Anusol suppository</asp:ListItem>
                                    <asp:ListItem>Tramadol Capsules 50mg</asp:ListItem>
                                    <asp:ListItem>Morphine 10mg/5ml</asp:ListItem>
                                    <asp:ListItem>Amitriptyline 50mg</asp:ListItem>
                                    <asp:ListItem>Voltaren Emulgel</asp:ListItem>
                                    <asp:ListItem>Olanzapine 5mg</asp:ListItem>
                                    <asp:ListItem>Aripiprazole 5mg</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="DropDownListPaitentMedicineNameThree" ErrorMessage="SELECT MEDICINE 3 IS REQUIRED!" ForeColor="Red" InitialValue="Select Medicine 3"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input id="Checkbox3" type="checkbox" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">PAYMENT BILLING DETAILS</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="LabelSelectPaymentMethod" runat="server" Height="19px" style="font-weight: 700" Text="Select Payment Method:" Width="190px"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelCardNumber" runat="server" Height="19px" style="font-weight: 700" Text="Card Number:" Width="170px"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelCardName" runat="server" Height="19px" style="font-weight: 700" Text="Card Holder Name:" Width="170px"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownListPaymentMethod" runat="server" style="margin-left: 2px" Width="170px">
                                    <asp:ListItem>Select Payment Method</asp:ListItem>
                                    <asp:ListItem Value="Visa">Visa</asp:ListItem>
                                    <asp:ListItem Value="Visa Debit">Visa Debit</asp:ListItem>
                                    <asp:ListItem>MasterCard</asp:ListItem>
                                    <asp:ListItem>Visa Electron</asp:ListItem>
                                    <asp:ListItem>Delta</asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="DropDownListPaymentMethod" ErrorMessage="PAYMENT REQ!" ForeColor="Red" InitialValue="Select Payment Method"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBoxCardNumber" runat="server" Width="155px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBoxCardNumber" ErrorMessage="CARD NO REQ!" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxCardHolderName" runat="server" Width="155px"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBoxCardHolderName" ErrorMessage="CARD HOLDER REQ!" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelExpiryDate" runat="server" Height="19px" style="font-weight: 700" Text="Expiry Date:" Width="110px"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LabelSecurityNumber" runat="server" Height="19px" style="font-weight: 700" Text="Security Number:" Width="150px"></asp:Label>
                                &nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBoxExpiryDate" runat="server" style="margin-left: 0px" TextMode="Date" Width="155px"></asp:TextBox>
                                &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="TextBoxExpiryDate" ErrorMessage="EXPIRY DATE REQ!" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBoxSecurityNumber" runat="server" style="margin-left: 0px" TextMode="Password" Width="95px"></asp:TextBox>
                                &nbsp;&nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="TextBoxSecurityNumber" ErrorMessage="SECURITY NO REQ!" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <br />
                                <asp:Label ID="from" runat="server" Text="From Kingsway GMAIL EMAIL:"></asp:Label>
                                &nbsp;<asp:TextBox ID="frombox" runat="server" Height="16px" Width="197px">kingswaypharmacy01@gmail.com</asp:TextBox>
                                &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="frombox" ErrorMessage="GMAIL REQ!" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Password0" runat="server" Text="Gmail Password:"></asp:Label>
                                &nbsp;
                                <asp:TextBox ID="passwordbox" runat="server" TextMode="Password"></asp:TextBox>
                                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="passwordbox" ErrorMessage="PASSWORD REQ!" ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;&nbsp;
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PLEASE CONFIRM PATIENTS DELIVERY BELOW:<br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="bodybox" runat="server" Height="164px" TextMode="MultiLine" Width="507px">Patient full name:

Medicines booked for delivery are:

Your delivery is booked for (DATE):

Time of delivery:

THANK YOU KINGSWAY PHARMACY!</asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input id="Reset1" type="reset" value="RESET" />
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="ButtonCompleteReservation" runat="server" OnClick="ButtonCompleteReservation_Click" style="font-weight: 700" Text="COMPLETE RESERVATION" Width="190px" Height="38px" />
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>

            </ContentTemplate>

            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel3" runat="server" HeaderText="Register Paitent">


                <HeaderTemplate>
                    View Registerd Patients
                </HeaderTemplate>


                <ContentTemplate>

                <p>&nbsp;</p>

                    <p>
                        <strong>PATIENT RECORD REGISTRATION</strong></p>
                    <p>
                        &nbsp;</p>

                    <asp:SqlDataSource ID="SqlDataSourcePaitentRegistration" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PaitentRegistrationConnectionString %>" DeleteCommand="DELETE FROM [Table3] WHERE [Id] = @original_Id AND (([paitentgender] = @original_paitentgender) OR ([paitentgender] IS NULL AND @original_paitentgender IS NULL)) AND (([paitenttitle] = @original_paitenttitle) OR ([paitenttitle] IS NULL AND @original_paitenttitle IS NULL)) AND (([paitentfirstname] = @original_paitentfirstname) OR ([paitentfirstname] IS NULL AND @original_paitentfirstname IS NULL)) AND (([paitentlastname] = @original_paitentlastname) OR ([paitentlastname] IS NULL AND @original_paitentlastname IS NULL)) AND (([paitentdob] = @original_paitentdob) OR ([paitentdob] IS NULL AND @original_paitentdob IS NULL)) AND (([paitentcontactnumber] = @original_paitentcontactnumber) OR ([paitentcontactnumber] IS NULL AND @original_paitentcontactnumber IS NULL)) AND (([paitentemail] = @original_paitentemail) OR ([paitentemail] IS NULL AND @original_paitentemail IS NULL)) AND (([paitentmedicationtaking] = @original_paitentmedicationtaking) OR ([paitentmedicationtaking] IS NULL AND @original_paitentmedicationtaking IS NULL)) AND (([paitentothermedication] = @original_paitentothermedication) OR ([paitentothermedication] IS NULL AND @original_paitentothermedication IS NULL)) AND (([paitentfirstlineofaddress] = @original_paitentfirstlineofaddress) OR ([paitentfirstlineofaddress] IS NULL AND @original_paitentfirstlineofaddress IS NULL)) AND (([paitenttown] = @original_paitenttown) OR ([paitenttown] IS NULL AND @original_paitenttown IS NULL)) AND (([paitentcity] = @original_paitentcity) OR ([paitentcity] IS NULL AND @original_paitentcity IS NULL)) AND (([paitentpostcode] = @original_paitentpostcode) OR ([paitentpostcode] IS NULL AND @original_paitentpostcode IS NULL))" InsertCommand="INSERT INTO [Table3] ([Id], [paitentgender], [paitenttitle], [paitentfirstname], [paitentlastname], [paitentdob], [paitentcontactnumber], [paitentemail], [paitentmedicationtaking], [paitentothermedication], [paitentfirstlineofaddress], [paitenttown], [paitentcity], [paitentpostcode]) VALUES (@Id, @paitentgender, @paitenttitle, @paitentfirstname, @paitentlastname, @paitentdob, @paitentcontactnumber, @paitentemail, @paitentmedicationtaking, @paitentothermedication, @paitentfirstlineofaddress, @paitenttown, @paitentcity, @paitentpostcode)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table3]" UpdateCommand="UPDATE [Table3] SET [paitentgender] = @paitentgender, [paitenttitle] = @paitenttitle, [paitentfirstname] = @paitentfirstname, [paitentlastname] = @paitentlastname, [paitentdob] = @paitentdob, [paitentcontactnumber] = @paitentcontactnumber, [paitentemail] = @paitentemail, [paitentmedicationtaking] = @paitentmedicationtaking, [paitentothermedication] = @paitentothermedication, [paitentfirstlineofaddress] = @paitentfirstlineofaddress, [paitenttown] = @paitenttown, [paitentcity] = @paitentcity, [paitentpostcode] = @paitentpostcode WHERE [Id] = @original_Id AND (([paitentgender] = @original_paitentgender) OR ([paitentgender] IS NULL AND @original_paitentgender IS NULL)) AND (([paitenttitle] = @original_paitenttitle) OR ([paitenttitle] IS NULL AND @original_paitenttitle IS NULL)) AND (([paitentfirstname] = @original_paitentfirstname) OR ([paitentfirstname] IS NULL AND @original_paitentfirstname IS NULL)) AND (([paitentlastname] = @original_paitentlastname) OR ([paitentlastname] IS NULL AND @original_paitentlastname IS NULL)) AND (([paitentdob] = @original_paitentdob) OR ([paitentdob] IS NULL AND @original_paitentdob IS NULL)) AND (([paitentcontactnumber] = @original_paitentcontactnumber) OR ([paitentcontactnumber] IS NULL AND @original_paitentcontactnumber IS NULL)) AND (([paitentemail] = @original_paitentemail) OR ([paitentemail] IS NULL AND @original_paitentemail IS NULL)) AND (([paitentmedicationtaking] = @original_paitentmedicationtaking) OR ([paitentmedicationtaking] IS NULL AND @original_paitentmedicationtaking IS NULL)) AND (([paitentothermedication] = @original_paitentothermedication) OR ([paitentothermedication] IS NULL AND @original_paitentothermedication IS NULL)) AND (([paitentfirstlineofaddress] = @original_paitentfirstlineofaddress) OR ([paitentfirstlineofaddress] IS NULL AND @original_paitentfirstlineofaddress IS NULL)) AND (([paitenttown] = @original_paitenttown) OR ([paitenttown] IS NULL AND @original_paitenttown IS NULL)) AND (([paitentcity] = @original_paitentcity) OR ([paitentcity] IS NULL AND @original_paitentcity IS NULL)) AND (([paitentpostcode] = @original_paitentpostcode) OR ([paitentpostcode] IS NULL AND @original_paitentpostcode IS NULL))"><DeleteParameters><asp:Parameter Name="original_Id" Type="Object" /><asp:Parameter Name="original_paitentgender" Type="String" /><asp:Parameter Name="original_paitenttitle" Type="String" /><asp:Parameter Name="original_paitentfirstname" Type="String" /><asp:Parameter Name="original_paitentlastname" Type="String" /><asp:Parameter Name="original_paitentdob" Type="String" /><asp:Parameter Name="original_paitentcontactnumber" Type="String" /><asp:Parameter Name="original_paitentemail" Type="String" /><asp:Parameter Name="original_paitentmedicationtaking" Type="String" /><asp:Parameter Name="original_paitentothermedication" Type="String" /><asp:Parameter Name="original_paitentfirstlineofaddress" Type="String" /><asp:Parameter Name="original_paitenttown" Type="String" /><asp:Parameter Name="original_paitentcity" Type="String" /><asp:Parameter Name="original_paitentpostcode" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id" Type="Object" />
                            <asp:Parameter Name="paitentgender" Type="String" />
                            <asp:Parameter Name="paitenttitle" Type="String" />
                            <asp:Parameter Name="paitentfirstname" Type="String" />
                            <asp:Parameter Name="paitentlastname" Type="String" />
                            <asp:Parameter Name="paitentdob" Type="String" />
                            <asp:Parameter Name="paitentcontactnumber" Type="String" />
                            <asp:Parameter Name="paitentemail" Type="String" />
                            <asp:Parameter Name="paitentmedicationtaking" Type="String" />
                            <asp:Parameter Name="paitentothermedication" Type="String" />
                            <asp:Parameter Name="paitentfirstlineofaddress" Type="String" />
                            <asp:Parameter Name="paitenttown" Type="String" />
                            <asp:Parameter Name="paitentcity" Type="String" />
                            <asp:Parameter Name="paitentpostcode" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="paitentgender" Type="String" />
                            <asp:Parameter Name="paitenttitle" Type="String" />
                            <asp:Parameter Name="paitentfirstname" Type="String" />
                            <asp:Parameter Name="paitentlastname" Type="String" />
                            <asp:Parameter Name="paitentdob" Type="String" />
                            <asp:Parameter Name="paitentcontactnumber" Type="String" />
                            <asp:Parameter Name="paitentemail" Type="String" />
                            <asp:Parameter Name="paitentmedicationtaking" Type="String" />
                            <asp:Parameter Name="paitentothermedication" Type="String" />
                            <asp:Parameter Name="paitentfirstlineofaddress" Type="String" />
                            <asp:Parameter Name="paitenttown" Type="String" />
                            <asp:Parameter Name="paitentcity" Type="String" />
                            <asp:Parameter Name="paitentpostcode" Type="String" />
                            <asp:Parameter Name="original_Id" Type="Object" />
                            <asp:Parameter Name="original_paitentgender" Type="String" />
                            <asp:Parameter Name="original_paitenttitle" Type="String" />
                            <asp:Parameter Name="original_paitentfirstname" Type="String" />
                            <asp:Parameter Name="original_paitentlastname" Type="String" />
                            <asp:Parameter Name="original_paitentdob" Type="String" />
                            <asp:Parameter Name="original_paitentcontactnumber" Type="String" />
                            <asp:Parameter Name="original_paitentemail" Type="String" />
                            <asp:Parameter Name="original_paitentmedicationtaking" Type="String" />
                            <asp:Parameter Name="original_paitentothermedication" Type="String" />
                            <asp:Parameter Name="original_paitentfirstlineofaddress" Type="String" />
                            <asp:Parameter Name="original_paitenttown" Type="String" />
                            <asp:Parameter Name="original_paitentcity" Type="String" />
                            <asp:Parameter Name="original_paitentpostcode" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourcePaitentRegistration" style="text-align: center" Width="16px">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="paitentgender" HeaderText="PGender" SortExpression="paitentgender" />
                            <asp:BoundField DataField="paitentlastname" HeaderText="PLastName" SortExpression="paitentlastname" />
                            <asp:BoundField DataField="paitentdob" HeaderText="patientdob" SortExpression="paitentdob" />
                            <asp:BoundField DataField="paitentcontactnumber" HeaderText="PContact" SortExpression="paitentcontactnumber" />
                            <asp:BoundField DataField="paitentemail" HeaderText="PEmail" SortExpression="paitentemail" />
                            <asp:BoundField DataField="paitentmedicationtaking" HeaderText="PMedication" SortExpression="paitentmedicationtaking" />
                            <asp:BoundField DataField="paitentfirstlineofaddress" HeaderText="PAddress" SortExpression="paitentfirstlineofaddress" />
                            <asp:BoundField DataField="paitenttown" HeaderText="PTown" SortExpression="paitenttown" />
                            <asp:BoundField DataField="paitentcity" HeaderText="PCity" SortExpression="paitentcity" />
                            <asp:BoundField DataField="paitentpostcode" HeaderText="PPostCode" SortExpression="paitentpostcode" />
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

            </ContentTemplate>

            </cc1:TabPanel>
            <cc1:TabPanel ID="TabPanel4" runat="server" HeaderText="View Paitents">


                <HeaderTemplate>
                    Register Patient
                </HeaderTemplate>


                <ContentTemplate>

                <p>&nbsp;</p>

                    <p style="text-align: center">
                        <asp:Label ID="Labelregisterpaitent" runat="server" ForeColor="Maroon" style="font-weight: 700; font-style: italic; font-size: xx-large; text-align: left;" Text="CLICK IMAGE TO REGISTER PATIENTS TO APPLICATION"></asp:Label>
                    </p>
                    <p style="text-align: center">
                        &nbsp;</p>
                    <p style="text-align: center">
                        &nbsp;</p>
                    <p style="text-align: center">
                        &nbsp;</p>
                    <p style="text-align: center">



                 <a href ="paitentregistrationview.aspx" style="text-align: left"><img src="Images/actualregimage.jpg"" style="height: 886px; width: 854px;" width="996px" /></a>



                    </p>
                    &nbsp;

            </ContentTemplate>



            </cc1:TabPanel>
        </cc1:TabContainer>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="B_Logout" runat="server" Height="50px" OnClick="B_Logout_Click" style="font-weight: 700; font-size: x-large; margin-top: 0px;" Text="Logout" Width="300px" />
        <br />
        <br />
    
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
