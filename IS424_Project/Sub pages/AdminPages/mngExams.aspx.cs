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
    public partial class mngExams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("../../Data/Moderate.xml"));
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_SelectedIndexChanged(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            bindGridView(); 
        }
    
        protected void bindGridView(){
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("../../Data/Moderate.xml"));
            GridView1.DataSource = ds;
            GridView1.DataBind();
        } 
}
}