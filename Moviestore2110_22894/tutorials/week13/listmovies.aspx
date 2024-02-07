<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="listmovies.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week13.listmovies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div>

      <asp:GridView ID="gvs" DataSourceID="srcMovies" ClientIDMode="Static" OnPreRender="gvs_PreRender" CellPadding="20" AutoGenerateColumns="false" runat="server">
          <Columns>

             
              <asp:TemplateField HeaderText="Box Office">
                  <ItemTemplate>
                      <h5>
                          <em>
                              <%# Eval("Boxofficetotals", "{0:c}") %>
                          </em>
                      </h5>
                  </ItemTemplate>
              </asp:TemplateField>

              
          </Columns>
      </asp:GridView>
      <asp:ObjectDataSource
          ID="srcMovies" TypeName="DataAccessLayer" SelectMethod="GetMovies"
          runat="server" />
  </div>

</asp:Content>
