using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebForm
{
	public partial class page2 : System.Web.UI.Page
	{
        protected void Page_Load(object sender, EventArgs e)
        {
            //GET lấy ra query string từ URL
            //         String name = Request.QueryString["txtName"];
            //         String id = Request.QueryString["txtID"];

            //lblText.Text = "Hello " + name + " " + id;

            //POST lấy ra dữ liệu từ form
            String name = Request.Form["txtName"];
            String id = Request.Form["txtID"];
            lblText.Text = "Hello " + name + " " + id;
        }
    }
}