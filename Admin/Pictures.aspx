<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Pictures.aspx.cs" Inherits="Admin_ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource8" style="text-align: center" Height="300px" OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="123px" ImageUrl='<%# Eval("img","~/{0}") %>' Width="153px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("credit") %>'></asp:Label>
            <br />
            Downloaded:
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("downloaded") %>'></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="Delete" Text="Delete" />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:pictogramConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [pictures] WHERE ([cat] = @cat)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cat" QueryStringField="id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

