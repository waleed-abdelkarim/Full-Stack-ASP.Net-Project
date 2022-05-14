<%@ Page Title="Welcome Admin" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="IS424_Project.Sub_pages.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="../../img/web.png" />
	 <script src="../../Script/JavaScript.js">
          document.onload = test("waleed");
   </script> 
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
    <section id="description" style="background-image:url('../../img/poster.jpg');">
		</section>

	<section class="boxes">
			<a href="./Learn.aspx">
				<div class="box">
					<img src="../../img/web.png">
					<h2>Learning center</h2>
					<p>Here you will find a good resources to learn</p>
				</div>
			</a>

			<a href="./Exams.aspx">
				<div class="box">
					<img src="../../img/exams.png">
					<h2>Exams Center</h2>
					<p>Here you will be able to test your knowledge</p>
				</div>
			</a>

		


	</section>
     
</asp:Content>