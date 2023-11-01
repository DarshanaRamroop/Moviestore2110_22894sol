<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="formdemo.aspx.cs" Inherits="moviestore2110_22876.tutorials.week3.formdemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h4>Working with Server controls</h4>
    <hr />
    <div class="mb-3">


        <div class="mb-3">
            <asp:Label runat="server"
                CssClass="form-label">Title:

            </asp:Label>

            <div class="form-check-inline">
                <asp:RadioButton runat="server" GroupName="title" ID="radMr" />
                <asp:Label runat="server"
                    CssClass="form-check-label">Mr</asp:Label>
            </div>
            <div class="form-check-inline">
                <asp:RadioButton runat="server" GroupName="title" ID="radMrs" />
                <asp:Label runat="server"
                    CssClass="form-check-label">Mrs</asp:Label>
            </div>
            <div class="form-check-inline">
                <asp:RadioButton GroupName="title" runat="server" ID="radMs" />
                <asp:Label runat="server"
                    CssClass="form-check-label">Ms</asp:Label>
            </div>
        </div>
        <asp:Label runat="server"
            CssClass="form-label">First Name</asp:Label>

        <asp:TextBox runat="server" ID="txtFname"
            CssClass="form-control" />

    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Last Name</asp:Label>

        <asp:TextBox runat="server" ID="txtLname"
            CssClass="form-control" />

    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Work Experience
        <span id="spWrkExp" runat="server" class="badge bg-primary badge-pill rounded"></span>
        </asp:Label>

        <asp:TextBox runat="server" ID="txtWrkExp" OnTextChanged="txtWrkExp_TextChanged" TextMode="MultiLine" AutoPostBack="true"
            CssClass="form-control" />

    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Date Of Birth</asp:Label>

        <asp:TextBox runat="server" ID="txtdob" TextMode="Date"
            CssClass="form-control" />

    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Email</asp:Label>

        <asp:TextBox runat="server" ID="txtEmail"
            CssClass="form-control" />

    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Username</asp:Label>

        <asp:TextBox runat="server" ID="txtusername"
            CssClass="form-control" />

    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Password</asp:Label>

        <asp:TextBox runat="server" ID="txtPass" TextMode="Password"
            CssClass="form-control" />

    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Confirm Password</asp:Label>

        <asp:TextBox runat="server" ID="txtCpass" TextMode="Password"
            CssClass="form-control" />

    </div>

    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">States </asp:Label>
        <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
            <asp:ListItem Value="-1">Choose State</asp:ListItem>
            <asp:ListItem Value="1">Texas</asp:ListItem>
            <asp:ListItem Value="2">Ohio</asp:ListItem>
            <asp:ListItem Value="3">Florida</asp:ListItem>
        </asp:DropDownList>


    </div>

    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Zip Code</asp:Label>
        <asp:DropDownList ID="ddlZipCode" runat="server" CssClass="form-control">
        </asp:DropDownList>
    </div>

    <div class="mb-3">

        <asp:Label runat="server"
            CssClass="form-label">Country </asp:Label>
        <asp:DropDownList ID="ddlCountries" OnSelectedIndexChanged="ddlCountries_SelectedIndexChanged" AutoPostBack="true" runat="server" CssClass="form-control"></asp:DropDownList>
        <asp:Label ID="lblCountry" runat="server"></asp:Label>
    </div>


    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">How did you here about us?
        </asp:Label>

        <div class="form-check-inline">
            <asp:CheckBox runat="server" AutoPostBack="true" OnCheckedChanged="chk1_CheckedChanged" ID="chk1" />
            <asp:Label runat="server"
                CssClass="form-check-label">Email</asp:Label>
            <asp:Image ID="imgEmail" runat="server" />
        </div>
        <div class="form-check-inline">
            <asp:CheckBox runat="server" OnCheckedChanged="chk2_CheckedChanged" AutoPostBack="true" ID="chk2" />
            <asp:Label runat="server"
                CssClass="form-check-label">Social Network</asp:Label>
            <asp:Image ID="imgSocial" runat="server" />

        </div>
    </div>


    <div class="mb-3">
        <asp:Button runat="server" Text="Register" OnClick="btnAddProd_Click"
            ID="btnAddProd"
            CssClass="col-12 btn btn-outline-primary btn-lg" />
    </div>
    <div class="mb-3">
        <asp:LinkButton ID="lnkExit" runat="server" CssClass="col-12 btn btn-outline-info btn-lg" OnClick="lnkExit_Click">Exit</asp:LinkButton>
        </div>
    <div class="mb-3">
        <asp:LinkButton ID="lnkReset" OnClientClick="return confirm('Are you sure?')" CssClass="col-12 btn btn-outline-warning btn-lg" OnClick="lnkReset_Click" runat="server">Reset</asp:LinkButton>
        </div>
    <div class="mb-3">
        <asp:ImageButton ID="imgButton" PostBackUrl="~/register.aspx" ImageUrl="~/images/register.png" runat="server" />
    </div>

</asp:Content>
