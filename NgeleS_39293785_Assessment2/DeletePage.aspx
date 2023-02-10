<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeletePage.aspx.cs" Inherits="NgeleS_39293785_Assessment2.DeletePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel="stylesheet" type ="text/css" href="HomePage.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
                        <h2>
                            <asp:Label ID="lblHeading" runat="server" Text="DELETE VICTIM "></asp:Label>
                        </h2>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>
                            <asp:Label ID="lblList" runat="server" Text="CURRENT LIST OF VICTIMS:"></asp:Label>
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" Width="287px" BackColor="Blue" ForeColor="White">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblID" runat="server" Text="Victim ID:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="ddlVictimID" runat="server" AutoPostBack="True" Height="19px" OnSelectedIndexChanged="ddlVictimID_SelectedIndexChanged" Width="206px">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp; </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button CssClass= "button2" ID="btnDelete" runat="server" Font-Bold="True" Height="34px" Text="Delete Victim" Width="184px" OnClick="btnDelete_Click" />
                        &nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" NavigateUrl="~/Default.aspx">Homepage</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblResults" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
