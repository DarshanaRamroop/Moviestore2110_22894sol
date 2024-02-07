<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="moviestore2110_22876.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container"> 
 
        <div class="row form-group" runat="server">
            <div class="col-sm-6 " style="float: left">
                <h2>List of Movies</h2>
            </div>
            <div class="col-sm-3" style="float: right;">
                <div class="input-group">
<%--Trigger the TextChanged event--%>         
           <asp:DropDownList ID="ddlCategory" runat="server" 
CssClass="form-control" OnSelectedIndexChanged="TextBox1_TextChanged" AutoPostBack="true"></asp:DropDownList>&nbsp;
                </div>
            </div>
            <div class="col-sm-3" style="float: right;">
                <div class="input-group">
<%--generate text changed event--%>
                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" CssClass="form-control" OnTextChanged="TextBox1_TextChanged" Placeholder="Search..." />
                    <span class="input-group-addon">
                        <i class="fa fa-search"></i></span>
                </div>
            </div>
        </div>

        <%-- START AJAX CONTROL --%>
        <hr />
                <asp:ListView
                    ID="lvMovies"
                    runat="server" ItemPlaceholderID="itemPlaceholder" OnPagePropertiesChanging="lvMovies_PagePropertiesChanging" DataKeyNames="movie_id">

                    <ItemTemplate>

                        <div class="card" 
style="width: 200px; float: left; margin: 8px;">
                            <asp:Image runat="server" 
ImageUrl='<%# Eval("poster", "~/images/{0}")%>' ID="Image1" 
class="card-img-top" alt="Card image" Width="193px" Height="195px" />
                            <div class="card-body">
                                <h6 class="card-title"><%# Eval("moviename")%></h6>
                                <p class="card-text">
                                    by 
                        <asp:HyperLink runat="server" NavigateUrl='<%#Eval("movie_id","~/week12/moviedetails.aspx?id={0}")%>'>
                            <%#Eval("director").ToString() +": "+ Eval("moviename").ToString() %>
                        </asp:HyperLink>
                                </p>

                                <p class="card-text">
                                    <span><strong>Box Office Totals:<br />
                                    </strong></span><%# Eval("boxofficetotals","{0:c}")%>
                                </p>
<%--Eval movie_id as the commandargument--%>
  <asp:LinkButton ID="LinkButton1" runat="server" Text="Request access" OnClick="LinkButton1_Click"  CommandArgument='  <%# Eval("Movie_Id") %> ' CommandName="btnAccess" CssClass="btn btn-primary" />

                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholder" class="categoryContainer" runat="server">
                        </div>
                        <hr style="clear: both" />
                        <div class="text-right">
    <asp:DataPager ID="DataPager1" runat="server" PageSize="5">
    <Fields>
    <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="false" ShowFirstPageButton="true" />
    <asp:NumericPagerField />
    <asp:NextPreviousPagerField ButtonType="Link" ShowPreviousPageButton="false" ShowLastPageButton="true" />


</Fields>
</asp:DataPager>
</div>
                    </LayoutTemplate>
                </asp:ListView>
             <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    </div>

</asp:Content>
