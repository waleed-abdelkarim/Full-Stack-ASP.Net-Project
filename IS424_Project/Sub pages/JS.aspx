<%@ Page Title="Learn JavaScript | Welcome" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="JS.aspx.cs" Inherits="IS424_Project.Sub_pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="../img/JS.png" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="description" style="background-image:url('../img/poster.jpg');">
		<div class="container">
			<h1>Learn how to improve your website with JavaScript</h1>
			<p>JavaScript is a high-level, often just-in-time compiled language. has dynamic typing, prototype-based
				object-orientation, and first-class functions. It is multi-paradigm, supporting event-driven,
				functional, and imperative programming styles. It has application programming interfaces (APIs) for
				working with text, dates, regular expressions, standard data structures, and the Document Object Model
				(DOM).
			</p>
		</div>
	</section>

	<section class="boxes">
			<a href="./JS_lectures.aspx">
				<div class="box">
					<img src="../img/ppt.png">
					<h2>Lectures</h2>
					<p>You will find the Slides & Labs here</p>
				</div>
			</a>

			<a href="./JS_resources.html">
				<div class="box">
					<img src="../img/resources.png">
					<h2>Resources</h2>
					<p>You will find the Online Resources here</p>
				</div>
			</a>

			<a href="./JS_Exam.html">
				<div class="box">
					<img src="../img/Exams.png">
					<h2>Exams</h2>
					<p>Test your knowledge here</p>
				</div>
			</a>
	</section>
</asp:Content>
