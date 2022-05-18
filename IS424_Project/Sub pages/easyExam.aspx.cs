using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project.Sub_pages
{
    public partial class easyExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["level"] as string))
            {
                Response.Redirect("./Login.aspx");
            }
        }
        protected void Mark_TextChanged(object sender, EventArgs e)
        {
            if (int.Parse(mark.Text.ToString()) >= 60)
                if (!string.IsNullOrEmpty(Session["level"] as string))
                {
                    SqlDataSource1.UpdateCommand = $"UPDATE Users" +
                    $" set [Level] = 'Moderate' WHERE [Username] = '{Session["Username"]}';";
                    SqlDataSource1.Update();
                    Session["level"] = "Moderate";
                }
        }
    }
}