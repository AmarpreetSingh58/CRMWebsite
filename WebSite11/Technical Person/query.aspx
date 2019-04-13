<%@ Page Title="" Language="C#" MasterPageFile="~/Technical Person/Technical_Person.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="Technical_Person_query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Button ID="Button1" runat="server" Text="Display All Query" OnClick="Button1_Click" />
    <br />
    <br />

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="741px" OnRowDeleting="GridView1_RowDeleting">
    <Columns>
        <asp:TemplateField HeaderText="Query">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("query") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Solution">
            <ItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Width="206px"></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField DeleteText="Update" HeaderText="Update" ShowDeleteButton="True" />
        <asp:TemplateField HeaderText="UID">
            <ItemTemplate>
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("serialno") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>

</asp:Content>

