<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Moviestore2110_22894.tutorials.main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Working with Server controls</h4>
<hr />
<div class="mb-3">
<asp:Label runat="server"
CssClass="form-label">Product name</asp:Label>
<asp:TextBox runat="server" ID="txtProdName"
CssClass="form-control" />
</div>
<div class="mb-3">
<asp:Label runat="server"
CssClass="form-label">Description</asp:Label>
<asp:TextBox runat="server" ID="txtProdDesc"
TextMode="Multiline" CssClass="form-control" />
</div>
<div class="mb-3">
<asp:Label runat="server"
CssClass="form-label">Notification</asp:Label>
<div class="form-check-inline">
<asp:CheckBox runat="server" ID="chk1"
/>
<asp:Label runat="server"
CssClass="form-check-label">Email</asp:Label>
</div>
<div class="form-check-inline">
<asp:CheckBox runat="server" ID="chk2"
/>
<asp:Label runat="server"
CssClass="form-check-label">SMS</asp:Label>
</div>
</div>
<div class="mb-3">
<asp:Button runat="server" Text="Add Product"
ID="btnAddProd"

CssClass="col-12 btn btn-outline-primary btn-lg" />

</div>
</asp:Content>

