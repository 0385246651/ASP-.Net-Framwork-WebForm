using System;
using System.Collections.Generic;
using System.IO;
using System.Linq; // Vẫn cần nếu bạn dùng Linq ở đâu đó
using System.Web.UI.WebControls;

namespace ASP_WebForm
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Điền dữ liệu cho DropDownList Ngày
                for (int i = 1; i <= 31; i++)
                {
                    ddlDay.Items.Add(new ListItem(i.ToString("00"), i.ToString()));
                }

                // Điền dữ liệu cho DropDownList Tháng
                for (int i = 1; i <= 12; i++)
                {
                    ddlMonth.Items.Add(new ListItem(i.ToString("00"), i.ToString()));
                }

                // Điền dữ liệu cho DropDownList Năm
                int currentYear = DateTime.Now.Year;
                for (int i = currentYear; i >= currentYear - 100; i--)
                {
                    ddlYear.Items.Add(new ListItem(i.ToString(), i.ToString()));
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                // Nếu có bất kỳ lỗi validation nào khác, dừng lại ở đây
                return;
            }

            // --- Server-side Validation cho Sở thích ---
            bool anyHobbySelected = false;
            foreach (ListItem item in txtHobbies.Items)
            {
                if (item.Selected)
                {
                    anyHobbySelected = true;
                    break; // Chỉ cần tìm thấy một sở thích được chọn là đủ
                }
            }

            if (!anyHobbySelected)
            {
                // Nếu không có sở thích nào được chọn, hiển thị thông báo lỗi
                // Bạn cần một Label để hiển thị lỗi này trên trang ASPX
                lblHobbyError.Text = "Vui lòng chọn ít nhất một sở thích.";
                lblHobbyError.Visible = true; // Hiện thị Label lỗi
                return; // Dừng xử lý và không chuyển hướng
            }
            else
            {
                lblHobbyError.Visible = false; // Ẩn lỗi nếu đã chọn
            }
            // --- Kết thúc Server-side Validation cho Sở thích ---

            Dictionary<string, string> formData = new Dictionary<string, string>();

            // 1. Lấy thông tin cá nhân - Cập nhật KEY ở đây!
            formData["FullName"] = txtName.Text;
            formData["DateOfBirth"] = $"{ddlDay.SelectedValue}/{ddlMonth.SelectedValue}/{ddlYear.SelectedValue}";
            formData["Gender"] = txtGender.SelectedValue;
            formData["PhoneNumber"] = txtPhone.Text;
            formData["Email"] = txtEmail.Text;

            // Lấy sở thích
            string hobbies = "";
            foreach (ListItem item in txtHobbies.Items)
            {
                if (item.Selected)
                {
                    hobbies += item.Text + ", ";
                }
            }
            formData["Hobbies"] = hobbies.TrimEnd(',', ' ');

            // 2. Lấy thông tin đăng ký xét tuyển - Cập nhật KEY ở đây!
            formData["MajorField"] = txtMajor.SelectedValue;
            formData["ContactAddress"] = txtAddress.Text;

            // 3. Xử lý tệp Avatar
            string avatarVirtualPath = "~/Uploads/Avatars/NoAvatar.png";
            if (txtAvatar.HasFile)
            {
                try
                {
                    // lấy ra file name , và đặt đường dẫn đến thư mục lưu ảnh upload
                    string fileName = Path.GetFileName(txtAvatar.FileName);
                    string folderPath = Server.MapPath("~/Uploads/Avatars/");

                    // Nếu thư mục để chứa ảnh upload ko tồn tại thì tạo
                    if (!Directory.Exists(folderPath))
                    {
                        Directory.CreateDirectory(folderPath);
                    }

                    // tạo ra tên ảnh độc nhất
                    string uniqueFileName = Guid.NewGuid().ToString() + "_" + fileName;
                    string filePath = Path.Combine(folderPath, uniqueFileName);
                    //lưu ảnh vào thư mục upload
                    txtAvatar.SaveAs(filePath);
                    //gán lại dg dẫn đẻ hiển thị
                    avatarVirtualPath = "~/Uploads/Avatars/" + uniqueFileName;
                }
                catch (Exception ex)
                {
                    // Tốt hơn hết là hiển thị lỗi cho người dùng hoặc ghi log
                    // Response.Write($"<script>alert('Lỗi tải file: {ex.Message}');</script>");
                    // Nếu lỗi ở đây, Avatar sẽ vẫn là NoAvatar.png
                }
            }

            // Lưu tất cả dữ liệu vào Session
            Session["FormData"] = formData;
            Session["AvatarPath"] = avatarVirtualPath;

            // Chuyển hướng sang trang InfoPage.aspx
            Response.Redirect("Info.aspx");
        }
    }
}