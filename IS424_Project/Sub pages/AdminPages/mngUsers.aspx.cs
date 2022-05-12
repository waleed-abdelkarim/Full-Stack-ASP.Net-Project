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

        }

        protected void TB_UserName_TextChanged(object sender, EventArgs e)
        {
            String userName = TB_UserName.Text;
            SqlDataSource2.SelectCommand = "Select * from Users where Username = '" + userName + "'";
            DataView dv = (DataView)SqlDataSource2.Select(new DataSourceSelectArguments());
            DataTable dt = dv.ToTable();

            if (dt.Rows.Count <= 0)
            {

            }
            else
            {
                foreach (DataRow dr in dt.Rows)
                {
                    TB_pname.Text = dr[5].ToString();
                }
            }
        }
    }
}