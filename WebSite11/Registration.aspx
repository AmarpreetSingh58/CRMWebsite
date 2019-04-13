<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        width: 226px;
    }
        .auto-style3 {
            font-family: Forte;
            text-decoration-color: #facd8f;
            font-size: 18px;
            text-align: right;
            height: 15px;
        }
        .auto-style4 {
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center> Registration</center>

    <table>
        <tr>
            <td class="divregistration">
                Name
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFFF" BorderColor="#66FF33" BorderStyle="Groove" BorderWidth="2px" Width="233px"></asp:TextBox>
            </td>
            <td>
                * Enter your name
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                
            </td>
            <td class="auto-style4">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="233px">
                    <asp:ListItem>Mobile</asp:ListItem>
                    <asp:ListItem>LandLine</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style4">
                *
            </td>
        </tr>
        <tr>
            <td class="divregistration">
                Number:
            </td>
           <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFFF" BorderColor="#66FF33" BorderStyle="Groove" BorderWidth="2px" Width="233px"></asp:TextBox>
            </td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td class="divregistration">
                User ID
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCFFFF" BorderColor="#66FF33" BorderStyle="Groove" BorderWidth="2px" Width="233px"></asp:TextBox>
            </td>
            <td>
                * Enter your userid
            </td>
        </tr>
        <tr>
            <td class="divregistration">
                Password
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCFFFF" BorderColor="#66FF33" BorderStyle="Groove" BorderWidth="2px" Width="233px"></asp:TextBox>
            </td>
            <td>
                * 8 to 10 characters.
            </td>
        </tr>
        <tr>
            <td class="divregistration">
                Confirm Password
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCFFFF" BorderColor="#66FF33" BorderStyle="Groove" BorderWidth="2px" Width="233px"></asp:TextBox>
            </td>
            <td>
                
            </td>
        </tr>
    </table>
    <center>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button>
    </center>
    Note: * Fields are mandatory.
</asp:Content>

