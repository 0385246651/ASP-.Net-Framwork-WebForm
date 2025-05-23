<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page1.aspx.cs" Inherits="ASP_WebForm.page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="page2.aspx" method="post">
        <div>
            <asp:Label ID="lblText" runat="server" Text="Enter your name:"/>
            
            <br />
            <asp:TextBox ID="txtName" runat="server" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=" Enter your ID:" />
            <br />
            <asp:TextBox ID="txtID" runat="server" />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
