<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="lab2.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week2.lab2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1>Lab 2</h1>

 <h3>Task 1: Clear message in a Label control by clicking button “Clear Message” (button click event).</h3>
 <asp:Label ID="lblClear" Text="Clear This" runat="server"></asp:Label>
 <asp:Button ID="btnClear"  OnClick="btnClear_Click" runat="server" Text="Clear" />

 <br /><br /><br />

 <h3>Task 2:Hide/show message in a Label control by clicking button “Show Label” or “Hide Label” (button click event).</h3>
 <asp:Label runat="server" Text="This ia a label" ID="lblShow"></asp:Label>
 <asp:Button ID="btnshow" Text="Hide"  OnClick="btnshow_Click" runat="server"/>

 <br /><br /><br />
 <h3>Task 3: Transfer text from one Textbox to another (button click event).</h3>
 <asp:TextBox ID="txtTransferThis" runat="server"></asp:TextBox>
  <asp:TextBox ID="txtToThis" runat="server"></asp:TextBox>
 <asp:Button Id="btnTransfer" Text="Transfer" runat="server"  OnClick="btnTransfer_Click"/>
 <br /><br /><br />


 <h3>Task 4: Display message Good morning or Good afternoon in a label control once the page loads (page event) </h3>
 <asp:Label runat="server" ID="lblGreeting"></asp:Label>
 
 <br /><br /><br />

  <h3>Task 5: Display hyperlink with either text ”Visit Morning Session” or “Visit Afternoon Session” based on the time of the day. </h3>
 <asp:HyperLink ID="morningLink" runat="server" href="/home.aspx">Visit Morning Session</asp:HyperLink>
     <asp:HyperLink ID="afternoonLink" runat="server" Text="Visit Afternoon Session" href="/about.aspx"></asp:HyperLink>

 <br /><br /><br />

  <h3>Task 6: Redirects a user to a new page once the user selects a file name from a Drop-Down-List control. </h3>
 <asp:DropDownList ID="DropDownList1"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true" runat="server">
     <asp:ListItem Text="File1" Value="1"></asp:ListItem>
     <asp:ListItem Text="File2" Value="2"></asp:ListItem>
     <asp:ListItem Text="File3" Value="3"></asp:ListItem>

 </asp:DropDownList>




 <br /><br /><br />

</asp:Content>
