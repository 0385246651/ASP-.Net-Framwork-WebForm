using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm
{
    public partial class page3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Trong Page_Load, chúng ta thường không xử lý Request.Form trực tiếp cho ASP.NET controls
            // mà thay vào đó là trong sự kiện của nút.
            if (!IsPostBack)
            {
                lblHello.Text = "Chào mừng! Vui lòng nhập thông tin.";
            }
            // Không có logic xử lý POST request trực tiếp ở đây,
            // vì chúng ta sẽ xử lý nó trong btnSubmit_Click
        }

        // Sự kiện click của nút Submit
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Lấy giá trị từ các ASP.NET TextBox controls
            // Đây là cách đúng và khuyến nghị khi dùng Server Controls
            string name = txtName.Text;
            string id = txtID.Text;

            if (!string.IsNullOrEmpty(name) && !string.IsNullOrEmpty(id))
            {
                lblHello.Text = $"Hello {name} {id}";
                // Optionally clear textboxes after display
                // txtName.Text = "";
                // txtID.Text = "";
            }
            else
            {
                lblHello.Text = "Vui lòng nhập đầy đủ tên và ID.";
            }
        }

        // Sự kiện click cho nút Submit của phần Chọn màu
        protected void btnSubmitColors_Click(object sender, EventArgs e)
        {
            string selectedColors = "Bạn đã chọn màu: ";
            bool anySelected = false;

            foreach (ListItem item in colors.Items)
            {
                if (item.Selected)
                {
                    selectedColors += item.Text + ", ";
                    anySelected = true;
                }
            }

            if (anySelected)
            {
                // Xóa dấu ", " cuối cùng
                lblSelectedColors.Text = selectedColors.TrimEnd(',', ' ');
            }
            else
            {
                lblSelectedColors.Text = "Bạn chưa chọn màu nào.";
            }
        }

        //clear color
        protected void btnClearColors_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in colors.Items)
            {
                item.Selected = false; // Đặt thuộc tính Selected của mỗi mục về false
            }

            // Cập nhật thông báo cho người dùng
            lblSelectedColors.Text = "Các lựa chọn đã được xóa.";
        }
    }
}