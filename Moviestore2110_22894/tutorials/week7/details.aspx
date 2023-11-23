<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week7.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="true" RowStyle-Width="400" Height="50px" Width="125px">
        <Fields>
           
            <asp:ImageField DataImageUrlField="Poster"
                DataImageUrlFormatString="~/images/{0}"
                HeaderText="Poster" SortExpression="Poster" ControlStyle-Width="100" />
            
            <asp:TemplateField HeaderText="Title and Description">
                <ItemTemplate>
                   
                        <strong>
                            <em>
                                <%# Eval("Moviename") %> 

                            </em>
                        </strong>
                    <%# Eval("Description") %>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:CheckBoxField DataField="Status" />

            <asp:ButtonField Text="Subscribe" ControlStyle-CssClass="btn btn-outline-success" />

            <asp:CommandField
ControlStyle-CssClass="btn btn-success fa-pull-right m-1"
ShowDeleteButton="True" ShowEditButton="True"
ShowInsertButton="True">
</asp:CommandField>

        </Fields>
    </asp:DetailsView>

</asp:Content>

