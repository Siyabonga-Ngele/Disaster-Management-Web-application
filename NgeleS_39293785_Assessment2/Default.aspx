<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NgeleS_39293785_Assessment2.Default" %>

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
            height: 23px;
            width: 263px;
        }
        .auto-style6 {
            width: 263px;
            height: 40px;
        }
        .auto-style7 {
            height: 40px;
        }
        .auto-style8 {
            height: 23px;
            width: 335px;
        }
        .auto-style9 {
            height: 40px;
            width: 335px;
        }
        .auto-style10 {
            height: 23px;
            text-align: center;
        }
        .auto-style11 {
            height: 23px;
            text-align: left;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            height: 23px;
            text-align: center;
            width: 306px;
        }
        .auto-style14 {
            height: 23px;
            width: 306px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Image ID="Logo" runat="server" Height="178px" ImageUrl="~/logo2.png" Width="305px" />
                    </td>
                    <td class="auto-style8">
                        <h1 class="auto-style12">
                            <asp:Label ID="Label1" runat="server" Text="SIZA BANTU" ForeColor="#3333CC"></asp:Label>
                        &nbsp;</h1>
                    </td>
                    <td class="auto-style11">
                    <asp:Image ID="instagramImage" runat="server" Height="25px" ImageUrl="~/instagram.png" />
                    <asp:Label ID="Label5" runat="server" Text="@Siza_Bantu"></asp:Label>
                        <br />
                    <asp:Image ID="twitterImage" runat="server" Height="25px" ImageUrl="~/twitter.png" />
                    <asp:Label ID="Label6" runat="server" Text="@SizaBantu"></asp:Label>
                        <br />
                    <asp:Image ID="facebookImage" runat="server" Height="25px" ImageUrl="~/facebook.png" />
                    <asp:Label ID="Label7" runat="server" Text="@Siza_Bantu"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    <td class="auto-style9"></td>
                    <td class="auto-style7">
                        <br />
                    </td>
                </tr>
                </table>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style10">
                        <asp:Button  CssClass="button1" ID="btnLogin" runat="server" Height="32px" OnClick="btnLogin_Click" Text="Login" Width="203px" Font-Bold="True" />
                    </td>
                <td class="auto-style13">
                        <asp:Button  CssClass="button1" ID="btnSearch" runat="server" Height="32px" OnClick="btnSearch_Click" Text="Search for Victim" Width="203px" Font-Bold="True" />
                    </td>
                <td class="auto-style10">
                        <asp:Label ID="lblVictims" runat="server" Text="Current no. of Victims:" style="text-align: right"></asp:Label>
                    &nbsp;
                        <asp:Label ID="lblResVictim" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                        <br />
                        <asp:Label ID="lblClothing" runat="server" Text="No. of Clothing needed:"></asp:Label>
                    &nbsp;
                        <asp:Label ID="lblResClothing" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                        <br />
                        <asp:Label ID="lblFood" runat="server" Text="No. of Food Parcels needed:"></asp:Label>
                    &nbsp;
                        <asp:Label ID="lblResFood" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                        <br />
                        <asp:Label ID="lblHousing" runat="server" Text="Victims without Shelter:"></asp:Label>
                    &nbsp;
                        <asp:Label ID="lblResHousing" runat="server" Font-Bold="True" ForeColor="#000066"></asp:Label>
                        </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Image ID="Image2" runat="server" Height="176px" ImageUrl="~/image1.jpg" Width="300px" />
                </td>
                <td class="auto-style13">
                    <asp:Image ID="Image3" runat="server" Height="176px" ImageUrl="~/image2.png" Width="300px" />
                </td>
                <td class="auto-style10">
                    <asp:Image ID="Image4" runat="server" Height="176px" ImageUrl="~/image3.jpg" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style14"></td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <h2>
                        <asp:Label ID="lblContact" runat="server" Text="CONTACT US"></asp:Label>
                    </h2>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblNumber" runat="server" Text="Tel: +27 13 354 5763"></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Email: sizabantu@sizabantu.org.za"></asp:Label>
                </td>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style1">
                    &nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
