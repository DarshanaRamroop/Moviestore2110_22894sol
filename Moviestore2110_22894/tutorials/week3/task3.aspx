<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="task3.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.task3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        Select the source:
        <ul>
            <li>
                <asp:RadioButton ID="rdlMagazine" Text="Magazine Article" GroupName="Source" runat="server" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            </li>
            <li>
                <asp:RadioButton ID="rdlTelevision" Text="Television Program" GroupName="Source" runat="server" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            </li>
            <li>
                <asp:RadioButton ID="rdlOther" Text="Other Source" GroupName="Source" runat="server" OnCheckedChanged="RadioButton_CheckedChanged" AutoPostBack="true" />
            </li>
        </ul>
        <asp:Label ID="lblResult" runat="server" />
    </div>
</asp:Content>


