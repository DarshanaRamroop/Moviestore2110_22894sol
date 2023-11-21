<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="stats.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week6.stats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
<div class="row">
<div class="col-xl-3 col-md-6">
<div class="card bg-primary text-white mb-4">
<div class="card-body">Movies in store:</div>

<div class="card-footer d-flex align-items-center justify-content-
between">

<asp:HyperLink ID="hymovies" runat="server" CssClass="small
text-white stretched-link"></asp:HyperLink>

<div class="small text-white"><i class="fas fa-angle-
right"></i></div>

</div>
</div>
</div>
<div class="col-xl-3 col-md-6">
<div class="card bg-warning text-white mb-4">
<div class="card-body">Warning Card</div>

<div class="card-footer d-flex align-items-center justify-content-
between">

<a class="small text-white stretched-link" href="#">View
Details</a>

<div class="small text-white"><i class="fas fa-angle-
right"></i></div>

</div>
</div>


</div>
<div class="col-xl-3 col-md-6">
<div class="card bg-success text-white mb-4">
<div class="card-body">Success Card</div>

<div class="card-footer d-flex align-items-center justify-content-
between">

<a class="small text-white stretched-link" href="#">View
Details</a>

<div class="small text-white"><i class="fas fa-angle-
right"></i></div>

</div>
</div>
</div>
<div class="col-xl-3 col-md-6">
<div class="card bg-danger text-white mb-4">
<div class="card-body">Danger Card</div>

<div class="card-footer d-flex align-items-center justify-content-
between">

<asp:HyperLink ID="hycat" runat="server" CssClass="small text-
white stretched-link"></asp:HyperLink>

<div class="small text-white"><i class="fas fa-angle-
right"></i></div>

</div>
</div>
</div>
</div>
</div>
</asp:Content>
