<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="viewmovieschedule.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week12.viewmovieschedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
<div class="col-lg-12">
<h2>View Movie Schedule</h2>
</div>
</div>
<div class="tbldiv">
<asp:GridView ID="gvs2" CssClass="table table-striped table-bordered" OnPreRender="gvs2_PreRender" ClientIDMode="Static"
runat="server" AutoGenerateColumns="false" PageSize="2">
<Columns>
<asp:BoundField DataField="mname" HeaderText="Movie Title" />
<asp:BoundField DataField="cat_name" HeaderText="Category" />
<asp:ImageField DataImageUrlField="poster" DataImageUrlFormatString="~/images/{0}" HeaderText="Poster" />
<asp:BoundField DataField="Schedule" HeaderText="Schedule" HtmlEncode="false" DataFormatString="<a href='{0}' data-toggle='lightbox' data-caption='schedule'>View Schedule</a>" />
<asp:BoundField DataField="box" HeaderText="Box Office" />
<asp:TemplateField HeaderText="Action">
<ItemTemplate>
<%-- Assign the Movie_Id to the link button Command Argument --%>
<asp:LinkButton CssClass="btn btn-outline-info" runat="server" CommandArgument='<%# Eval("Movie_id") %>' OnClick="Unnamed_Click" ToolTip="Delete Movie"><span class="fas fa-trash"></span></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</div>
</asp:Content>
