<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="moviestore2110_22876.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2><%: Title %></h2>
    <h4>Use a local account to log in.</h4>
    <hr />
    <asp:PlaceHolder runat="server" ID="ErrorMessage"
        Visible="false">
        <p class="text-danger">
            <asp:Literal runat="server" ID="FailureText" />
        </p>
    </asp:PlaceHolder>
    <div class="mb-3">
        <asp:Label runat="server"
            AssociatedControlID="UserName" CssClass="form-label">
 User name</asp:Label>
        <asp:TextBox runat="server" ID="UserName"
            CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server"
            ControlToValidate="UserName"
            CssClass="text-danger"
            ErrorMessage="The user name field is required." />
    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            AssociatedControlID="Password"
            CssClass="form-label">Password</asp:Label>
        <asp:TextBox runat="server" ID="Password"
            TextMode="Password" CssClass="form-control" />
        <asp:RequiredFieldValidator runat="server"
            ControlToValidate="Password" CssClass="text-danger"
            ErrorMessage="The password field is required." />
    </div>
    <div class="form-check mb-3">
        <asp:CheckBox runat="server" ID="RememberMe"
            CssClass="form-check-input" />
        <asp:Label runat="server" CssClass="form-check-label"
            AssociatedControlID="RememberMe">Remember me?</asp:Label>
    </div>
    <div class="mb-3">
        <asp:Button runat="server" Text="Log in"
            CssClass="col-12 btn btn-outline-success btn-lg" />
    </div>
    <p>
        <asp:Button ID="btnRegister" runat="server"
            PostBackUrl="~/register.aspx" Text="Don’t have an account yet?
Join now"
            CausesValidation="false" CssClass="btn btn-warning" /><br />
    </p>
</asp:Content>
