<%@ Page Title="Learn HTML | Welcome" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeFile="HTML.aspx.cs" Inherits="IS424_Project.Sub_pages.HTML" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="../img/html.png" />
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
			<h2><a href="#HTML_lectures">Lectures</a></h2>
			<ul>
				<li>
					<a href="#ch4">Introduction to XHTML</a>
				</li>
			</ul>
				
			<h2><a href="#HTML_resources">Resources</a></h2>
			<ul>
				<li>
					<a href="#ht1">HTML Full Course - Build a Website Tutorial</a>
				</li>
				<li>
					<a href="#ht2">HTML Crash Course For Absolute Beginners</a>
				</li>
				<li>
					<a href="#ht3"> W3Schools | HTML Tutorial</a>
				</li>
			</ul>
		</div>

		<div class="container_dis">
				<h1>Learn how to develop basic website using HTML</h1>
			<p>The HyperText Markup Language, or HTML is the standard markup language for documents designed to be
				displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and
				scripting languages such as JavaScript. Web browsers receive HTML documents from a web server or from
				local storage and render the documents into multimedia web pages. HTML describes the structure of a web
				page semantically and originally included cues for the appearance of the document.
			</p>
		</div>


	</section>

	<section>
		<table border="0" class="container_table" >
			 <caption id="HTML_lectures"><h1 style="font-size:40px">Lectures</h1></caption>
			<tr>
				<td class="frame_box" id="ch4">
					<h2>Introduction to XHTML</h2>
					<embed src="../Files/HTML/IS446-chap04.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/HTML/IS446-chap04.pdf" target="_blank">here</a>
						and to download the labs click <a href="../Files/html/ch04XHTML.zip">here</a></p>
				</td>
			</tr>
		</table>
	</section>
	<section>

        <table border="0" class="container_table">
			 <caption id="HTML_resources"><h1 style="font-size:40px">Resources</h1></caption>
           <tr>
				<td class="frame_box" id="ht1">
					<h2>HTML Full Course - Build a Website Tutorial</h2>
					<iframe width="560" height="315" src="https://www.youtube.com/embed/pQN-pnXPaVg"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</td>
			</tr>

			<tr>
				<td class="frame_box" id="ht2">
					<h2>HTML Crash Course For Absolute Beginners</h2>
					<iframe width="560" height="315" src="https://www.youtube.com/embed/UB1O30fR-EE"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</td>
			</tr>

			<tr>
				<td class="frame_box" id="ht3">
					<h2>W3Schools | HTML Tutorial</h2>
					<a href="https://www.w3schools.com/html/" target="_blank">
						<img src="../img/w3_html.png" alt="w3schools photo">
					</a>
				</td>
			</tr>
        </table>
    </section>
</asp:Content>
