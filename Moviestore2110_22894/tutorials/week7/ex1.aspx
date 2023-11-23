<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="ex1.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week7.ex1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvs" AllowPaging="true" PageSize="3" OnPageIndexChanging="gvs_PageIndexChanging" CellPadding="20" AutoGenerateColumns="false" runat="server">
        <Columns>
           
            <asp:ImageField DataImageUrlField="Poster"
DataImageUrlFormatString="~/images/{0}"
HeaderText="Poster" SortExpression="Poster" ControlStyle-Width="100" />
            
            <asp:TemplateField HeaderText="Box Office"> 
                <ItemTemplate>
                    <h5>
                    <em>
                        <%# Eval("Boxofficetotals", "{0:c}") %>
                    </em>
                    </h5>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:BoundField DataField="Director" HeaderText="Director" />
            
        <asp:HyperLinkField HeaderText="Movie Title"  DataTextField="Moviename" DataNavigateUrlFields="Movie_Id" ControlStyle-CssClass="btn btn-outline-success" DataNavigateUrlFormatString="details.aspx?Movie_Id={0}" />
        </Columns>
    </asp:GridView>
</asp:Content>