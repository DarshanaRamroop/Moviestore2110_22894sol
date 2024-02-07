<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task5.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week11.task5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
    .content {
        width: 700px;
        padding: 10px;
        border: solid 1px black;
        background-color: white;
    }

    a {
        color: blue;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="content">
        <!-- This repeater will be used to display list of categories:
change the attributes name and add a query string to pass the Category ID -->
        <asp:Repeater
            ID="rptMovieCategories"
            runat="server">
            <ItemTemplate>
                <asp:HyperLink
                    ID="lnkMenu"
                    Text='<%#Eval("Category_Name")%>'
                    NavigateUrl='<%#Eval("Category_Id","task5.aspx?id={0}")%>'
                    runat="server" />
            </ItemTemplate>
            <SeparatorTemplate>
                &nbsp;|&nbsp;
            </SeparatorTemplate>
        </asp:Repeater>
        <hr />
        <!-- This DataList will be used to display list of movies depending on which category is selected from
the above Repeater -->
        <asp:DataList
            ID="dlstMovieDetails"
            RepeatColumns="1"
            runat="server">
            <ItemTemplate>
                <div class="card bg-warning text-white h-50"
                    style="width: 600px; float: left; margin: 30px;">
                    <asp:Image runat="server" ImageUrl='<%# Eval("poster", "~/images/{0}")%>'
                        ID="Image1" CssClass="card-img-top mx-auto" Width="190px" Height="200px" />
                    <div class="card-body h">
                        <h2 class="card-title"><%# Eval("moviename")%></h2>
                        <p class="card-text text-dark">
                            Movie Description:
 <%#Eval("Description") %>
                        </p>
                        <p class="card-text">
                            <span><strong>Box Office Totals:<br />
                            </strong></span>
                            <span class="text-dark">
                                <%# Eval("boxofficetotals","{0:c}")%>
                            </span>
                        </p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
