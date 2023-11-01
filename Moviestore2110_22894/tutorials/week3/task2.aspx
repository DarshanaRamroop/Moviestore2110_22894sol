<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.task2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CheckBox ID="CheckBox1" AutoPostBack="true"  OnCheckedChanged="CheckBox1_CheckedChanged" runat="server" />Miss
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <asp:CheckBox ID="CheckBox2" AutoPostBack="true" OnCheckedChanged="CheckBox2_CheckedChanged" runat="server"  />Mr
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</asp:Content>
