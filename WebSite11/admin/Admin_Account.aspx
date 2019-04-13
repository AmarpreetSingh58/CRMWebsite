<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Admin_Account.aspx.cs" Inherits="admin_Admin_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center> REGISTRATION</center>

    <table>
        <tr>
            <td class="adminregistration">
                Name :
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
            <td class="adminregistration">
                Number :
            </td>
           <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFFF" BorderColor="#66FF33" BorderStyle="Groove" BorderWidth="2px" Width="233px"></asp:TextBox>
            </td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td class="adminregistration">
                User ID :
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCFFFF" BorderColor="#66FF33" BorderStyle="Groove" BorderWidth="2px" Width="233px"></asp:TextBox>
            </td>
            <td>
                * Enter your userid
            </td>
        </tr>
        <tr>
            <td class="adminregistration">
                Password :
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCFFFF" BorderColor="#66FF33" BorderStyle="Groove" BorderWidth="2px" Width="233px"></asp:TextBox>
            </td>
            <td>
                * 8 to 10 characters.
            </td>
        </tr>
        <tr>
            <td class="adminregistration">
                Confirm Password :
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server" BackColor="#CCFFFF" BorderColor="#66FF33" BorderStyle="Groove" BorderWidth="2px" Width="233px"></asp:TextBox>
            </td>
            <td>
                
            </td>
        </tr>
        <tr>
            <td class="adminregistration">
                Type :
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="237px">
                    <asp:ListItem Value="TH">Technical Head</asp:ListItem>
                    <asp:ListItem Value="TP">Technical Person</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                * Post
            </td>
        </tr>
    </table>
    <center>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"></asp:Button>
    </center>
    Note: * Fields are mandatory.
</asp:Content>

