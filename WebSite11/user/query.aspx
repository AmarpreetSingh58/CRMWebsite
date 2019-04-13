<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="user_query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 231px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td class="query">
                Product No. :
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="343px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                * Enter Product No.
            </td>
        </tr>
        <tr>
            <td class="query">
                Category :
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="343px">
                    <asp:ListItem>Electronics</asp:ListItem>
                    <asp:ListItem>Computer and Accessories</asp:ListItem>
                    <asp:ListItem>Home and Appliance</asp:ListItem>
                    <asp:ListItem>Mobiles</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style2">
                *
            </td>
            <tr>
            <td class="query">
                Query :
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="126px" Width="344px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                * Enter Your Query.
            </td>
        </tr>
        </tr>
    </table>
    <br />
    <center><asp:Button ID="Button1" runat="server" Text="Send" Font-Bold="True" OnClick="Button1_Click" Width="116px"></asp:Button></center>
</asp:Content>

