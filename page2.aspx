<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page2.aspx.cs" Inherits="ASP_WebForm.page2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

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
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblText" runat="server" CssClass="label">
                Hello :
            </asp:Label>
        </div>
    </form>
</body>
</html>
