<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePage.aspx.cs" Inherits="NgeleS_39293785_Assessment2.UpdatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" type ="text/css" href="HomePage.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 293px;
        }
        .auto-style2 {
            width: 127px;
        }
        .auto-style3 {
            width: 127px;
            text-align: center;
            height: 38px;
        }
        .auto-style4 {
            width: 293px;
            height: 38px;
        }
        .auto-style5 {
            height: 38px;
        }
        .auto-style7 {
            width: 293px;
            height: 38px;
            text-align: left;
        }
        .auto-style8 {
            height: 38px;
            text-align: left;
        }
        .auto-style9 {
            width: 127px;
            text-align: left;
            height: 38px;
        }
        .auto-style10 {
            width: 293px;
            height: 30px;
        }
        .auto-style11 {
            width: 127px;
            height: 30px;
        }
        .auto-style12 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style10">
                        <h2>
                            <asp:Label ID="lblHeading" runat="server" Text="UPDATE VICTIM NEEDS"></asp:Label>
                        </h2>
                    </td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <h4>
                            <asp:Label ID="lblList" runat="server" Text="CURRENT LIST OF VICTIMS:"></asp:Label>
                        </h4>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="3">
                        <asp:GridView ID="GridView1" runat="server" Width="287px" BackColor="Blue" ForeColor="White">
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                    </td>
                    <td class="auto-style3">
                    </td>
                    <td class="auto-style5">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <asp:Label ID="lblID" runat="server" Text="Victim ID:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlVictimID" runat="server" AutoPostBack="True" Height="19px" OnSelectedIndexChanged="ddlVictimID_SelectedIndexChanged" Width="206px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <h4>
                        <asp:Label ID="lblNeeds" runat="server">Victim needs fulfilled: </asp:Label>
                        </h4>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblClothing" runat="server">Clothing:</asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:RadioButton ID="rdCYes" runat="server" GroupName="Clothing" Text="Yes" />
&nbsp;<asp:RadioButton ID="rdCNo" runat="server" GroupName="Clothing" Text="No" Checked="True" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblFood" runat="server">Food:</asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:RadioButton ID="rdFYes" runat="server" Text="Yes" GroupName="Food" />
&nbsp;<asp:RadioButton ID="rdFNo" runat="server" Text="No" Checked="True" GroupName="Food" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="lblHousing" runat="server">Housing</asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:RadioButton ID="rdHYes" runat="server" Text="Yes" GroupName="Housing" />
&nbsp;<asp:RadioButton ID="rdHNo" runat="server" Text="No" Checked="True" GroupName="Housing" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="3">
                        <asp:Button CssClass= "button2" ID="btnConfirm" runat="server" Font-Bold="True" Height="34px" Text="Confirm" Width="184px" OnClick="btnConfirm_Click" />
                        &nbsp;
                        <asp:Button CssClass= "button2" ID="btnReset" runat="server" Font-Bold="True" Height="34px" Text="Reset" Width="184px" OnClick="btnReset_Click" />
                        &nbsp;
                        <asp:HyperLink ID="HlHomePage" runat="server" NavigateUrl="~/Default.aspx">Return to Homepage</asp:HyperLink>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Label ID="lblResults" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
