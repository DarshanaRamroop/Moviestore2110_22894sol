<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week5.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

<asp:Label ID="lblMsg" runat="server" Text=" " CssClass="text-
success"></asp:Label>

<hr />
<asp:HyperLink ID="HyperLink1"
NavigateUrl="~/tutorials\week5\viewusers.aspx" runat="server">View 
Users</asp:HyperLink>
<h4>Add, Update, Delete Records using a GridView</h4>
<asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
<table>
<tr>
<td>
<asp:Label ID="lblcatid" runat="server" Text="Category
ID"></asp:Label>
</td>
<td>

<asp:TextBox ID="txtCategoryId" runat="server" CssClass="form-
control" Enabled="false" />

</td>
</tr>
<tr>
<td>
<asp:Label ID="lblcname" runat="server" Text="Category
Name"></asp:Label>
</td>
<td>
<asp:TextBox ID="txtCategoryName" runat="server"
CssClass="form-control"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfvCategoryName"
runat="server" Text="*"
ControlToValidate="txtCategoryName" ForeColor="Red"
ValidationGroup="vgAdd" />
</td>


</tr>
<tr>
<td colspan="2">
<asp:Button ID="btnInsert" runat="server" 

Text="Insert" ValidationGroup="vgAdd" CssClass="btn btn-
outline-primary" Visible="false" OnClick="btnInsert_Click"  />

<asp:Button ID="btnUpdate" runat="server"

Text="Update" ValidationGroup="vgAdd" CssClass="btn btn-
outline-warning" Visible="false" OnClick="btnUpdate_Click"  />

<asp:Button ID="btnDelete" runat="server" CssClass="btn btn-outline-danger" OnClientClick="return confirm('Are you sure you want todelete this record?')" Text="Delete" ValidationGroup="vgAdd" OnClick="btnDelete_Click"/>




<asp:Button ID="btnCancel" runat="server"

Text="Cancel" CausesValidation="false" CssClass="btn btn-
outline-success" Visible="false" OnClick="btnCancel_Click"  />

</td>
</tr>
</table>
<br />
<!-- set the primary for the category table as the DataKeynames-->
<asp:GridView ID="gvs" DataKeyNames="Category_Id" AllowPaging="true" OnSelectedIndexChanged="gvs_SelectedIndexChanged" ClientIDMode="Static"
PageSize="5"  AutoGenerateColumns="false"
Width="500" runat="server">

<HeaderStyle BackColor="#9a9a9a" ForeColor="White" Font-Bold="true" Height="30" />

<AlternatingRowStyle BackColor="#f5f5f5" />
<Columns>
<asp:TemplateField>
<ItemTemplate>
<asp:LinkButton ID="lbtnSelect" runat="server" CssClass="btn
btn-outline-info" CommandName="Select" Text="Select" />
</ItemTemplate>
</asp:TemplateField>
<asp:TemplateField HeaderText="Category Name">
<ItemTemplate>



<!-- display the category name -->
<asp:Label ID="lblCatName" Text='<%#Eval("Category_Name")%>' runat="server" />
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView>
</div>
</asp:Content>

