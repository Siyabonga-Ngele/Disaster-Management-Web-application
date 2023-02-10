<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="NgeleS_39293785_Assessment2.SearchPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" type ="text/css" href="HomePage.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 137px;
        }
        .auto-style3 {
            width: 25px;
        }
        .auto-style4 {
            width: 271px;
        }
        .auto-style5 {
            width: 271px;
            text-align: center;
        }
        .auto-style6 {
            width: 25px;
            height: 26px;
        }
        .auto-style7 {
            width: 271px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
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
                            <asp:Label ID="lblHeading" runat="server" Text="SEARCH FOR VICTIM"></asp:Label>
                        </h2>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <h3>
                            <asp:Label ID="lblList" runat="server" Text="CURRENT LIST OF VICTIMS:"></asp:Label>
                        </h3>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="3">
                        <asp:GridView ID="GridView1" runat="server" Width="287px" BackColor="Blue" ForeColor="White">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                    &nbsp;</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtName" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="lblSurname" runat="server" Text="Surname:"></asp:Label>
                    &nbsp;</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtSurname" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSurname" ErrorMessage="Surname is Required!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblResults" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnReset" runat="server" CssClass="button2" Height="35px" OnClick="btnReset_Click" Text="Reset" Width="68px" />
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btnSearch" runat="server" CssClass="button2" Height="37px" OnClick="btnSearch_Click" Text="Search" Width="142px" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HlHomePage" runat="server" NavigateUrl="~/Default.aspx">Return to Homepage</asp:HyperLink>
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
