<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="ASP_WebForm.RegisterForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }

        #registerForm {
            background-color: #fff;
            padding: 20px;
            border: 1px solid darkblue;
            border-radius: 5px;
            max-width: 800px; /* Điều chỉnh độ rộng tối đa của form */
            margin: 0 auto; /* Căn giữa form */
        }

        .header {
            p

        {
            color: #000
        }

        }

        h1 {
            color: red;
            text-align: center;
            margin-bottom: 20px;
            text-transform: uppercase;
        }

        .form-block {
            width: 80%; /* hoặc 600px chẳng hạn */
            margin-left: 20%;
        }

        h3 {
            color: #333;
            margin-top: 20px;
            border-bottom: 1px solid #eee;
            text-transform: uppercase;
            padding-bottom: 5px;
            color: navy;
        }

        div > span {
            display: inline-block;
            width: 140px; /* Điều chỉnh độ rộng nhãn */
            margin-bottom: 10px;
            font-weight: bold;
            color: #555;
            text-align: right;
        }

        .aspNetDisabled { /* CSS mặc định cho control bị disabled */
            background-color: #eee !important;
            border-color: #ccc !important;
        }

        asp:TextBox, asp:DropDownList, asp:CheckBoxList { /* Áp dụng cho các control ASP.NET */
            width: calc(100% - 130px); /* Chiếm phần còn lại của dòng trừ độ rộng nhãn và padding */
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 3px;
            box-sizing: border-box; /* Đảm bảo padding không làm tăng kích thước phần tử */
        }

        asp:CheckBoxList {
            display: flex; /* Hiển thị mỗi checkbox trên một dòng nếu cần */
            padding: 5px 0;
        }

            asp:CheckBoxList label {
                font-weight: normal;
                margin-right: 15px;
            }

        #btnSubmit{
            background-color: navy;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 15px;
            margin-left: 38%;
        }

            asp:Button:hover {
                background-color: darkblue;
            }

        /* CSS cho phần ngày tháng năm (nếu bạn muốn style riêng) */
        .date-input {
            display: inline-block;
            width: 50px;
            padding: 8px;
            margin-right: 5px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 3px;
            box-sizing: border-box;
        }

        /* Điều chỉnh khoảng cách cho đoạn mô tả */
        div > p {
            color: #666;
            margin-bottom: 15px;
            text-align: center;
        }

        /* Thêm khoảng cách dưới tiêu đề h3 */
        h3 + br {
            display: none; /* Ẩn thẻ br thừa sau h3 */
        }

        #txtMajor{
            width: 27.5%;
            height:21px;
        }
        .hobbiesClass{
            display:flex;

        }
    </style>
</head>
<body>
    <form id="registerForm" runat="server">
        <div class="header">
            <h1>Đăng ký học</h1>
            <p>Bạn vui lòng điền đầy đủ thông tin vào các ô bên dưới để hoàn thành việc gửi đơn đăng ký học.</p>
        </div>
        <h3>Thông tin cá nhân</h3>
        <div class="form-block">

            <br />
            <span>Họ Tên</span>
            <asp:TextBox ID="txtName" runat="server" />
            <br />

            <span>Ngày sinh</span>
            <asp:DropDownList ID="ddlDay" runat="server"></asp:DropDownList>
            /
            <asp:DropDownList ID="ddlMonth" runat="server"></asp:DropDownList>
            /
            <asp:DropDownList ID="ddlYear" runat="server"></asp:DropDownList>
            <br />

            <span>Giới tính</span>
            <asp:DropDownList ID="txtGender" runat="server">
                <asp:ListItem Text="Nam" Value="Nam" />
                <asp:ListItem Text="Nữ" Value="Nữ" />
            </asp:DropDownList>
            <br />

            <span>Điện thoại</span>
            <asp:TextBox ID="txtPhone" runat="server" />
            <br />

            <span>Email</span>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
            <br />
            <span>Avatar</span>
            <asp:FileUpload ID="txtAvatar" runat="server" Text="Chọn tập tin..." />
            <br />
            <div class="hobbiesClass">
                 <span>Sở thích</span>
                 <asp:CheckBoxList ID="txtHobbies" runat="server">
                     <asp:ListItem Text="Nghe nhạc" Value="Nghe nhạc" />
                     <asp:ListItem Text="Xem TV" Value="Xem TV" />
                     <asp:ListItem Text="Chơi thể thao" Value="Chơi thể thao" />
                     <asp:ListItem Text="Đọc sách" Value="Đọc sách" />
                 </asp:CheckBoxList>
            </div>
            <br />
        </div>
        <h3>Thông tin đăng ký xét tuyển</h3>
        <div class="form-block">
            <br />
            <span>Lĩnh vực đăng ký</span>
            <asp:DropDownList ID="txtMajor" runat="server">
                <asp:ListItem Text="CNTT" Value="CNTT" />
                <asp:ListItem Text="Kinh tế" Value="Kinh tế" />
                <asp:ListItem Text="Y học" Value="Y học" />
                <asp:ListItem Text="Cơ khí" Value="Cơ khí" />
                <asp:ListItem Text="Ô tô" Value="Ô tô" />
            </asp:DropDownList>
            <br />

            <span>Địa chỉ liên hệ</span>
            <asp:TextBox ID="txtAddress" runat="server" />
        </div>
            <asp:Button ID="btnSubmit" runat="server" Text="ĐĂNG KÝ" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
