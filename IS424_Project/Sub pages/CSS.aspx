<%@ Page Title="Learn css" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeFile="CSS.aspx.cs" Inherits="IS424_Project.Sub_pages.CSS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="../img/css.png" />
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
			<h2><a href="#CSS_lectures">Lectures</a></h2>
			<ul>
				<li>
					<a href="#ch5">Cascading Style Sheets™ (CSS)</a>
				</li>
			</ul>
				
			<h2><a href="#CSS_resources">Resources</a></h2>
			<ul>
				<li>
					<a href="#cs1">CSS Tutorial - Zero to Hero (Complete Course)</a>
				</li>
				<li>
					<a href="#cs2">CSS Crash Course For Absolute Beginners</a>
				</li>
				<li>
					<a href="#cs3"> W3Schools | CSS Tutorial</a>
				</li>
			</ul>
		</div>

		<div class="container_dis">
			<h1>Make your website looks better using CSS</h1>
			<p>CSS is designed to enable the separation of presentation and content, including layout, colors, and
				fonts. This separation can improve content accessibility; provide more flexibility and control in the
				specification of presentation characteristics; enable multiple web pages to share formatting by
				specifying the relevant CSS in a separate .css file, which reduces complexity and repetition in the
				structural content; and enable the .css file to be cached to improve the page load speed between the
				pages that share the file and its formatting
			</p>
		</div>


	</section>

	<section>
		<table border="0" class="container_table" >
			 <caption id="CSS_lectures"><h1 style="font-size:40px">Lectures</h1></caption>
			<tr>
				<td class="frame_box" id="ch5">
					<h2>Cascading Style Sheets™ (CSS)</h2>
					<embed src="../Files/CSS/IS446-chap05.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/CSS/IS446-chap05.pdf" target="_blank">here</a> and
						to download the labs click <a href="../Files/CSS/ch05CSS.zip">here</a></p>
				</td>
			</tr>
		</table>
	</section>
	<section>

        <table border="0" class="container_table">
			 <caption id="HTML_resources"><h1 style="font-size:40px">Resources</h1></caption>
          <tr>
				<td class="frame_box" id="cs1">
					<h2>CSS Tutorial - Zero to Hero (Complete Course)</h2>
					<iframe width="560" height="315" src="https://www.youtube.com/embed/1Rs2ND1ryYc"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</td>
			</tr>

			<tr>
				<td class="frame_box" id="cs2">
					<h2>CSS Crash Course For Absolute Beginnerss</h2>
					<iframe width="560" height="315" src="https://www.youtube.com/embed/yfoY53QXEnI"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</td>
			</tr>

			<tr>
				<td class="frame_box" id="cs3">
					<h2>W3Schools | CSS Tutorial</h2>
					<a href="https://www.w3schools.com/css/" target="_blank">
						<img src="../img/w3_css.png" alt="w3schools photo">
					</a>
				</td>
			</tr>
        </table>
    </section>
</asp:Content>
