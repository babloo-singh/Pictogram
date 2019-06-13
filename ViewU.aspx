<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewU.aspx.cs" Inherits="ViewU" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
    <ItemTemplate>
        <asp:Image ID="Image1" runat="server" Height="210px" ImageUrl='<%# Eval("img") %>' Width="222px" />
        <br />
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("desc") %>'></asp:Label>
        <br />
        Downloaded:
        <asp:Label ID="Label3" runat="server" Text='<%# Eval("downloaded") %>'></asp:Label>
        <br />
        Category:
        <asp:Label ID="Label4" runat="server" Text='<%# Eval("cat") %>'></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Delete" Text="Delete" />
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pictogramConnectionString %>" SelectCommand="SELECT * FROM [pictures] WHERE ([credit] = @credit)">
    <SelectParameters>
        <asp:SessionParameter Name="credit" SessionField="email" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    </asp:Content>

