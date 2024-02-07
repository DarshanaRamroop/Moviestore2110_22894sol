<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="approvesubscription.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week12.approvesubscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h2>Approve / Reject Subscription: </h2>
    <asp:GridView ID="gvs" ClientIDMode="Static" CssClass="table table-striped 
table-bordered"
        runat="server" AutoGenerateColumns="false" OnPreRender="gvs_PreRender">
        <Columns>
            <asp:BoundField DataField="fname" HeaderText="First Name" />
            <asp:BoundField DataField="lname" HeaderText="Last Name" />
            <asp:BoundField DataField="uname" HeaderText="Username" />
            <asp:ImageField DataImageUrlField="image"
                DataImageUrlFormatString="~/images/{0}" ControlStyle-Width="100" HeaderText="Profile
Pic" />
            <asp:BoundField DataField="accdate" HeaderText="Request Date&Time" />
            <asp:BoundField DataField="mname" HeaderText="Movie name" />
            <asp:BoundField DataField="tumstatus" HeaderText="Access Status" />
            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <%--store the movie id in the hiddenfield--%>
                    <asp:HiddenField ID="hidmov" runat="server" Value='<%# Eval("mid") %>' />
                    <%--store the user id in the LinkButtons--%>
                    <asp:LinkButton ID="lnkdeny"  OnClick="lnkdeny_Click" CommandArgument='<%# Eval("User_Id") %>'  CssClass="btn btn-danger" runat="server" >Deny Access</asp:LinkButton><br />
                    <br />
                    <asp:LinkButton ID="lnkgrant"  OnClick="lnkgrant_Click" CommandArgument='<%# Eval("User_Id") %>' CssClass="btn btn-success"
                        runat="server">Grant Access</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
