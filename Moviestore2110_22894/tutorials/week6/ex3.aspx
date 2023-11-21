<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="ex3.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week6.ex3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="floater">
<h1>List of Movies and Box Office Totals: </h1>
<asp:BulletedList
ID="BulletedList1"
runat="server">
</asp:BulletedList>
</div>
</asp:Content>
