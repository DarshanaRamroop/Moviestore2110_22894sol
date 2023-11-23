<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week7.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-4 bg-light">
            <h5>Search Movies </h5>
            <div class="my-3">
                <asp:TextBox ID="txtmovieid" OnTextChanged="txtmovieid_TextChanged" Placeholder="Movie Id"
                    CssClass="form-control" runat="server" AutoPostBack="true"></asp:TextBox>
            </div>
            <div class="my-3">
                <asp:TextBox ID="txtmovietitle" Placeholder="Movie Title"
                    CssClass="form-control" runat="server" AutoPostBack="true"></asp:TextBox>
            </div>
            <div class="my-3">
                <asp:TextBox ID="txtdirector" Placeholder="Director"
                    CssClass="form-control" runat="server" AutoPostBack="true"></asp:TextBox>
            </div>
            <div class="my-3">
                <asp:DropDownList ID="ddlcategory" CssClass="form-control"
                    runat="server" AutoPostBack="true">
                    <asp:ListItem>All Categories</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-5 offset-lg-1">
            <asp:GridView ID="gvs" runat="server" CellPadding="10"
                CssClass="border border-0 mt-4 bg-light" HeaderStyle-HorizontalAlign="Center">
            </asp:GridView>
        </div>
    </div>
</asp:Content>

