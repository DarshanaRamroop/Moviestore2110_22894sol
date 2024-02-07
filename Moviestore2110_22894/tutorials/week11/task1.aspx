<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task1.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week11.task1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .content {
        width: 1100px;
        border: solid 1px black;
        background-color: #eeeeee;
    }

    .movies {
        margin: 20px 10px;
        padding: 10px;
        border: dashed 2px black;
        background-color: white;
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--
 Redirect to rating.aspx with a querystring for the Movie ID
 -->
       <div class="row">
        <div class="content">
            <asp:Repeater
                ID="rptMovies"
                runat="server">
                <ItemTemplate>
                    <div class="movies">
                        <div class="row">
                            <div class="col-sm-8">
                                <h1><%#Eval("Moviename") %></h1>
                                <b>Movie Description:</b> <%#
Eval("Description") %>
                            </div>
                            <div class="col-sm-3 offset-sm-1">
                                <asp:Image ID="imgposter" ImageUrl='<%#
Eval("Poster", "~/images/{0}") %>'
                                    CssClass="img-fluid" Width="170"
                                    runat="server" />
                                <br />
                                <asp:LinkButton ID="lnkmovdetails"
                                    runat="server" Text="Rate Movie"
                                    PostBackUrl='<%# Eval("Movie_Id",
"~/tutorials/week13/rating.aspx?id={0}") %>'
                                    CssClass="mt-2 btn btn-info btnsm"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
