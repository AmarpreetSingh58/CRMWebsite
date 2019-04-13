<%@ Page Title="Admin Query" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="Query_admin.aspx.cs" Inherits="admin_Query_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center><asp:Button ID="Button1" runat="server" Text="Display All Query" OnClick="Button1_Click"></asp:Button></center><br /><br />
    Select Technical Head : <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    <br />
    <br />
    <right><asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FFFF99" BorderColor="#FF3300" BorderStyle="Groove" BorderWidth="3px" ForeColor="Blue" OnClick="LinkButton1_Click">Assign Queries</asp:LinkButton>
<br />
</right><br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="547px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
            <asp:TemplateField HeaderText="Uid">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("serialno") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Product Number">
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

</asp:Content>

