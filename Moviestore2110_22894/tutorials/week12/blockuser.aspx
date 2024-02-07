<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="blockuser.aspx.cs" Inherits="Moviestore2110_22894.tutorials.blockuser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
#gvs {
width:100%;
}
th {
background: #494e5d;
color: white;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
<div class="col-lg-12">
<h2>Search and block active users:</h2>
</div>
</div>
<asp:GridView ClientIDMode="Static" ID="gvs" CssClass="table table-striped table-bordered"
runat="server" AutoGenerateColumns="false" OnPreRender="gvs_PreRender" >
<Columns>
<asp:BoundField DataField="firstname" HeaderText="First Name" />
<asp:BoundField DataField="lastname" HeaderText="Last Name" />
<asp:BoundField DataField="username" HeaderText="Username" />
<asp:ImageField DataImageUrlField="imageurl" ControlStyle-Width="50"
DataImageUrlFormatString="~/images/{0}" HeaderText="imageurl" />
<asp:TemplateField HeaderText="Action">
<ItemTemplate>

<asp:LinkButton ID="lnkblock" CssClass="btn btn-outline-warning" OnClick="lnkblock_Click" CommandArgument='<%# Eval("User_id") %>' 
runat="server">Block</asp:LinkButton>
    <asp:LinkButton ID="lnkunblock" CssClass="btn btn-outline-warning" OnClick="lnkunblock_Click" CommandArgument='<%# Eval("User_id") %>' 
runat="server">Unblock</asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</asp:Content>
