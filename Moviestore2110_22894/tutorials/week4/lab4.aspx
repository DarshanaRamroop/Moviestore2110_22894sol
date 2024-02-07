<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="lab4.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week4.lab4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1>Lab 4</h1>

    <h3>Task 2</h3>

     <div>
            <asp:Label ID="lblFirstNumber" runat="server" AssociatedControlID="txtFirstNumber">First Number:</asp:Label>
            <asp:TextBox ID="txtFirstNumber" runat="server" AutoPostBack="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstNumber" runat="server" ControlToValidate="txtFirstNumber"
                ErrorMessage="First Number is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="lblSecondNumber" runat="server" AssociatedControlID="txtSecondNumber">Second Number:</asp:Label>
            <asp:TextBox ID="txtSecondNumber" runat="server" AutoPostBack="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSecondNumber" runat="server" ControlToValidate="txtSecondNumber"
                ErrorMessage="Second Number is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="lblThirdNumber" runat="server" AssociatedControlID="txtThirdNumber">Enter number that falls within the two:</asp:Label>
            <asp:TextBox ID="txtThirdNumber" runat="server" AutoPostBack="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvThirdNumber" runat="server" ControlToValidate="txtThirdNumber"
                ErrorMessage="Third Number is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="cvNumberRange" runat="server" ControlToValidate="txtThirdNumber"
                ErrorMessage="Enter a number within the range of the first two numbers." ForeColor="Red" OnServerValidate="cvNumberRange_ServerValidate"></asp:CustomValidator>
            <br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>

<br /><br /><br />

    <h3>Task 3</h3>

     <div>
            <asp:Label ID="lblHighestBid" runat="server" Text="Highest Bid:" AssociatedControlID="txtHighestBid"></asp:Label>
            <asp:TextBox ID="txtHighestBid" runat="server" ReadOnly="true"></asp:TextBox>
            <br />

            <asp:Label ID="lblYourBid" runat="server" Text="Your Bid:" AssociatedControlID="txtYourBid"></asp:Label>
            <asp:TextBox ID="txtYourBid" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvYourBid" runat="server" ControlToValidate="txtYourBid"
                ErrorMessage="Your Bid is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvBidComparison" runat="server" ControlToValidate="txtYourBid"
                ControlToCompare="txtHighestBid" Type="Double" Operator="GreaterThan"
                ErrorMessage="Your Bid must be higher than the current highest bid." Display="Dynamic" Text="Incorrect!" ForeColor="Red"></asp:CompareValidator>
            <br />

            <asp:Button ID="btnPlaceBid" runat="server" Text="Place Bid"  OnClick="btnPlaceBid_Click" />
        </div>

    <h3>Task 4</h3>
    <div>
            <asp:Label ID="lblCreditCard" runat="server" Text="Credit Card Number:" AssociatedControlID="txtCreditCard"></asp:Label>
            <asp:TextBox ID="txtCreditCard" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCreditCard" runat="server" ControlToValidate="txtCreditCard"
                ErrorMessage="Credit Card Number is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revCreditCardLength" runat="server" ControlToValidate="txtCreditCard"
                ErrorMessage="Credit Card Number must be 16 characters long and contain numbers only." ValidationExpression="^[0-9]{16}$"
                ForeColor="Red"></asp:RegularExpressionValidator>
            <br />

            <asp:Button ID="btnValidate" runat="server" Text="Validate"  OnClick="btnValidate_Click" />
            <asp:Label ID="lblValidationResult" runat="server" ForeColor="Green"></asp:Label>
        </div>
</asp:Content>
