using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project.Sub_pages
{
    public partial class LearnASP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
                if (!string.IsNullOrEmpty(Session["Username"] as string))
                    username.Visible = true;
        }
    }
}