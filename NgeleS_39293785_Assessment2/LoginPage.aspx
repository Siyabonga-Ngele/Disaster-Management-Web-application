<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="NgeleS_39293785_Assessment2.LoginPage" StyleSheetTheme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     <link rel="stylesheet" type ="text/css" href="HomePage.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 24px;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            height: 24px;
            width: 208px;
        }
        .auto-style4 {
            width: 255px;
        }
        .auto-style5 {
            height: 24px;
            width: 255px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="3">
                        <h2>
                            <asp:Label ID="lblHeading" runat="server" Text="LOGIN"></asp:Label>
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="3">
                        <h3>
                            <asp:Label ID="lblDetails" runat="server" Text="Enter Fieldworker Details"></asp:Label>
                        </h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtName" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblID" runat="server" Text="Field worker ID:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtID" runat="server" Width="257px"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtID" ErrorMessage="ID is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="3">
                        <asp:Button CssClass="button2" ID="btnAdd" runat="server" Font-Bold="True" Height="34px" Text="Add New Victim" Width="162px" OnClick="btnAdd_Click" />
                        <asp:Button CssClass="button2" ID="btnUpdate" runat="server" Font-Bold="True" Height="34px" Text="Update Victim Details" Width="162px" OnClick="btnUpdate_Click" />
                        <asp:Button CssClass="button2" ID="btnDelete" runat="server" Font-Bold="True" Height="34px" Text="Delete Victim " Width="162px" OnClick="btnDelete_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" colspan="3">
                        <asp:HyperLink ID="HlHomePage" runat="server" NavigateUrl="~/Default.aspx">Return to Homepage</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
