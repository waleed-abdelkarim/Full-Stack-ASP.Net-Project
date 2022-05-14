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


namespace IS424_Project.Sub_pages.AdminPages
{
    public partial class mngUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string Password = TB_password.Text;
                TB_password.Attributes.Add("value", Password);
            }
        }

        protected void TB_UserName_TextChanged(object sender, EventArgs e)
        {
            String userName = TB_UserName.Text;
            SqlDataSource2.SelectCommand = "Select * from Users where Username = '" + userName + "'";
            DataView dv = (DataView)SqlDataSource2.Select(new DataSourceSelectArguments());
            DataTable dt = dv.ToTable();
            foreach (DataRow dr in dt.Rows)
            {
                TB_pname.Text = dr[2].ToString();
                String tmp = dr[4].ToString();
                if (tmp.Equals("Admin"))
                {
                    userType.SelectedIndex = 0;
                    //level.Enabled = false;
                    level.SelectedIndex = 0;
                }
                else
                {
                    userType.SelectedIndex = 1;
                    level.Enabled = true;
                    tmp = dr[5].ToString();
                    if (tmp.Equals("Beginner"))
                        level.SelectedIndex = 1;
                    else if (tmp.Equals("Moderate"))
                        level.SelectedIndex = 2;
                    else
                        level.SelectedIndex = 3;
                }

            }
        }

        protected void insertBTN_Click(object sender, EventArgs e)
        {
            String userName = TB_UserName.Text;
            String name = TB_pname.Text;
            String Password = TB_password.Text;
            String Permissions = userType.SelectedItem.Text.ToString();
            String Level = "";
            if (Permissions.Equals("Student"))
            {
                Level = level.SelectedItem.Text.ToString();
                if (Level.Equals(""))
                    Level = "Beginner";
                try
                {
                    SqlDataSource1.InsertCommand = $"INSERT INTO Users([Username], [PersonName], [Password], [Class], [Level]) VALUES ('{userName}', '{name}', '{Password}', '{Permissions}', '{Level}');";
                    SqlDataSource1.Insert();
                }
                catch (OleDbException)
                {
                    error.Text = "this username alredy exist";
                }
            }
            else
            {
                try
                {
                    SqlDataSource1.InsertCommand = $"INSERT INTO Users([Username], [PersonName], [Password], [Class]) VALUES ('{userName}', '{name}', '{Password}', '{Permissions}');";
                    SqlDataSource1.Insert();
                }
                catch (OleDbException)
                {
                    error.Text = "this username alredy exist";
                }
            }
        }


        protected void userType_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (userType.SelectedIndex == 1)
                level.Enabled = true;
            else
            {
                //level.Enabled = false;
                level.SelectedIndex = 0;
            }
        }

        protected void deleteBTN_Click(object sender, EventArgs e)
        {
            String userName = TB_UserName.Text;
            SqlDataSource1.DeleteCommand = $"DELETE FROM Users WHERE Username = '{userName}'";
            int t = SqlDataSource1.Delete();
            if (t == 0)
                error.Text = "No record found";
        }


        protected void updateBTN_Click(object sender, EventArgs e)
        {
            String userName = TB_UserName.Text;
            String name = TB_pname.Text;
            String Password = TB_password.Text;
            if (Password.Equals(""))
            {
                SqlDataSource2.SelectCommand = $"Select [Password] from Users where Username = '{userName}'";
                DataView dv = (DataView)SqlDataSource2.Select(new DataSourceSelectArguments());
                DataTable dt = dv.ToTable();
                foreach (DataRow dr in dt.Rows)
                    Password = dr[0].ToString();
            }   
            String Permissions = userType.SelectedItem.Text.ToString();
            String Level = "";
            if (!Permissions.Equals("Admin"))
                Level = level.SelectedItem.Text.ToString();
            try
            {
                SqlDataSource1.UpdateCommand = $"UPDATE Users" +
                    $" set [PersonName] = '{name}', [Password] = '{Password}', [Class] = '{Permissions}', [Level] = '{Level}'" +
                    $" WHERE [Username] = '{userName}';";
                SqlDataSource1.Update();
        }
            catch (OleDbException ex)
            {
                error.Text = ex.Message;
            }
}
    }
}