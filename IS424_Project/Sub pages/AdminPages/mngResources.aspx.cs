﻿using System;
using System.Collections.Generic;
using System.IO;
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
                path = "../../Data/HTML - Copy.xml";
            else if (lanList.SelectedIndex == 1)
                path = "../../Data/CSS - Copy.xml";
            else if (lanList.SelectedIndex == 2)
                path = "../../Data/JS.xml";
            else if (lanList.SelectedIndex == 3)
                path = "../../Data/XML_Ajax.xml";
            else if (lanList.SelectedIndex == 4)
                path = "../../Data/LearnASP.xml";

            TextBox1.Visible = true;
            deletebtn.Visible = true;

            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", $"loadXMLDoc('{path}')", true);
        
        }


        protected void delete_Click(object sender, EventArgs e)
        {
            if (lanList.SelectedIndex == 0)
                path = "../../Data/HTML - Copy.xml";
            else if (lanList.SelectedIndex == 1)
                path = "../../Data/CSS - Copy.xml";
            else if (lanList.SelectedIndex == 2)
                path = "../../Data/JS.xml";
            else if (lanList.SelectedIndex == 3)
                path = "../../Data/XML_Ajax.xml";
            else if (lanList.SelectedIndex == 4)
                path = "../../Data/LearnASP.xml";

            String s;
            try
            {
               
                XmlDocument doc = new XmlDocument();
                s = $"console.log('{path}')\nconsole.log('hello')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", s, true);
                doc.Load(Server.MapPath($"{path}"));
                s = $"console.log('1')";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", s, true);
                XmlNode node = null;
                XmlNodeList x = doc.GetElementsByTagName("item");
                s = $"console.log({path})";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", s, true);

                for (var i = 0; i < x.Count; i++)
                {
                    XmlNodeList y = x[i].ChildNodes;
                    for (var j = 0; j < y.Count; j++)
                    {

                        if (y[i].InnerXml.ToString().Equals(TextBox1.Text.ToString()))
                        {

                            node = y[i].ParentNode;
                            node.ParentNode.RemoveChild(node);
                            string newXML = doc.OuterXml;
                           
                            doc.Save(Server.MapPath(path));
                           
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                s = $"console.log('{ex.Message}');";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", s, true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
            string folder = Server.MapPath("~/Files/");
            Directory.CreateDirectory(folder);
            fileUpload.PostedFile.SaveAs(Path.Combine(folder, fileName));

            string labName = Path.GetFileName(labUpload.PostedFile.FileName);
            Directory.CreateDirectory(folder);
            labUpload.PostedFile.SaveAs(Path.Combine(folder, fileName));

            String id = ID_TB.Text;
            String title = Title_TB.Text;
            String websrc = web_TB.Text;

            XmlDocument doc = new XmlDocument();
            doc.Load(Server.MapPath("../../Data/CSS - Copy.xml"));
            XmlNode node = null;
            String savePath = "../Files/";
            if (type_list.SelectedIndex == 0)
            {
                XmlNodeList x = doc.GetElementsByTagName("Lectures");

                XmlElement item = doc.CreateElement("item");
                XmlElement idx = doc.CreateElement("id");
                idx.InnerText = id;
                item.AppendChild(idx);
                XmlElement titlex = doc.CreateElement("title");
                titlex.InnerText = title;
                item.AppendChild(titlex);
                XmlElement filesrcx = doc.CreateElement("filesrc");
                filesrcx.InnerText = savePath + fileName;
                item.AppendChild(filesrcx);
                XmlElement labNamex = doc.CreateElement("labsrc");
                labNamex.InnerText = savePath + labName;
                item.AppendChild(labNamex);
                XmlElement websrcx = doc.CreateElement("websrc");
                websrcx.InnerText = websrc;
                item.AppendChild(websrcx);
                x[0].AppendChild(item);
            }
            else
            {
                XmlNodeList x = doc.GetElementsByTagName("Resources");
            }

            string newXML = doc.OuterXml;
            doc.Save(Server.MapPath("../../Data/CSS - Copy.xml"));



        }

        protected void type_list_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (type_list.SelectedIndex == 0)
            {
                file_label.Visible = true;
                fileUpload.Visible = true;
                lab_label.Visible = true;
                labUpload.Visible = true;

                web_TB.Visible = false;
                Web_label.Visible = false;
            }
            else if (type_list.SelectedIndex == 1)
            {
                file_label.Visible = false;
                fileUpload.Visible = false;
                lab_label.Visible = false;
                labUpload.Visible = false;

                web_TB.Visible = true;
                Web_label.Visible = true;
            }
        }
    }
}