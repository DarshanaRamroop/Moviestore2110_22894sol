<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="moviestore2110_22876.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><%: Title %></h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <h4>Create a new account.</h4>
    <hr />
    <asp:ValidationSummary runat="server" CssClass="text-danger" />
    <div class="mb-3">
        <asp:Label runat="server" AssociatedControlID="UserName"
            CssClass="form-label">User name</asp:Label>
        <asp:TextBox runat="server" ID="UserName" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
            CssClass="text-danger" ErrorMessage="The user name field is
required." />
    </div>
    <div class="mb-3">
        <asp:Label runat="server" AssociatedControlID="Password"
            CssClass="form-label">Password</asp:Label>
        <asp:TextBox runat="server" ID="Password" TextMode="Password"
            CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
            CssClass="text-danger" ErrorMessage="The password field is
required." />
    </div>
    <div class="mb-3">
        <asp:Label runat="server" AssociatedControlID="ConfirmPassword"
            CssClass="form-label">Confirm password</asp:Label>
        <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password"
            CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server"
            ControlToValidate="ConfirmPassword"
            CssClass="text-danger" Display="Dynamic"
            ErrorMessage="The confirm password field is required." />
        <asp:CompareValidator runat="server" ControlToCompare="Password"
            ControlToValidate="ConfirmPassword"
            CssClass="text-danger" Display="Dynamic"
            ErrorMessage="The password and confirmation password do not match." />
    </div>
    <div class="mb-3">
        <asp:Button runat="server" Text="Register"
            CssClass="col-12 btn btn-outline-primary btn-lg" />
    </div>
</asp:Content>
