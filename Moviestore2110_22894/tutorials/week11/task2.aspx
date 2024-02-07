<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week11.task2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
    .content {
        border: solid 1px black;
        background-color: #424242;
        color: white;
    }

    .movies {
        width: 800px;
        border-collapse: collapse;
        text-align: justify;
        margin: auto;
    }

        .movies th, .movies td {
            padding: 10px;
            border-bottom: 1px solid #424242;
        }

    .item {
        background-color: #990055;
    }

    .alternating {
        background-color: #A9559D;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
     <div class="content">
         <asp:Repeater
             ID="rptMovies"
             runat="server">
             <HeaderTemplate>
                 <table class="movies">
                     <tr>
                         <th>Movie Title</th>
                         <th>Description</th>
                         <th>Box Office Totals</th>
                     </tr>
             </HeaderTemplate>
             <ItemTemplate>
                 <tr class="item">
                     <td><%#Eval("Moviename") %></td>
                     <td><%#Eval("Description") %></td>
                     <td><%#Eval("Boxofficetotals","{0:c}") %></td>
                 </tr>
             </ItemTemplate>
             <AlternatingItemTemplate>
                 <tr class="alternating">
                     <td><%#Eval("Moviename") %></td>
                     <td><%#Eval("Description") %></td>
                     <td><%#Eval("Boxofficetotals","{0:c}") %></td>
                 </tr>
             </AlternatingItemTemplate>
             <FooterTemplate>
                 </table>
             </FooterTemplate>
         </asp:Repeater>
     </div>
 </div>
</asp:Content>
