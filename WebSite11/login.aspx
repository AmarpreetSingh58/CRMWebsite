<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" Width="629px">
                        </asp:Login>
                        Don't have an account.<a href="registration.aspx">Click Here</a> </td>
                    <td>
                        <p>
                            About this Site<br />This site is designed for the purpose of consumer benefits. Consumer can post any of their product related query and the solution will be provided by our technical person.For futher assistance contact us.
                        </p>
                    </td>
                </tr>
            </table>
        
</asp:Content>

