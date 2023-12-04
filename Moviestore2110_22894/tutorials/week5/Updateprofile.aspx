<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="Updateprofile.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week5.Updateprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
    <div id="container">
        <div id="leftSide">
            <fieldset>
                <legend>Profile Details</legend>
                <asp:Repeater
                    ID="rptimg" runat="server">
                    <ItemTemplate>
                        <asp:Image ID="ImageButton1" runat="server"
                            Width="193px" Height="195px"
                            ImageUrl='<%# Eval("imageurl ", "~/images/{0}")%>' />
                    </ItemTemplate>
                </asp:Repeater>
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
            <br />
            <fieldset>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click"
                    Text="Update Profile"
                    CssClass="btn btn-outline-primary btn-block" />
            </fieldset>
        </div>
    </div>
</asp:Content>

