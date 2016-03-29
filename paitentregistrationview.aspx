<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="paitentregistrationview.aspx.cs" Inherits="FinalYearProject.paitentregistrationview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        #Reset2 {
            width: 308px;
            height: 42px;
            font-weight: 700;
            font-size: x-large;
            margin-left: 78px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 578px;
            text-align: right;
            font-weight: 700;
        }
        .auto-style3 {
            width: 215px;
        }
        .auto-style4 {
            width: 578px;
            text-align: right;
            height: 23px;
            font-weight: 700;
        }
        .auto-style5 {
            width: 215px;
            height: 23px;
        }
        .auto-style8 {
            font-weight: bold;
            text-align: center;
        }
        .auto-style9 {
            height: 23px;
            text-align: left;
        }
        .auto-style10 {
            width: 578px;
            text-align: right;
            height: 17px;
        }
        .auto-style11 {
            width: 215px;
            height: 17px;
        }
        .auto-style12 {
            height: 17px;
            text-align: left;
        }
        .auto-style14 {
            width: 578px;
            text-align: right;
            font-weight: 700;
            height: 22px;
        }
        .auto-style15 {
            width: 215px;
            height: 22px;
        }
        .auto-style16 {
            height: 22px;
            text-align: left;
        }
        .auto-style17 {
            width: 578px;
            text-align: right;
            font-weight: 700;
            height: 26px;
        }
        .auto-style18 {
            width: 215px;
            height: 26px;
        }
        .auto-style19 {
            height: 26px;
            text-align: left;
        }
        .auto-style20 {
            text-align: left;
        }
        .auto-style21 {
            color: #800000;
        }
        #Reset1 {
            height: 49px;
            width: 172px;
            font-weight: 700;
            font-size: large;
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
        <br />
        <h1 class="auto-style21">Kingsway Pharmacy Paitent Registration Form</h1>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style10"><strong>Gender:</strong></td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownListpgender" runat="server" Width="200px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownListpgender" CssClass="auto-style8" ErrorMessage="Paitent gender REQUIRED" ForeColor="Red" InitialValue="Select Gender"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"><strong>Title:</strong></td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownListptitle" runat="server" Width="200px">
                        <asp:ListItem>Select Title</asp:ListItem>
                        <asp:ListItem>Prof</asp:ListItem>
                        <asp:ListItem>Dr</asp:ListItem>
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Miss</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListptitle" CssClass="auto-style8" ErrorMessage="Paitent title REQUIRED" ForeColor="Red" InitialValue="Select Title"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Paitent First Name:</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxpfirstname" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxpfirstname" ErrorMessage="Paitent first name REQUIRED" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Paitent Second Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxpsecondname" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxpsecondname" ErrorMessage="Paitent second name REQUIRED" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style4">Paitent D.O.B:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxpdob" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxpdob" ErrorMessage="Paitent DOB REQUIRED" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Paitent Contact Number:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxpcontactnumber" runat="server" TextMode="Phone" Width="204px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxpcontactnumber" ErrorMessage="Paitent contact number REQUIRED" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Paitent E - Mail</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxpemail" runat="server" Width="204px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxpemail" ErrorMessage="Paitent e - mail is REQUIRED" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxpemail" ErrorMessage="Paitent e-mail is REQUIRED I.E. ABC@gmail.com" ForeColor="Red" style="font-weight: 700" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Medication Taking</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownpmedication" runat="server" Width="204px">
                        <asp:ListItem>Select Medicine</asp:ListItem>
                        <asp:ListItem>Asprin 75MG</asp:ListItem>
                        <asp:ListItem>CO-Codamol 30/500mg</asp:ListItem>
                        <asp:ListItem>Amoxicillin 500mg</asp:ListItem>
                        <asp:ListItem>Blister Pack</asp:ListItem>
                        <asp:ListItem>Ibuprofen 400mg</asp:ListItem>
                        <asp:ListItem>Sildenafil 100mg</asp:ListItem>
                        <asp:ListItem>E45 Cream 500g</asp:ListItem>
                        <asp:ListItem>Kytril 250mg</asp:ListItem>
                        <asp:ListItem>Paracetamol 500mg</asp:ListItem>
                        <asp:ListItem>Novomix Flexpen INJ</asp:ListItem>
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
                        <asp:ListItem>ErythromycinSus 250mg/5ml</asp:ListItem>
                        <asp:ListItem>Lactolose Suspension</asp:ListItem>
                        <asp:ListItem>Pennicillan 125mg/5ml</asp:ListItem>
                        <asp:ListItem>Anusol suppository</asp:ListItem>
                        <asp:ListItem>Tramadol Capsules 50mg</asp:ListItem>
                        <asp:ListItem>Morphine 10mg/5ml</asp:ListItem>
                        <asp:ListItem>Amitriptyline 50mg</asp:ListItem>
                        <asp:ListItem>Voltaren Emulgel</asp:ListItem>
                        <asp:ListItem>Olanzapine 5mg</asp:ListItem>
                        <asp:ListItem Value="Aripiprazole 5mg"></asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownpmedication" ErrorMessage="Paitent medication REQUIRED" ForeColor="Red" InitialValue="Select Medicine" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
                <td class="auto-style16"></td>
            </tr>
            <tr>
                <td class="auto-style17">Other Medication:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxpothermedication" runat="server" Width="204px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxpothermedication" ErrorMessage="Paitent other medication REQUIRED if not other put N/A" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Paitent Address Line1:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxpfirstlineaddress" runat="server" Width="203px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxpfirstlineaddress" ErrorMessage="Paitent first line address REQUIRED" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Paitent Town:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxptown" runat="server" Width="203px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxptown" ErrorMessage="Paitent Town" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Paitent City:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxpcity" runat="server" Width="203px"></asp:TextBox>
                </td>
                <td class="auto-style20">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBoxpcity" ErrorMessage="Paitent city REQUIRED" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style17">Paitent Postal Code</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBoxppostalcode" runat="server" Width="203px"></asp:TextBox>
                </td>
                <td class="auto-style19">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBoxppostalcode" ErrorMessage="Paitent postal code REQUIRED" ForeColor="Red" style="font-weight: 700"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SAVE RECORD" Height="49px" style="font-weight: 700; font-size: large" Width="172px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style20">
                    <input id="Reset1" type="reset" value="reset" /></td>
            </tr>
        </table>

            <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
