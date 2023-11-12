<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week4.task2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-3">
    <asp:Label ID="Label1" runat="server" CssClass="form-label">Enter First Number:</asp:Label>
    <asp:TextBox runat="server" ID="txtnum1" TextMode="Number" CssClass="form-control" />
</div>

<div class="mb-3">
    <asp:Label ID="Label2" runat="server" CssClass="form-label">Enter Second Number:</asp:Label>
    <asp:TextBox runat="server" ID="txtnum2" TextMode="Number" CssClass="form-control" />
</div>

    <div class="mb-3">
        <asp:Label ID="Label3" runat="server"  CssClass="form-label" Text="Label">Enter  number that falls within thw first two  </asp:Label>
         <asp:TextBox runat="server" ID="txtnum3" TextMode="Number" CssClass="form-control" Enabled="false" />
    </div>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Result" />

</asp:Content>
