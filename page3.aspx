<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page3.aspx.cs" Inherits="ASP_WebForm.page3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page 3</title>

    <style>
        body {
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
        }

        #form1 {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }

        .label {
            font-weight: bold;
            color: red;
            font-size: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
            <asp:Label ID="lblPromptName" runat="server" Text="Enter your name:" />
            <br />
            <asp:TextBox ID="txtName" runat="server" />
            <br />
            <asp:Label ID="lblPromptID" runat="server" Text=" Enter your ID:" />
            <br />
            <asp:TextBox ID="txtID" runat="server" />
            <br />
            <br />
             <asp:CheckBoxList ID="colors" runat="server">
                <asp:ListItem Text="Đỏ" />
                <asp:ListItem Text="Xanh dương" />
                <asp:ListItem Text="Xanh lục" />
            </asp:CheckBoxList>
            <br />
             <asp:Button ID="btnSubmitColors" runat="server" Text="Submit Colors" OnClick="btnSubmitColors_Click" />
            <br />
            <br />
             <asp:Button ID="btnClearColors" runat="server" Text="Clear Colors" OnClick="btnClearColors_Click" />
            <br />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br />
            <br />
            <asp:Label ID="lblHello" runat="server" CssClass="label" />
            <br />
            <asp:Label ID="lblSelectedColors" runat="server" CssClass="label" />
        </div>
    </form>

</body>
</html>