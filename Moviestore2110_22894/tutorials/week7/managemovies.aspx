<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="managemovies.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week7.managemovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-horizontal">
        <h5>CRUD Operations to manage movies</h5>
        <hr />
        <div class="form-group row justify-content-center">
            <asp:Label runat="server" CssClass="col-md-2 col-form-label">Select a Category</asp:Label>
            <div class="col-md-8">
                <asp:DropDownList ID="ddlcat" runat="server"
                    CssClass="form-control">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <asp:Label runat="server"
                CssClass="col-md-2 col-form-label"></asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtMovieId" Visible="false"
                    CssClass="form-control" />
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <asp:Label runat="server" CssClass="col-md-2 col-form-label">Movie
name</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtmoviename"
                    CssClass="form-control" />
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <asp:Label runat="server"
                CssClass="col-md-2 col-form-label">Director</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtdirector"
                    CssClass="form-control" />
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <asp:Label runat="server" CssClass="col-md-2 col-form-label">Box
Office Totals</asp:Label>
            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtbox"
                    CssClass="form-control" />
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <asp:Label runat="server"
                CssClass="col-md-2 col-form-label">Description</asp:Label>

            <div class="col-md-8">
                <asp:TextBox runat="server" ID="txtdesc" TextMode="Multiline"
                    CssClass="form-control" />
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <asp:Label runat="server"
                CssClass="col-md-2 col-form-label">Poster</asp:Label>
            <div class="col-md-8">
                <asp:FileUpload ID="fuposter" runat="server" CssClass="" />
                <asp:Image ID="Image1" runat="server" Visible="false" Width="75"
                    Height="100" />
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <asp:Label runat="server"
                CssClass="col-md-2 col-form-label">Schedule</asp:Label>
            <div class="col-md-8">
                <asp:FileUpload ID="fuschedule" runat="server" CssClass="" />
                <asp:Image ID="Image2" runat="server" Visible="false" Width="75"
                    Height="100" />
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <asp:Label runat="server"
                CssClass="col-md-2 col-form-label"></asp:Label>
            <div class="col-md-8">
                <div class="form-check-inline">
                    <asp:CheckBox runat="server" ID="chkstatus"
                        CssClass="form-check-input" />
                    <asp:Label runat="server"
                        CssClass="form-check-label">Status</asp:Label>
                </div>
            </div>
        </div>
        <div class="form-group row justify-content-center">
            <div class="offset-md-2 col-md-8">
                <asp:Button runat="server" ID="btnAddmovies" Text="Add Movie" OnClick="btnAddmovies_Click"
                    CssClass="btn btn-block btn-outline-primary" />
                <asp:Button runat="server" ID="btnupdate" Text="Update Movie" OnClick="btnupdate_Click"
                    Visible="false" CssClass="btn btn-block btn-outline-primary" />
                <asp:Button runat="server" ID="btndelete" OnClientClick="Are you sure?" Text="Delete Movie" OnClick="btndelete_Click"
                    Visible="false" CssClass="btn btn-block btn-outline-primary" />
                <asp:Button runat="server" ID="btncancel"  Text="Cancel" OnClick="btncancel_Click"
                    Visible="false" CssClass="btn btn-block btn-outline-primary" />
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
    <hr />
    <asp:GridView ID="gvs" OnSelectedIndexChanged="gvs_SelectedIndexChanged" DataKeyNames="Movie_Id" AutoGenerateColumns="false" CssClass="border-0"
        ClientIDMode="Static" Width="800" runat="server">
       
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lbtnSelect" runat="server"
                        CssClass="btn btn-info" CommandName="Select" Text="Select" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Movie Name">
                <ItemTemplate>
                    <!-- display the movie name -->
                    <asp:Label ID="lblMovieName" Text='<%#Eval("Moviename")%>'
                        runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <%-- add an imagefield here to display the poster--%>
        </Columns>
    </asp:GridView>
</asp:Content>
