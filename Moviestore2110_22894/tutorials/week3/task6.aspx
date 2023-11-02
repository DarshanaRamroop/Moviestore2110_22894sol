<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task6.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.task6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <div class="mb-3">
     <asp:Label runat="server"
         CssClass="form-label">Football Clubs </asp:Label>
     <asp:DropDownList ID="ddlfootball" runat="server" CssClass="form-control">
         <asp:ListItem Value="-1">Choose Football Clubs</asp:ListItem>
         <asp:ListItem Value="1">Chelsea</asp:ListItem>
         <asp:ListItem Value="2">Arsenal</asp:ListItem>
         <asp:ListItem Value="3">Liverpool</asp:ListItem>
     </asp:DropDownList>


    <asp:RadioButtonList ID="rblFootballClubs" runat="server">
    <asp:ListItem Text="Chelsea" Value="1" />
    <asp:ListItem Text="Arsenal" Value="2" />
    <asp:ListItem Text="Liverpool" Value="3" />
</asp:RadioButtonList>

    <asp:CheckBoxList ID="cblFootballClubs" runat="server">
    <asp:ListItem Text="Chelsea" Value="1" />
    <asp:ListItem Text="Arsenal" Value="2" />
    <asp:ListItem Text="Liverpool" Value="3" />
</asp:CheckBoxList>

    <asp:ListBox ID="lbFootballClubs" runat="server">
    <asp:ListItem Text="Chelsea" Value="1" />
    <asp:ListItem Text="Arsenal" Value="2" />
    <asp:ListItem Text="Liverpool" Value="3" />
</asp:ListBox>


 </div>
</asp:Content>
