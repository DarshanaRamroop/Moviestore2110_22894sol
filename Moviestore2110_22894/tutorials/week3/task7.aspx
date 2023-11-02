<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task7.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.task7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CheckBoxList ID="cblproduct" runat="server">
    <asp:ListItem Text="Talia" Value="1" />
    <asp:ListItem Text="Tampon" Value="2" />
    <asp:ListItem Text="Pad" Value="3" />
</asp:CheckBoxList>
    <asp:Button ID="Buttonadd" runat="server" Text="Add to Cart" OnClick="Buttonadd_Click" />
    <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
    <asp:Button ID="Buttonremove" runat="server" OnClick="Buttonremove_Click" Text="Remove from Cart" />
</asp:Content>
