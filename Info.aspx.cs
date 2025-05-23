using System;
using System.Web.UI.WebControls;
using System.Web;
using System.IO; // Đảm bảo dòng này có mặt

namespace ASP_WebForm
{
    public partial class InfoPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["FormData"] != null)
                {
                    var formData = Session["FormData"] as System.Collections.Generic.Dictionary<string, string>;
                    string avatarPath = Session["AvatarPath"] as string;

                    if (formData != null)
                    {
                        // Cập nhật các tên key trong Dictionary và ID của Label
                        lblFullName.Text = formData.ContainsKey("FullName") ? formData["FullName"] : "";
                        lblDateOfBirth.Text = formData.ContainsKey("DateOfBirth") ? formData["DateOfBirth"] : "";
                        lblGender.Text = formData.ContainsKey("Gender") ? formData["Gender"] : "";
                        lblPhoneNumber.Text = formData.ContainsKey("PhoneNumber") ? formData["PhoneNumber"] : "";
                        lblEmail.Text = formData.ContainsKey("Email") ? formData["Email"] : "";
                        lblHobbies.Text = formData.ContainsKey("Hobbies") ? formData["Hobbies"] : "";
                        lblMajorField.Text = formData.ContainsKey("MajorField") ? formData["MajorField"] : "";
                        lblContactAddress.Text = formData.ContainsKey("ContactAddress") ? formData["ContactAddress"] : "";

                        // Hiển thị ảnh avatar
                        if (!string.IsNullOrEmpty(avatarPath) && File.Exists(Server.MapPath(avatarPath)))
                        {
                            imgAvatar.ImageUrl = ResolveUrl(avatarPath);
                        }
                        else
                        {
                            // Đảm bảo thư mục ~/Uploads/Avatars có file NoAvatar.png nếu không có ảnh
                            imgAvatar.ImageUrl = ResolveUrl("~/Uploads/Avatars/NoAvatar.png");
                            imgAvatar.AlternateText = "Không có ảnh đại diện";
                        }
                    }
                }
                else
                {
                    Response.Redirect("RegisterForm.aspx");
                }
            }
        }
    }
}