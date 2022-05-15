using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml;

namespace IS424_Project.Sub_pages.AdminPages
{
    public partial class mngResources : System.Web.UI.Page
    {
        String path;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lanList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lanList.SelectedIndex == 0)
                path = "../../Data/HTML.xml";
            else if (lanList.SelectedIndex == 1)
                path = "../../Data/CSS - Copy.xml";
            else if (lanList.SelectedIndex == 2)
                path =  ".. /../Data/JS.xml";
            else if (lanList.SelectedIndex == 3)
                path =  ".. /../Data/XML_Ajax.xml";
            else if (lanList.SelectedIndex == 4)
                path = "../../Data/LearnASP.xml";

            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", $"loadXMLDoc('{path}')", true);


        }

        protected void delete_Click(object sender, EventArgs e)
        {
            try
            {
                XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("../../Data/CSS - Copy.xml"));
            XmlNode node = null;
            XmlNodeList x = doc.GetElementsByTagName("item");
            
                for (var i = 0; i < x.Count; i++)
            {
                XmlNodeList y = x[i].ChildNodes;
                for (var j = 0; j < y.Count; j++)
                {
                    if (y[i].InnerXml.ToString().Equals(test.InnerHtml.ToString()))
                    {
                            node = y[i].ParentNode;
                            node.ParentNode.RemoveChild(node);
                            string newXML = doc.OuterXml;
                            doc.Save(Server.MapPath("../../Data/CSS - Copy.xml"));
                      
                    }
                }
            }
            }
            catch (Exception ex)
            {
                test.InnerHtml = ex.Message;
            }
        }
    }
}