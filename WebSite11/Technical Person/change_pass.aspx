<%@ Page Title="" Language="C#" MasterPageFile="~/Technical Person/Technical_Person.master" AutoEventWireup="true" CodeFile="change_pass.aspx.cs" Inherits="Technical_Person_change_pass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 398px;
        }
        .auto-style3 {
            width: 244px;
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
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
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
                <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 2px" Width="250px"></asp:TextBox>
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
                <asp:TextBox ID="TextBox3" runat="server" Width="250px"></asp:TextBox>
            </td>
            <td class="auto-style3">
                *
            </td>
        </tr>
         
    </table>
    
        <br />
        <asp:Button ID="Button1" runat="server" Text="Continue" OnClick="Button1_Click"></asp:Button>
</asp:Content>

