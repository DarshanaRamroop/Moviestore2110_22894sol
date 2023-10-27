<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task3controlevent.aspx.cs" Inherits="moviestore2110_22876.tutorials.week2.task3controlevent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Button
            ID="btnSubmit" OnClick="btnSubmit_Click"
            Text="Click Here"
            runat="server" />
        <br />
        <br />
        <asp:Label
            ID="Label1"
            runat="server" />
    </div>
</asp:Content>
