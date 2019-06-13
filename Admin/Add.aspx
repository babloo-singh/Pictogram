<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Admin_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="margin-left: 240px">
        Enter Pictures Details
        <center>
            <asp:Label ID="Noti" runat="server"></asp:Label>
            <br />
            <br />
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Details"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="Det" TextMode="MultiLine" runat="server"></asp:TextBox>
            </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Image"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </p>
&nbsp;
    <asp:Label ID="Label11" runat="server" Text="Category"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" >
        <asp:ListItem Selected="True" Value="movies">Movies</asp:ListItem>
        <asp:ListItem Value="art">Art</asp:ListItem>
        <asp:ListItem Value="scene">Scenery</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
    <br />
    </center>
</asp:Content>

