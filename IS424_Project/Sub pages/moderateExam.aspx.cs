using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project.Sub_pages
{
    public partial class moderateExam : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Session["level"] as string))
                {
                    if (Session["level"].Equals("Biginner"))
                        Response.Redirect("./Login.aspx");
                }
                else if (string.IsNullOrEmpty(Session["level"] as string))
                    Response.Redirect("./Login.aspx");
            }
        }
    }
}