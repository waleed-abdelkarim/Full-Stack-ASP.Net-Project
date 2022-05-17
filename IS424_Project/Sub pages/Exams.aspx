<%@ Page Title="Exam Center" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeFile="Exams.aspx.cs" Inherits="IS424_Project.Sub_pages.Exams" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	    <link rel="icon" href="../../img/web.png" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<form id="form1" runat="server" class="container_center">
		   </form>
	 <section id="description" style="background-image:url('../img/poster.jpg');">
		<div class="container">
			<h1>Welcome to Exam center</h1>
			<p>Here you will be able to test your knowledge</p>
		</div>
	</section>


    <section class="boxes">
		<a href="./easyExam.aspx">
			<div class="box">
				<img src="../img/exams.png">
				<h2>Easy Exam</h2>
				<p>Exam with static questions</p>
			</div>
		</a>

		<a href="./moderateExam.aspx">
			<div class="box">
				<img src="../img/exams.png">
				<h2>Moderate Exam</h2>
				<p>Exam with questions from XML</p>
			</div>
		</a>

		<a href="./Expert_Quiz.aspx">
				<div class="box">
					<img src="../img/exams.png">
					<h2>Expert Exam</h2>
					<p>Exam with questions from DB</p>
				</div>
			</a>
		</section>
</asp:Content>
