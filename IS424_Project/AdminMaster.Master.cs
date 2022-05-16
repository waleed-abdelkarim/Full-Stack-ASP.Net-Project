using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    if (!Session["class"].Equals("Admin"))
            //        Response.Redirect("../Login.aspx");
            //}
        }
        protected void clear(object sender, EventArgs e)
        {
            Session["Username"] ="";
            Session["name"] = "";
            Session["class"] = "";
            Session["level"] = "";
        }
    }

}