<%@ Page Title="" Language="C#" MasterPageFile="~/guestmasterpage.Master" AutoEventWireup="true" CodeBehind="lab3.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week3.lab3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .normalDay {
            color: blue;
        }

        .weekendDay {
            color: green;
        }

        .currentDate {
            color: yellow;
        }

        .selectedDate {
            color: orange;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Lab 3</h1>

    <h3>Task 1: To transfer text from one Textbox control to another, once the first Textbox loses focus.</h3>
    <asp:TextBox ID="txtFirst" AutoPostBack="true" runat="server"  OnTextChanged="txtFirst_TextChanged" AutoCompleteType="Search"></asp:TextBox>
    <asp:TextBox ID="txtSecond" runat="server"></asp:TextBox>
    <br /><br /><br />


     <h3>Task 2: To detect whether a checkbox is checked or unchecked. The program will have to print true or false accordingly and respond once a user checks the checkbox (refer to exercise 5 in your tutorial).</h3>
    <asp:CheckBox runat="server" AutoPostBack="true" ID="chkTrue" OnCheckedChanged="chkTrue_CheckedChanged"/>
    <asp:Label ID="lblCheck" runat="server"></asp:Label>

 <br /><br /><br />


     <h3>Task 3: Modify example 6 in your tutorial such that the program respond once a user checks any one of the radio buttons. You will also have to use the Sender parameter rather than If Statement. </h3>
    Select the source:
        <ul>
            <li>
                <asp:RadioButton ID="rdlMagazine" Text="Magazine Article" GroupName="Source" runat="server" AutoPostBack="true"  OnCheckedChanged="rdlMagazine_CheckedChanged"/>
            </li>
            <li>
                <asp:RadioButton ID="rdlTelevision" Text="Television Program" GroupName="Source" runat="server" AutoPostBack="true"   OnCheckedChanged="rdlMagazine_CheckedChanged" />
            </li>
            <li>
                <asp:RadioButton ID="rdlOther" Text="Other Source" GroupName="Source" runat="server" AutoPostBack="true" OnCheckedChanged="rdlMagazine_CheckedChanged" />
            </li>
        </ul>

        <asp:Label ID="lblResult" runat="server" />

 <br /><br /><br />

     <h3>Task 4: To detect when a user hits the bull’s eyes in a dartboard image. Print messages: “You hit the target at coords (x,y)” or “You missed” accordingly. Here you will have to work with the ImageButton control. </h3>

      <asp:ImageButton ID="imgBtnDartboard" ImageUrl="~/images/dart.jpg" runat="server"  OnCommand="imgBtnDartboard_Command" Width="200px" CommandName="DartboardClick" CommandArgument="dummy" /> 

 <br /><br /><br />

     <h3>Task 5: To display random images in an Image control. Try with the Switch statement. </h3>

   
<asp:Image id="imgRandom" Width="300px" Runat="server" /> <br /> <asp:Label id="lblRandom" Runat="server" />

 <br /><br /><br />

        <h3>Task 6: Create the following list items declaratively to store three football clubs, namely: Chelsea, Arsenal and Liverpool.
• Dropdown list
• radiobuttonlist
• checkboxlist
• listbox</h3>

    <asp:DropDownList ID="ddlFootballClubs" runat="server">
    <asp:ListItem Text="Chelsea" Value="Chelsea"></asp:ListItem>
    <asp:ListItem Text="Arsenal" Value="Arsenal"></asp:ListItem>
    <asp:ListItem Text="Liverpool" Value="Liverpool"></asp:ListItem>
</asp:DropDownList>

    <asp:RadioButtonList ID="rblFootballClubs" runat="server">
    <asp:ListItem Text="Chelsea" Value="Chelsea"></asp:ListItem>
    <asp:ListItem Text="Arsenal" Value="Arsenal"></asp:ListItem>
    <asp:ListItem Text="Liverpool" Value="Liverpool"></asp:ListItem>
</asp:RadioButtonList>

    <asp:CheckBoxList ID="cblFootballClubs" runat="server">
    <asp:ListItem Text="Chelsea" Value="Chelsea"></asp:ListItem>
    <asp:ListItem Text="Arsenal" Value="Arsenal"></asp:ListItem>
    <asp:ListItem Text="Liverpool" Value="Liverpool"></asp:ListItem>
</asp:CheckBoxList>

    <asp:ListBox ID="lbFootballClubs" runat="server" SelectionMode="Multiple">
    <asp:ListItem Text="Chelsea" Value="Chelsea"></asp:ListItem>
    <asp:ListItem Text="Arsenal" Value="Arsenal"></asp:ListItem>
    <asp:ListItem Text="Liverpool" Value="Liverpool"></asp:ListItem>
</asp:ListBox>

<br /><br /><br />


        <h3>Task 7: Write C# program that allows you to choose products from a CheckBoxList Control and add them to a Shopping Cart list box. The program should also allow you to remove item(s) from the Shopping Cart </h3>
       <div>
            <h2>Product List</h2>
            <asp:CheckBox ID="chkProduct1" runat="server" Text="Product B" />
            <br />
            <asp:CheckBox ID="chkProduct2" runat="server" Text="Product B" />
            <br />
            <asp:CheckBox ID="chkProduct3" runat="server" Text="Product C" />
            <br />
            <br />
            <h2>Shopping Cart</h2>
            <asp:ListBox ID="lstShoppingCart" runat="server" SelectionMode="Multiple"></asp:ListBox>
            <br />
            
            <br />
            <input type="button" id="btnAddToCart" runat="server" value="Add to Cart" onserverclick="btnAddToCart_ServerClick" />
            <input type="button" id="btnRemoveFromCart" runat="server" value="Remove from Cart"  onserverclick="btnRemoveFromCart_ServerClick" />
        </div>
<br /><br /><br />

        <h3>Task 8: Write a C# program that displays a Calendar control with the following settings:
❖ Most days in blue 
❖ Weekends in green
❖ Current date in yellow
❖ Selected date in orange</h3>
     <asp:Calendar ID="calendarExample" runat="server"  OnDayRender="calendarExample_DayRender"></asp:Calendar>
<br /><br /><br />


</asp:Content>
