<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task4.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week4.task4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label">Enter the Credit Number</asp:Label>
    <asp:TextBox ID="txtcredit" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Validate" OnClick="Button1_Click" />
</asp:Content>
