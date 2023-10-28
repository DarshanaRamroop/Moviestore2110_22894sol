<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task1clearmessage.aspx.cs" Inherits="Moviestore2110_22894.tutorials.week2.task1clearmessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="messageLabel" runat="server" Text="Hellooooo"></asp:Label>
            <asp:Button ID="clearMessageButton" runat="server" Text="Clear Message" OnClick="ClearMessageButton_Click" />
        </div>
    </form>
</body>
</html>
