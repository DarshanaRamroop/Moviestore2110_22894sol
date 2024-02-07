﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="logincrcl.ascx.cs" Inherits="Moviestore2110_22894.tutorials.week5.logincrcl" %>


<asp:Label ID="lblUsername" runat="server"><span class="fas fa-user"></span> User
Name</asp:Label>
<div class="div_texbox">
    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
        SetFocusOnError="true" ErrorMessage="*"
        ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
</div>
<asp:Label ID="lblPassword" runat="server" Text="Password">
<span class="fas fa-lock"></span> Password</asp:Label>
<div class="div_texbox">
    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"
        CssClass="form-control"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
        SetFocusOnError="true" ErrorMessage="*"
        ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
</div>
<asp:CheckBox ID="chkremem" runat="server" Text="Remember me" />
