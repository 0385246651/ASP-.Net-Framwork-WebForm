<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="ASP_WebForm.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblText" runat="server">
            Enter your name:
        </asp:Label>
        <br />
        <asp:TextBox ID="txtName"  runat="server"/>
        <br />
         <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <br />
        <br />
        <asp:Label ID="lblHello" runat="server" ForeColor="#FF3300" />
        <br />
<br />

        <asp:CheckBoxList ID="chbColor" runat="server">
            <asp:ListItem Value="Red" Text="Red" />
            <asp:ListItem Value="Green" Text="Green" />
            <asp:ListItem Value="Blue" Text="Blue" />
            <asp:ListItem Value="Yellow" Text="Yellow" />
        </asp:CheckBoxList>

        <asp:Image AccessKey="I" ID="imgColor" runat="server" ImageUrl="~/Images/Runcat.jpg" 
            Width="200px" Height="200px"/>
    </form>
</body>
</html>
