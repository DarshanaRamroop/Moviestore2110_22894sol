<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task1datetime.aspx.cs" Inherits="moviestore2110_22876.tutorials.week2.tutorial1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
 The current date and time is:
 <asp:Label
 ID="lblServerTime"
 runat="server" />
 </div>
    
</asp:Content>
