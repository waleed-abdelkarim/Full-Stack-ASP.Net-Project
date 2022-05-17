<%@ Page Title="Welcome Admin" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="IS424_Project.Sub_pages.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="../../img/web.png" />
    <style type="text/css">
        .auto_style1 {
            font-weight: bold;
            font-size: 20px;
        }
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	   <form id="form1" runat="server" class="container_center">
		   </form>
    <section id="description" style="background-image:url('../../img/poster.jpg');">
		</section>

	<section class="boxes">
			<a href="./mngUsers.aspx">
				<div class="box">
					<img src="../../img/web.png">
					<h2>Manege Users</h2>
					<p>Add, Delete, and Update users</p>
				</div>
			</a>

			<a href="./mngResources.aspx">
				<div class="box">
					<img src="../../img/web.png">
					<h2>Manege Resources</h2>
					<p>Add new resources, or delete old ones</p>
				</div>
			</a>

		


	</section>
     
</asp:Content>