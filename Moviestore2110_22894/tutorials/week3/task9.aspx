<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task9.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.task9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Number of Adults:"></asp:Label>
    <asp:TextBox ID="TextBox1" Required="true" ValidationGroup="Reserve" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Number of Children:"></asp:Label>
    <asp:TextBox ID="TextBox2"  Required="true" ValidationGroup="Reserve" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Departure Date:"></asp:Label>
    <asp:TextBox ID="TextBox3" Required="true" ValidationGroup="Reserve" runat="server"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" Text="Return Date:"></asp:Label>
    <asp:TextBox ID="TextBox4" Required="true" ValidationGroup="Reserve" runat="server"></asp:TextBox>
</asp:Content>
