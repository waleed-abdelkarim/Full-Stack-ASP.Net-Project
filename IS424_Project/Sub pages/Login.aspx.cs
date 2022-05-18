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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                if (!string.IsNullOrEmpty(Session["Username"] as string))
                    username.Visible = true;
        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            incorrectLabel.Visible = false;
            String userName = TB_UserName.Text;
            String password = TB_Password.Text;

            SqlDataSource1.SelectCommand = $"Select * from Users where [Username] = '{userName}'" +
                                        $" and [Password] = '{password}'";

            DataView dv = (DataView)SqlDataSource1.Select(new DataSourceSelectArguments());
            DataTable dt = dv.ToTable();

            if (dt.Rows.Count <= 0)
                incorrectLabel.Visible = true;
            else
            {
                try
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        Session["Username"] = dr[1].ToString();
                        Session["name"] = dr[2].ToString();
                        Session["class"] = dr[4].ToString();
                        Session["level"] = dr[5].ToString();
                    }
             
                }
                catch (Exception ex)
                {
                    incorrectLabel.Text = ex.Message;
                }
                

                if (Session["class"].Equals("Student"))
                    Response.Redirect("./Exams.aspx");
                else if (Session["class"].Equals("Admin"))
                    Response.Redirect("~/Sub pages/AdminPages/AdminHome.aspx");
            }




        }

    }
}