<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task4.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.task4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ImageButton ID="ImageButton1" ImageUrl="~/images/smiley.jpg" runat="server" OnClick="ImageButton1_Click" />
     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     <asp:Label ID="Label1" runat="server"  Text="Message"></asp:Label>

 
</asp:Content>
