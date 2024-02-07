<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="showaddress.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week5.showaddress" %>

<%@Register TagPrefix="user" TagName="Address" Src="~/tutorials/week5/addressform.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style type="text/css">
    html {
        background-color: silver;
        font: 14px Georgia,Serif;
    }

    .content {
        background-color: white;
        width: 600px;
        margin: auto;
        padding: 20px;
    }

    .addressLabel {
        float: left;
        width: 100px;
        padding: 5px;
        text-align: right;
    }

    .addressField {
        float: left;
        padding: 5px;
    }

    .clear {
        clear: both;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="content">
     <user:Address ID="ucBilling" runat="server" />
    <user:Address ID="ucShipping" runat="server" />
    <asp:Button
        ID="btnSubmit" OnClick="btnSubmit_Click"
        Text="Submit Form"
        runat="server" />
    <hr />
    <asp:Literal
        ID="ltlResults"
        runat="server" />
</div>
</asp:Content>
