<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ViewC.aspx.cs" Inherits="ViewC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="152px" ImageUrl='<%# Eval("img") %>' Width="180px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("credit") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("downloaded") %>'></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text='<%# Eval("cat") %>'></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Id") %>' Text="View" />
            <br />
            <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("Id") %>' Text="Download" />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pictogramConnectionString %>" SelectCommand="SELECT * FROM [pictures] WHERE (([credit] &lt;&gt; @credit) AND ([credit] &lt;&gt; @credit2))">
        <SelectParameters>
            <asp:SessionParameter Name="credit" SessionField="email" Type="String" />
            <asp:Parameter DefaultValue="admin" Name="credit2" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

