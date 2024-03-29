﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IS424_Project.Sub_pages
{
    public partial class Exams : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                if (Session["UserName"] == null)
                    Response.Redirect("./Login.aspx");
            if (!string.IsNullOrEmpty(Session["Username"] as string))
                username.Visible = true;
        }
        }

    }