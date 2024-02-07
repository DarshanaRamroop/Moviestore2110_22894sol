<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="reviews.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week13.reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.review td, .review th {
padding: 5px;
font: 14px Arial,Sans-Serif;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
<asp:FormView
ID="frmReview"
DataSourceID="srcReview" 
DefaultMode="Insert"
runat="server">
<InsertItemTemplate>
<asp:Label
ID="lblComment"
Text="Enter comments:"
AssociatedControlID="txtComment"
runat="server" />
<br />
<asp:TextBox
ID="txtComment"
Text='<%# Bind("Comment") %>'
TextMode="MultiLine"
Columns="50"
Rows="4"
runat="server" />
<br />
<asp:Button
ID="btnInsert"
Text="Post Review"
CommandName="Insert" in
runat="server" />
</InsertItemTemplate>
</asp:FormView>
<hr />
<asp:GridView
ID="gvs"
DataSourceID="srcReview"

CssClass="review"
runat="server" />
<%--Invoke the component and the methods GetEntries() and AddEntry() --%>


        <asp:ObjectDataSource
ID="srcReview" TypeName="DataAccessLayer" OnInserting="srcReview_Inserting" SelectMethod="GetEntries" InsertMethod="AddEntry"
runat="server" />
               
</div>
</asp:Content>

