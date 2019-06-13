<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Account_Manage" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">
        <h1><%: Title %></h1>
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        &#39;s Account Details<br />
        <br />
        Personal Details<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                <asp:BoundField DataField="added" HeaderText="Pictures in Community" SortExpression="added" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pictogramConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [email] = @email" InsertCommand="INSERT INTO [User] ([email], [name], [phone], [password], [added]) VALUES (@email, @name, @phone, @password, @added)" SelectCommand="SELECT * FROM [User] WHERE ([email] = @email)" UpdateCommand="UPDATE [User] SET [name] = @name, [phone] = @phone, [password] = @password, [added] = @added WHERE [email] = @email">
    <DeleteParameters>
        <asp:Parameter Name="email" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="added" Type="Int32" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="email" SessionField="email" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="added" Type="Int32" />
        <asp:Parameter Name="email" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </asp:Content>
