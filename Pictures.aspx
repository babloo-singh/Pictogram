<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Pictures.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:pictogramConnectionString %>" SelectCommand="SELECT * FROM [pictures] WHERE ([cat] = @cat) AND ([credit] = @admin)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cat" QueryStringField="cat" Type="String" />
            <asp:Parameter Name="admin" DefaultValue="admin" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource9" CellSpacing="4" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="146px" ImageUrl='<%# Eval("img") %>' Width="224px" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp; Downloaded :&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("downloaded") %>'></asp:Label>
            &nbsp;Times<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Id")  %>' CommandName="View" Text="View" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <% if(Session["user"]!=null){ %>
            <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("Id")  %>' CommandName="Download"  Text="Download" />
            <% } %>
            <br />
        </ItemTemplate>
    </asp:DataList>
    </asp:Content>

