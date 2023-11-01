<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task1.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.task1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="x"></asp:Label>
    <asp:TextBox ID="TextBox1"  AutoPostBack="true" runat="server"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="y"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</asp:Content>
