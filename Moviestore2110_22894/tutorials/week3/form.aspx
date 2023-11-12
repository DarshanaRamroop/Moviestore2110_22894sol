<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
function pass_var(source, args) {
    if (args.Value.length > 7)
    args.IsValid = true;
    else
    args.IsValid = false;
}   
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h4>Working with Server controls</h4>
    <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="BulletList" HeaderText="Errors in form are: " ShowMessageBox="true" ShowSummary="true" ForeColor="Red"  runat="server" />
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
        <asp:RequiredFieldValidator ID="rfvFname" runat="server" ErrorMessage="First Name is Mandatory" ControlToValidate="txtFname" Display="Dynamic" Text="Required!" SetFocusOnError="true"></asp:RequiredFieldValidator>

    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Last Name</asp:Label>

        <asp:TextBox runat="server" ID="txtLname"
            CssClass="form-control" />
        <asp:RequiredFieldValidator ID="rfvLname" runat="server" ErrorMessage="Last Name is Mandatory" ControlToValidate="txtLname" Display="Dynamic" Text="Required!" SetFocusOnError="true"></asp:RequiredFieldValidator>

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
          <asp:RangeValidator ID="rvDOB" runat="server" ErrorMessage="DOB out of Range"  ControlToValidate="txtdob" Display="Dynamic" Text="Incorrect!" SetFocusOnError="true" ></asp:RangeValidator>
    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Email</asp:Label>

        <asp:TextBox runat="server" ID="txtEmail"
            CssClass="form-control" />
        <asp:RegularExpressionValidator ID="CompareValidator2" runat="server" ErrorMessage="Email is Wrong"  ControlToValidate="txtEmail" Type="Integer" ValidationExpression="^[a-z0-9][-a-z09._]+@([-a-z0-9]+[.])+[a-z]{2,5}$" Operator="DataTypeCheck" Display="Dynamic" Text="Incorrect!" SetFocusOnError="true" ></asp:RegularExpressionValidator>
    </div>
    <div class="mb-3">
    <asp:Label runat="server"
        CssClass="form-label">Mobile</asp:Label>

    <asp:TextBox runat="server" ID="txtMobile"
        CssClass="form-control" />
         <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Wrong Data Type"  ControlToValidate="txtMobile" Type="Integer" Operator="DataTypeCheck" Display="Dynamic" Text="Incorrect!" SetFocusOnError="true" ></asp:CompareValidator>
         <asp:RegularExpressionValidator ID="RegexValidatorMobile" runat="server"
        ErrorMessage="Mobile number should be 8 digits" ControlToValidate="txtMobile"
        ValidationExpression="\d{8}" Display="Dynamic" Text="Mobile number should be 8 digits!" SetFocusOnError="true" />

</div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Username</asp:Label>

        <asp:TextBox runat="server" ID="txtusername"
            CssClass="form-control" />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is Wrong"  ControlToValidate="txtEmail" Type="Integer" ValidationExpression="\w{5,10}" Operator="DataTypeCheck" Display="Dynamic" Text="Incorrect!" SetFocusOnError="true" ></asp:RegularExpressionValidator>
    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Password</asp:Label>

        <asp:TextBox runat="server" ID="txtPass" TextMode="Password"
            CssClass="form-control" />

     <asp:CustomValidator ID="CustomValidator1" runat="server" ValidateEmptyText="true" ErrorMessage="Password has to be between 7 to 12 characters" ClientValidationFunction="pass_var" ControlToValidate="txtPass" SetFocusOnError="true" ForeColor="Green" Display="Dynamic" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
    </div>
    <div class="mb-3">
        <asp:Label runat="server"
            CssClass="form-label">Confirm Password</asp:Label>

        <asp:TextBox runat="server" ID="txtCpass" TextMode="Password"
            CssClass="form-control" />
        <asp:CompareValidator ID="RangeValidator1" runat="server" ErrorMessage="Password does not match"  ControlToValidate="txtCpass" Type="String" Operator="Equal" ControlToCompare="txtPass" Display="Dynamic" Text="Incorrect!" SetFocusOnError="true" ></asp:CompareValidator>
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
        <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="State is Mandatory" ControlToValidate="ddlState" Display="Dynamic" InitialValue="-1" Text="Required!" SetFocusOnError="true"></asp:RequiredFieldValidator>

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
    <asp:Label runat="server" CssClass="form-label">Captcha</asp:Label>
    <asp:TextBox ID="txtcap" runat="server"></asp:TextBox>
    <asp:Literal ID="litCaptcha" runat="server" Text="captcha"></asp:Literal>
    <asp:CustomValidator ID="CustomValidatorCaptcha" runat="server"
        ErrorMessage="Incorrect Captcha" ClientValidationFunction="validateCaptcha"
        ControlToValidate="txtcap" Display="Dynamic" Text="Incorrect captcha"
        SetFocusOnError="true"></asp:CustomValidator>
</div>




    <div class="mb-3">

        <asp:Button runat="server" Text="Register" OnClick="btnAddProd_Click"
            ID="btnAddProd"
            CssClass="col-12 btn btn-outline-primary btn-lg" />
    </div>
    <div class="mb-3">
        <asp:LinkButton ID="lnkExit" runat="server" CssClass="col-12 btn btn-outline-info btn-lg" CausesValidation="false"  OnClick="lnkExit_Click">Exit</asp:LinkButton>
        </div>
    <div class="mb-3">
        <asp:LinkButton ID="lnkReset" OnClientClick="return confirm('Are you sure?')" CssClass="col-12 btn btn-outline-warning btn-lg" OnClick="lnkReset_Click" runat="server">Reset</asp:LinkButton>
        </div>
    <div class="mb-3">
        <asp:ImageButton ID="imgButton" PostBackUrl="~/register.aspx" ImageUrl="~/images/register.png" runat="server" />
    </div>

</asp:Content>
