<%@ Page Title="Learn JavaScript | Welcome" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeFile="JS.aspx.cs" Inherits="IS424_Project.Sub_pages.JS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="../img/JS.png" />
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
			<h2><a href="#JS_lectures">Lectures</a></h2>
			<ul>
				<li>
					<a href="#ch6">JavaScript: Introduction to Scripting</a>
				</li>
				<li>
					<a href="#ch7">JavaScript: Control Statements I</a>
				</li>
				<li>
					<a href="#ch8">JavaScript: Control Statements II</a>
				</li>
				<li>
					<a href="#ch9">JavaScript: Functions</a>
				</li>
				<li>
					<a href="#ch10">JavaScript: Arrays</a>
				</li>
				<li>
					<a href="#ch11">JavaScript: Objects </a>
				</li>
			</ul>
				
			<h2><a href="#JS_resources">Resources</a></h2>
			<ul>
                <li>
                    <a href="#JS1">JavaScript Tutorial for Beginners</a>
                </li>
                <li>
                    <a href="#JS2">JavaScript for Beginners</a>
                </li>
                <li>
                    <a href="#JS3">W3Schools | JavaScript Tutorial</a>
                </li>
            </ul>
		</div>

		<div class="container_dis">
			<h1>Learn how to improve your website with JavaScript</h1>
			<p style="margin: 0 10px 0 10px">JavaScript is a high-level, often just-in-time compiled language. has dynamic typing, prototype-based
				object-orientation, and first-class functions. It is multi-paradigm, supporting event-driven,
				functional, and imperative programming styles. It has application programming interfaces (APIs) for
				working with text, dates, regular expressions, standard data structures, and the Document Object Model
				(DOM).
			</p>
		</div>


	</section>

	<section>
		<table border="0" class="container_table" >
			 <caption id="JS_lectures"><h1 style="font-size:40px">Lectures</h1></caption>
			<tr>
				<td class="frame_box" id="ch6">
					<h2>JavaScript: Introduction to Scripting</h2>
					<embed src="../Files/JS/IS446-chap06.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/JS/IS446-chap06.pdf" target="_blank">here</a> and
						to download the labs click <a href="../Files/JS/ch06IntroToJavaScript.zip">here</a></p>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="ch7">
					<h2>JavaScript: Control Statements I</h2>
					<embed src="../Files/JS/IS446-chap07.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/JS/IS446-chap07.pdf" target="_blank">here</a> and
						to download the labs click <a href="../Files/JS/ch07JavaScriptControlStatements1.zip">here</a>
					</p>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="ch8">
					<h2>JavaScript: Control Statements II</h2>
					<embed src="../Files/JS/IS446-chap08.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/JS/IS446-chap08.pdf" target="_blank">here</a> and
						to download the labs click <a href="../Files/JS/ch08JavaScriptControlStatements2.zip">here</a>
					</p>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="ch9">
					<h2>JavaScript: Control Statements II</h2>
					<embed src="../Files/JS/IS446-chap09.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/JS/IS446-chap09.pdf" target="_blank">here</a> and
						to download the labs click <a href="../Files/JS/ch09JavaScriptFunctions.zip">here</a></p>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="ch10">
					<h2>JavaScript: Control Statements II</h2>
					<embed src="../Files/JS/IS446-chap10.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/JS/IS446-chap10.pdf" target="_blank">here</a> and
						to download the labs click <a href="../Files/JS/ch10JavaScriptArrays.zip">here</a></p>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="ch11">
					<h2>JavaScript: Control Statements II</h2>
					<embed src="../Files/JS/IS446-chap11.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/JS/IS446-chap11.pdf" target="_blank">here</a> and
						to download the labs click <a href="../Files/JS/ch11JavaScriptObjects.zip">here</a></p>
				</td>
			</tr>
		</table>
	</section>
	<section>

        <table border="0" class="container_table">
			 <caption id="JS_resources"><h1 style="font-size:40px">Resources</h1></caption>
            <tr>
                <td class="frame_box" id="JS1">
                    <h2>JavaScript Tutorial for Beginners: Learn JavaScript in 1 Hour</h2>
                    <iframe src="https://www.youtube.com/embed/W6NZfCO5SIk" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                </td>
            </tr>

            <tr>
                <td class="frame_box" id="JS2">
                    <h2>JavaScript for Beginners</h2>
                    <iframe src="https://www.youtube.com/embed/videoseries?list=PLzMcBGfZo4-njtc5xy3qli4cN2zlKsoxd"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                </td>
            </tr>

            <tr>
                <td class="frame_box" id="JS3">
                    <h2>W3Schools | JavaScript Tutorial</h2>
                    <a href="https://www.w3schools.com/js/default.asp" target="_blank">
                        <img src="../img/w3_js.png" alt="w3schools photo">
                    </a>
                </td>
            </tr>
        </table>
    </section>
</asp:Content>