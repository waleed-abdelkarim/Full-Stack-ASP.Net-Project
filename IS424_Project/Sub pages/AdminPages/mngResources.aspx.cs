using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project.Sub_pages.AdminPages
{
    public partial class mngResources : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lanList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lanList.SelectedIndex == 0) 
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "loadXMLDoc('../../Data/HTML.xml')", true);
            else if(lanList.SelectedIndex == 1)
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "loadXMLDoc('../../Data/CSS.xml')", true);
            else if(lanList.SelectedIndex == 2)
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "loadXMLDoc('../../Data/JS.xml')", true);
            else if (lanList.SelectedIndex == 3)
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "loadXMLDoc('../../Data/XML_Ajax.xml')", true);
            else if (lanList.SelectedIndex == 4)
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "loadXMLDoc('../../Data/LearnASP.xml')", true);




        }
    }
}