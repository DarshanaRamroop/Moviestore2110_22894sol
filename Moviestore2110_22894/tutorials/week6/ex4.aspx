<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="ex4.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week6.ex4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <section>
<div class="container">
<div class="row border border-2 m-2 p-2">

<div class="col-lg-4 col-md-6 d-flex align-items-
stretch">

<div>
<asp:Image ID="imgposter"  ImageUrl='<%#Eval("Poster","~/images/{0}") %>'
CssClass="img-fluid" Width="150"
Height="200" runat="server" />
</div>
</div>
<div class="col-lg-8 col-md-6">
<p>
<b>Moviename</b> ~<%#Eval("Moviename") %>
<b>BOX Totals: </b>~<%#Eval("Boxofficetotals") %>


</p>

<p><%#Eval("Description",, "{0:c}") %></p>~

<div>
<asp:LinkButton ID="lnkmovdetails"
runat="server" Text="Subscribe" 
CssClass="btn btn-outline-info mb-4"></asp:LinkButton>
</div>
</div>
</div>
</div>
</section>
        </ItemTemplate>
    </asp:Repeater>

    <section>
<div class="container">
<div class="row border border-2 m-2 p-2">

<div class="col-lg-4 col-md-6 d-flex align-items-
stretch">

<div>
<asp:Image ID="imgposter" 
CssClass="img-fluid" Width="150"
Height="200" runat="server" />
</div>
</div>
<div class="col-lg-8 col-md-6">
<p>
<b>Moviename</b> -
<b>BOX Totals: </b>
</p>

<p>Description</p>

<div>
<asp:LinkButton ID="lnkmovdetails"
runat="server" Text="Subscribe" 
CssClass="btn btn-outline-info mb-4"></asp:LinkButton>
</div>
</div>
</div>
</div>
</section>
</asp:Content>
