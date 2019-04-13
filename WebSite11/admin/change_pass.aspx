<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="change_pass.aspx.cs" Inherits="admin_change_pass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            font-family: Century;
            font-size: 18px;
            text-align: right;
            width: 223px;
        }
        .auto-style3 {
            width: 345px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      Change Password<br /><br />
    To change password please fill the details below.<br /><br />
    <table>
        <tr>
            <td class="auto-style2">
                Old Password :
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">
                * Enter Old Password
            </td>
        </tr>
         <tr>
            <td class="auto-style2">
                New Password :
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">
                * Enter New Password
            </td>
        </tr>
         <tr>
            <td class="auto-style2">
                Confirm Password :
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">
                *
            </td>
        </tr>
         
    </table>
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="Continue" OnClick="Button1_Click"></asp:Button>
</asp:Content>

