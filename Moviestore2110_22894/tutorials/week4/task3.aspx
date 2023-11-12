<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task3.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week4.task3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label">Amount</asp:Label>
    <asp:TextBox ID="txtbid" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtbid" Type="Double" Operator="GreaterThan" ValueToCompare="5000"  runat="server" CssClass="text-bg-danger" ErrorMessage="Bid amount must be higher than 5000" Display="Dynamic"></asp:CompareValidator>
    <asp:Button ID="Button1" runat="server" Text="Bid"  OnClick="Button1_Click"/>
</asp:Content>
