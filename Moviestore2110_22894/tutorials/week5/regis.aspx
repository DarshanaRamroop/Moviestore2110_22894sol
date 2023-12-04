<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="regis.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week5.regis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             <div id="container">
        <div id="leftSide">
            <fieldset>
                <legend>Personal Details</legend>
                <div class="form">
                    <asp:Label ID="lblFname" runat="server" Text="First Name:"
                        AssociatedControlID="txtFname"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtFname" runat="server" CssClass="formcontrol"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqFname"
                            ControlToValidate="txtFname" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Label ID="lblLname" runat="server" Text="Last Name:"
                        AssociatedControlID="txtLname"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtLname" runat="server" CssClass="formcontrol"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqLname"
                            ControlToValidate="txtLname" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Label ID="lblDOB" runat="server" Text="Date Of Birth"
                        AssociatedControlID="txtDob"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtDob" runat="server" TextMode="Date"
                            CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqDob" runat="server"
                            ErrorMessage="Required"
                            ControlToValidate="txtDob"></asp:RequiredFieldValidator><br />
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Contact Details</legend>
                <div class="form">
                    <asp:Label ID="lblCountry" runat="server" Text="Country"
                        AssociatedControlID="ddlCountry"></asp:Label>
                    <div class="div_texbox">
                        <asp:DropDownList ID="ddlCountry" runat="server"
                            CssClass="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            ControlToValidate="ddlCountry" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Label ID="lblStreet" runat="server" Text="Street"
                        AssociatedControlID="txtStreet"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtStreet" runat="server" CssClass="formcontrol"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                            ControlToValidate="txtStreet" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Label ID="lblEmail" runat="server" Text="Email"
                        AssociatedControlID="txtEmail"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="formcontrol"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqEmail"
                            ControlToValidate="txtEmail" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="RegEmail" runat="server"
                            ControlToValidate="txtEmail" ValidationExpression="^[a-zA-Z][\w\.-]*[a-zAZ0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$"
                            ErrorMessage="Not Valid"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Login Details</legend>
                <div class="form">
                    <asp:Label ID="lblUsername" runat="server" Text="Username"
                        AssociatedControlID="txtUsername"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtUsername" runat="server"
                            CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqUsername"
                            ControlToValidate="txtUsername" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="regUsername"
                            ControlToValidate="txtUsername" ValidationExpression="^[a-zA-Z]{5,}$"
                            runat="server" ErrorMessage="Username must be minimum 5
characters"></asp:RegularExpressionValidator>
                    </div>
                    <asp:Label ID="lblPassword" runat="server" Text="Password"
                        AssociatedControlID="txtPassword"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtPassword" runat="server"
                            TextMode="Password" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqPassword"
                            ControlToValidate="txtPassword" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator><br />
                        
                    </div>
                    <asp:Label ID="lblCpassword" runat="server" Text="Confirm
Password"
                        AssociatedControlID="txtCpassword"></asp:Label>
                    <div class="div_texbox">
                        <asp:TextBox ID="txtCpassword" TextMode="Password"
                            runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqCpassword"
                            ControlToValidate="txtCpassword" runat="server"
                            ErrorMessage="Required"></asp:RequiredFieldValidator><br />
                        <asp:CompareValidator ID="conPassword" runat="server"
                            ControlToCompare="txtPassword" ControlToValidate="txtCpassword"
                            ErrorMessage="Password does not match"></asp:CompareValidator>
                    </div>
                    <asp:Label ID="Label1" runat="server" Text="Upload
picture"></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="formcontrol" />
                </div>
            </fieldset>
            <br />
            <fieldset>
                <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" CssClass="btn btnoutline-primary btn-block" Text="Register" />
                <asp:Button OnClick="btnClear_Click" ID="btnClear" runat="server" CssClass="btn btnoutline-danger btn-block" Text="Clear All" CausesValidation="false" />
                <br />
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            </fieldset>
        </div>
    </div>
</asp:Content>
