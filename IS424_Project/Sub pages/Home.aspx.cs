using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.IO;

namespace IS424_Project.Sub_pages
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                if (Session["UserName"] != null)
                {
                    LoginForm.Style.Add("display", "none");
                }
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            incorrectLabel.Visible = false;
            String userName = TB_UserName.Text;
            String password = TB_Password.Text;

            SqlDataSource1.SelectCommand = "Select * from Users where UserName = '" + userName + "'" +
                                        " and Password = '" + password + "'";

            DataView dv = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
            DataTable dt = dv.ToTable();

            if (dt.Rows.Count <= 0)
            {
                incorrectLabel.Visible = true;
            }
            else
            {
                foreach (DataRow dr in dt.Rows)
                {
                    Session["UserName"] = dr[1].ToString();
                    Session["class"] = dr[3].ToString();
                }

                if (Session["class"].Equals("Student"))
                {
                    Response.Redirect("./Exam.aspx");
                }
                else if (Session["class"].Equals("Admin"))
                {
                    Response.Redirect("./AdminPages/AdminHome.aspx");
                }
            }



        }



   
    }
}