<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task8.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.task8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Calendar ID="Calendar1" OnDayRender="Calendar1_DayRender" runat="server"></asp:Calendar>
</asp:Content>
