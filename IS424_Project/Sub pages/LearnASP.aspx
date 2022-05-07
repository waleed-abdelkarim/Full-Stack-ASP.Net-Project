<%@ Page Title="Learn ASP" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="LearnASP.aspx.cs" Inherits="IS424_Project.Sub_pages.LearnASP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="../img/asp.png" />
	<style type="text/css">
        iframe {
            overflow: hidden;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="return">
        <a href="#top">Top</a>
    </div>
    <section id="description" style="background-image:url('../img/poster.jpg');">
			<div class="TOC" style="float: left;">
			<h2><a href="#ASP_lectures">Lectures</a></h2>
			<ul>
				<li>
					<a href="#ch25">ASP.NET 2.0 and ASP.NET Ajax</a>
				</li>
			</ul>
				
			<h2><a href="#ASP_resources">Resources</a></h2>
			<ul>
				<li>
					<a href="#asp1">Learn ASP.NET Core MVC (.NET 6) - Full Course</a>
				</li>
				<li>
					<a href="#asp2">ASP.NET Core Crash Course - C# App in One Hour</a>
				</li>
				<li>
					<a href="#asp3"> W3Schools | ASP and ASP.NET Tutorials</a>
				</li>
			</ul>
		</div>

		<div class="container_dis">
			<h1>Backend solutions with ASP.net</h1>
			<p>ASP.NET is an open-source, server-side web-application framework designed for web development
				to produce dynamic web pages. It was developed by Microsoft to allow programmers to build dynamic
				web sites, applications and services. The name stands for Active Server Pages Network Enabled Technologies. 
			</p>
		</div>


	</section>

	<section>
		<table border="0" class="container_table" >
			 <caption id="ASP_lectures"><h1 style="font-size:40px">Lectures</h1></caption>
			<tr>
				<td class="frame_box" id="ch25">
					<h2>ASP.NET 2.0 and ASP.NET Ajax</h2>
					<embed src="../Files/ASP/IS446-chap25.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/ASP/IS446-chap25.pdf" target="_blank">here</a> and
						to download the labs click <a href="../Files/ASP/ch25ASP.NET.zip">here</a></p>
				</td>
			</tr>
		</table>
	</section>
	<section>

        <table border="0" class="container_table">
			 <caption id="HTML_resources"><h1 style="font-size:40px">Resources</h1></caption>
          <tr>
				<td class="frame_box" id="asp1">
					<h2>Learn ASP.NET Core MVC (.NET 6) - Full Course</h2>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/hZ1DASYd9rk" 
					title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; 
					encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="asp2">
					<h2>ASP.NET Core Crash Course - C# App in One Hour</h2>
				<iframe width="560" height="315" src="https://www.youtube.com/embed/BfEjDD8mWYg" 
					title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
					clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</tr>

			<tr>
				<td class="frame_box" id="asp3">
					<h2>W3Schools | ASP and ASP.NET Tutorials</h2>
					<a href="https://www.w3schools.com/asp/default.asp" target="_blank">
						<img src="../img/w3_asp.png" alt="w3schools photo">
					</a>
				</td>
			</tr>
        </table>
    </section>
</asp:Content>
