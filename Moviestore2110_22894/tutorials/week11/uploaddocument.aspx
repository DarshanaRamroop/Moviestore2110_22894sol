<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="uploaddocument.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week11.uploaddocument" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h2>Enter a custom file name:</h2>
 <asp:TextBox ID="txtfilename" runat="server" />
 <br />
 <br />
 <asp:FileUpload
     ID="upDoc"
     runat="server" />
 <br />
 <br />
 <asp:Button OnClick="btnAdd_Click"
     ID="btnAdd"
     Text="Upload Document"
     CssClass="btn btn-outline-success"
     runat="server" />
 <asp:Label ID="lblmsg" runat="server" CssClass="text-success" />
</asp:Content>
