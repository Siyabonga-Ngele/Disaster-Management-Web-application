<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPage.aspx.cs" Inherits="NgeleS_39293785_Assessment2.AddPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <link rel="stylesheet" type ="text/css" href="HomePage.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 24px;
        }
        .auto-style3 {
            height: 23px;
            width: 290px;
        }
        .auto-style4 {
            width: 290px;
        }
        .auto-style5 {
            height: 24px;
            width: 290px;
        }
        .auto-style6 {
            height: 23px;
            width: 265px;
        }
        .auto-style7 {
            width: 265px;
        }
        .auto-style8 {
            height: 24px;
            width: 265px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">
                        <h2>
                            <asp:Label ID="lblHeading" runat="server" Text="ADD VICTIM"></asp:Label>
                        </h2>
                    </td>
                    <td class="auto-style6"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <h3>
                            <asp:Label ID="lblDetails" runat="server" Text="Enter Victim Details"></asp:Label>
                        </h3>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtName" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblSurname" runat="server" Text="Surname:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtSurname" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Surname is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblID" runat="server" Text="ID or Passport number:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtID" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtID" ErrorMessage="ID is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblRegion" runat="server" Text="KZN Region:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="ddlRegion" runat="server" Height="19px" Width="266px">
                            <asp:ListItem>Battlefields</asp:ListItem>
                            <asp:ListItem>Drakensberg</asp:ListItem>
                            <asp:ListItem>Durban Metro</asp:ListItem>
                            <asp:ListItem>Elephant Coast</asp:ListItem>
                            <asp:ListItem>North Coast</asp:ListItem>
                            <asp:ListItem>Pietermaritzburg &amp; Midlands</asp:ListItem>
                            <asp:ListItem>South Coast</asp:ListItem>
                            <asp:ListItem>Zululand</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblNeeds" runat="server" Text="Needs of Victim:"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:CheckBox ID="cbClothing" runat="server" Text="Clothing" />
                        <br />
                        <asp:CheckBox ID="cbFood" runat="server" Text="Food" />
                        <br />
                        <asp:CheckBox ID="cbHousing" runat="server" Text="Housing" />
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblDate" runat="server" Text="Date of Admission:"></asp:Label>
                    </td>
                    <td class="auto-style8"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Calendar ID="Calendar1" runat="server" Width="285px"></asp:Calendar>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button CssClass="button2" ID="btnAdd" runat="server" Font-Bold="True" Height="34px" Text="Add " Width="137px" OnClick="btnAdd_Click" />
                        <asp:Button CssClass="button2" ID="btnClear" runat="server" Font-Bold="True" Height="34px" Text="Clear" Width="146px" OnClick="btnClear_Click" />
                        </td>
                    <td class="auto-style8">
                        <asp:HyperLink ID="HlHomePage" runat="server" NavigateUrl="~/Default.aspx">Return to Homepage</asp:HyperLink>
                        </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
