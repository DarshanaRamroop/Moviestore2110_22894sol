<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task3.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week11.task3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  <style>
     .xyz {
         opacity: 0.4;
     }
     .xyz:hover{
         opacity:1 unset !important;
         
     }
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!--
Redirect to subcription.aspx page with a query string for the Movie ID
-->
     <div>
       <h1>
           <asp:Label ID="lblcount" runat="server"></asp:Label></h1>
       <asp:DataList
           ID="dlstMovies"
           runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
           <ItemTemplate>
               <div class="card bg-warning text-white h-100" style="margin:  8px;">
                   <asp:Image runat="server" ImageUrl='<%# Eval("poster", "~/images/{0}")%>' ID="Image1"
                       CssClass="card-img-top img-fluid xyz" AlternateText="Card image" Width="190px" Height="200px" />
                   <div class="card-body">
                       <h6 class="card-title"><%# Eval("moviename")%></h6>
                       <p class="card-text">
                           by
<asp:HyperLink CssClass="btn btn-outline-primary stretched-link" Text="Subscribe"
    runat="server" NavigateUrl='<%#Eval("Movie_Id","~/tutorials/week11/subscribe.aspx?id={0}") %>'>
</asp:HyperLink>
                       </p>
                       <p class="card-text">
                           <span><strong>Box Office Totals:<br />
                           </strong></span><%# Eval("boxofficetotals","{0:c}")%>
                       </p>
                   </div>
               </div>
           </ItemTemplate>
       </asp:DataList>
   </div>
</asp:Content>
