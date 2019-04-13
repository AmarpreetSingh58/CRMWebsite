<%@ Page Title="" Language="C#" MasterPageFile="~/Technical head/th.master" AutoEventWireup="true" CodeFile="query.aspx.cs" Inherits="Technical_head_query" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><asp:Button ID="Button1" runat="server" Text="Display Query" BackColor="#CCCCCC" BorderColor="#CCFFFF" BorderStyle="Solid" BorderWidth="4px" Height="58px" OnClick="Button1_Click"></asp:Button></center>
    Select Technical Person : <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    <br />
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FFFFCC" BorderColor="#FF6666" BorderStyle="Double" BorderWidth="3px" OnClick="LinkButton1_Click">Assign Query</asp:LinkButton>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="575px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="Category">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Query">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("query") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="UID">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("serialno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Product No.">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("productno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />


</asp:Content>

