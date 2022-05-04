<%@ Page Title="IS424 | Welcome" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="IS424_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>IS424 | Welcome</title>
	<link rel="icon" href="../img/web.png" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="description" style="background-image:url('../img/poster.jpg');">
		<div class="container">
			<h1>Welcome</h1>
			<p>Here you will be able to develop a complete frontend website
			</p>
		</div>
	</section>

	<section class="boxes">
			<a href="./html.html">
				<div class="box">
					<img src="../img/html.png">
					<h2>HTML</h2>
					<p>Learn the basic of HTML</p>
				</div>
			</a>

			<a href="./css.html">
				<div class="box">
					<img src="../img/css.png">
					<h2>CSS</h2>
					<p>Learn the basic of CSS</p>
				</div>
			</a>

			<a href="./JS.aspx">
				<div class="box">
					<img src="../img/JS.png">
					<h2>JavaScript</h2>
					<p>Learn the basic of JavaScript</p>
				</div>
			</a>

			<a href="./Contact.html">
				<div class="box">
					<img src="../img/contact.png">
					<h2>Contact Us</h2>
					<p>Contact us using form</p>
				</div>
			</a>

	</section>
     
</asp:Content>
