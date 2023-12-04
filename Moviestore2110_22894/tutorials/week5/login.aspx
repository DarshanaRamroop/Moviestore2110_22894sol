<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week5.login" %>

<%@ Register Src="~/tutorials/week5/logincrcl.ascx" TagPrefix="user" TagName="logincrcl" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="container">
        <div id="leftSide">
            <fieldset>
                <legend>Member Login</legend>
                <div class="form">
                    <user:logincrcl ID="userLogin" runat="server" ValidationGroup="login" />
                    <br />
                    <br />
                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click"
                        CssClass="btn btn-outline-primary" Text="Log in" ValidationGroup="login" />
                </div>
            </fieldset>
            <fieldset>
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label><br />
                <asp:Button ID="btnRegister" runat="server" 
                    PostBackUrl="~/tutorials/week5/register.aspx" Text="Don’t have an account yet? Join now"
                    CausesValidation="false" CssClass="btn btn-outline-warning" /><br />
            </fieldset>
        </div>
    </div>
</asp:Content>
