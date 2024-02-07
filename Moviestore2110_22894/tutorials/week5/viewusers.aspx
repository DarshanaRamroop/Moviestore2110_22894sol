<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="viewusers.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week5.viewusers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.column1 {
border: 0px solid #4B2543;
width: 400px;
float: left;
}
.column1 td {
padding: 10px;
}
.column1 tr {
border-bottom: 5px solid black;
border-collapse: collapse;
}
.column2 {
width: 200px;
float: left;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Click Image to view user status</h1>
<div class="column1">
<!--
Add the imageurl field and set path to images folder: ~/images/{0}
Add the user_id field and set redirect path to
viewusers.aspx?ID={0}
-->
    <a href="viewusers.aspx">viewusers.aspx</a>
<asp:DataList
ID="dlstuser"
runat="server">
<ItemTemplate>
<asp:ImageButton ID="ImageButton1" runat="server"
Width="100" Height="100"
 />

<div class="column2">
<asp:DataList
ID="dlstuserdetails"
Visible="false"
runat="server">
<ItemTemplate>
<div class="card border-primary">
<div class="card-header text-center fa-3x bg-dark
text-white">
<!-- Eval the image -->

<asp:Image runat="server" ImageUrl='' ID="Image1" CssClass="card-img-
top" AlternateText="Card image" Width="50px" Height="50px" />

<br />
      <%# Eval("firstname") %> 
<!-- Eval the first name -->
<!-- Eval the last name -->
    <%# Eval("lastname") %> 
</div>
<!-- Eval the email and status -->
   
<div class="card-body"><b>Email:</b></div>
     <%# Eval("email") %> 
<div class="card-footer bg-info"><b>Account
Status: <%# Eval("status") %> </b></div>
</div>
</ItemTemplate>
</asp:DataList>
</div>

<br />
</ItemTemplate>
</asp:DataList>

   
</div>

</asp:Content>
