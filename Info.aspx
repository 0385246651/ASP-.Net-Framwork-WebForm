<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfoPage.aspx.cs" Inherits="ASP_WebForm.InfoPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thông tin của bạn</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }

        .info-container {
            background-color: #fff;
            padding: 20px;
            border: 1px solid darkblue;
            border-radius: 5px;
            max-width: 800px;
            margin: 20px auto;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        h1 {
            color: red;
            text-align: center;
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        h3 {
            color: navy;
            margin-top: 20px;
            border-bottom: 1px solid #eee;
            padding-bottom: 5px;
            text-transform: uppercase;
        }

        .info-row {
            margin-bottom: 10px;
        }

        .info-label {
            font-weight: bold;
            display: inline-block;
            width: 150px;
            text-align: right;
            margin-right: 10px;
            color: #555;
        }

        .info-value {
            display: inline-block;
            color: #333;
        }

        .avatar-display {
            margin-top: 10px;
            text-align: left;
            margin-left: 160px;
        }
        .avatar-display img {
            max-width: 150px;
            height: auto;
            border: 1px solid #ccc;
            padding: 5px;
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="info-container">
            <h1>Thông tin của bạn</h1>

            <h3>Thông tin cá nhân</h3>
            <div class="info-row">
                <span class="info-label">Họ Tên:</span>
                <asp:Label ID="lblFullName" runat="server" CssClass="info-value"></asp:Label>
            </div>
            <div class="info-row">
                <span class="info-label">Ngày sinh:</span>
                <asp:Label ID="lblDateOfBirth" runat="server" CssClass="info-value"></asp:Label>
            </div>
            <div class="info-row">
                <span class="info-label">Giới tính:</span>
                <asp:Label ID="lblGender" runat="server" CssClass="info-value"></asp:Label>
            </div>
            <div class="info-row">
                <span class="info-label">Điện thoại:</span>
                <asp:Label ID="lblPhoneNumber" runat="server" CssClass="info-value"></asp:Label>
            </div>
            <div class="info-row">
                <span class="info-label">Email:</span>
                <asp:Label ID="lblEmail" runat="server" CssClass="info-value"></asp:Label>
            </div>
            <div class="info-row">
                <span class="info-label">Avatar:</span>
                <div class="avatar-display">
                     <asp:Image ID="imgAvatar" runat="server" AlternateText="Ảnh đại diện" />
                </div>
            </div>
            <div class="info-row">
                <span class="info-label">Sở thích:</span>
                <asp:Label ID="lblHobbies" runat="server" CssClass="info-value"></asp:Label>
            </div>

            <h3>Thông tin đăng ký xét tuyển</h3>
            <div class="info-row">
                <span class="info-label">Lĩnh vực đăng ký:</span>
                <asp:Label ID="lblMajorField" runat="server" CssClass="info-value"></asp:Label>
            </div>
            <div class="info-row">
                <span class="info-label">Địa chỉ liên hệ:</span>
                <asp:Label ID="lblContactAddress" runat="server" CssClass="info-value"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>