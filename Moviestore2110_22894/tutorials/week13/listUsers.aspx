<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="listUsers.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week13.listUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvs" runat="server"
        DataSourceID="srcUsers"
        ClientIDMode="Static"
        AutoGenerateColumns="False" ForeColor="#333333" OnPreRender="gvs_PreRender">
        <Columns>
            <asp:ImageField DataImageUrlField="imageurl"
                DataImageUrlFormatString="~/images/{0}" ControlStyle-Width="75" HeaderText="Poster"
                SortExpression="imageurl" />
            <asp:BoundField DataField="username" HeaderText="Username"
                SortExpression="username" />
            <asp:BoundField DataField="Status" HeaderText="Status"
                SortExpression="Status" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource
        ID="srcUsers" TypeName="DataAccessLayer" SelectMethod="GetUsers"
        runat="server" />
</asp:Content>
