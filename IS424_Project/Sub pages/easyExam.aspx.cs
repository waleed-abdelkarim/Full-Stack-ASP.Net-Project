﻿using System;
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
            if (!IsPostBack) { 
                if (string.IsNullOrEmpty(Session["level"] as string))
                    Response.Redirect("./Login.aspx");
                if (!string.IsNullOrEmpty(Session["Username"] as string))
                    username.Visible = true;
            }
           }

        protected void mark_TextChanged(object sender, EventArgs e)
        {
            Label1.Text = "hello";
            if (int.Parse(mark.Text.ToString()) >= 60)
                if (!string.IsNullOrEmpty(Session["level"] as string))
                {
                    SqlDataSource1.UpdateCommand = $"UPDATE Users" +
                    $" set [Level] = 'Moderate' WHERE [Username] = '{Session["Username"]}';";
                    SqlDataSource1.Update();
                    Session["level"] = "Moderate";
                }
        }
        //protected void Mark_TextChanged(object sender, EventArgs e)
        //{
        //    if (int.Parse(mark.Text.ToString()) >= 60)
        //        try
        //        {
        //            SqlDataSource1.UpdateCommand = $"UPDATE Users" +
        //            $" set [Level] = 'Moderate' WHERE [Username] = '{Session["Username"]}';";
        //            SqlDataSource1.Update();
        //            Session["level"] = "Moderate";
        //            Label1.Text = SqlDataSource1.UpdateCommand;
        //        }
        //        catch (Exception ex)
        //        {
        //            Label1.Text=ex.Message;
        //        }
        //}
    }
}