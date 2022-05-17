using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project.Sub_pages
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            incorrectLabel.Visible = false;
        }

        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            String userName = TB_UserName.Text;
            String name = TB_pname.Text;
            String Password = TB_password.Text;
            String Permissions = "Student";
            String Level = "Beginner";
            try
            {
                SqlDataSource1.InsertCommand = $"INSERT INTO Users([Username], [PersonName], [Password], [Class], [Level]) VALUES ('{userName}', '{name}', '{Password}', '{Permissions}', '{Level}');";
                SqlDataSource1.Insert();
                Response.Redirect("./Login.aspx");
            }catch (Exception ex)
            {
                incorrectLabel.Visible = true;
            }
            }
        }
      
    }