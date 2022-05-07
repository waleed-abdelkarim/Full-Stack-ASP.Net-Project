<%@ Page Title="Learn XML & Ajax" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeFile="XML_Ajax.aspx.cs" Inherits="IS424_Project.Sub_pages.XML_Ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="../img/xml.png" />
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
			<h2><a href="#XML_lectures">Lectures</a></h2>
			<ul>
				<li>
					<a href="#ch14">XML</a>
				</li>
				<li>
					<a href="#ch15">Ajax-EnabledRich Internet Applications</a>
				</li>
			</ul>
				
			<h2><a href="#XML_resources">Resources</a></h2>
			<ul>
				<li>
					<a href="#xmaj1">AJAX Crash Course (Vanilla JavaScript)</a>
				</li>
				<li>
					<a href="#xmaj2">AJAX Tutorial</a>
				</li>
				<li>
					<a href="#xmaj3">XML Video Tutorial</a>
				</li>
				<li>
					<a href="#xmaj4">W3Schools | XML Tutorial</a>
				</li>
				<li>
					<a href="#xmaj5">W3Schools | Ajax Tutorial</a>
				</li>
			</ul>
		</div>

		<div class="container_dis">
			<h1>Learn how to transfer data using XML and Ajax</h1>
			<p>Extensible Markup Language (XML) is a markup language and file format for storing, transmitting, and
				reconstructing arbitrary data. It defines a set of rules for encoding documents in a format that is 
				both human-readable and machine-readable. The World Wide Web Consortium's XML 1.0 Specification of 1998
				and several other related specifications—all of them free open standards—define XML.
				 With Ajax, web applications can send and retrieve data from a server asynchronously (in the background)
				without interfering with the display and behaviour of the existing page. By decoupling the data interchange
				layer from the presentation layer, Ajax allows web pages and, by extension, web applications, to change content
				dynamically without the need to reload the entire page
			</p>
		</div>


	</section>

	<section>
		<table border="0" class="container_table" >
			 <caption id="XML_lectures"><h1 style="font-size:40px">Lectures</h1></caption>
			<tr>
				<td class="frame_box" id="ch14">
					<h2>XML</h2>
					<embed src="../Files/XML_Ajax/IS446-chap14.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/XML_Ajax/IS446-chap14.pdf" target="_blank">here</a> and
						to download the labs click <a href="../Files/XML_Ajax/ch14XML.zip">here</a></p>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="ch15">
					<h2>Ajax-EnabledRich Internet Applications</h2>
					<embed src="../Files/XML_Ajax/IS446-chap15.pdf" width="100%" height="530px">
					<p>To download The slides click <a href="../Files/CSS/IS446-chap15.pdf" target="_blank">here</a></p>
				</td>
			</tr>
		</table>
	</section>
	<section>

        <table border="0" class="container_table">
			 <caption id="XML_resources"><h1 style="font-size:40px">Resources</h1></caption>
          <tr>
				<td class="frame_box" id="xmaj1">
					<h2>AJAX Crash Course (Vanilla JavaScript)</h2>
					<iframe width="560" height="315" src="https://www.youtube.com/embed/82hnvUYY6QA"
						title="YouTube video player" frameborder="0" allow="accelerometer; autoplay;
						clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			</tr>

			<tr>
				<td class="frame_box" id="xmaj2">
					<h2>AJAX Tutorial</h2>
					<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLE0071B4091E8948D"
						title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write;
						encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="xmaj3">
					<h2>XML Video Tutorial</h2>
					<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLBB413675AFBDC1F4"
						title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media;
						gyroscope; picture-in-picture" allowfullscreen></iframe>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="xmaj4">
					<h2>W3Schools | XML Tutorial</h2>
					<a href="https://www.w3schools.com/xml/default.asp" target="_blank">
						<img src="../img/w3_xml.png" alt="w3schools photo">
					</a>
				</td>
			</tr>
			<tr>
				<td class="frame_box" id="xmaj5">
					<h2>W3Schools | Ajax Tutorial</h2>
					<a href="https://www.w3schools.com/xml/ajax_intro.asp" target="_blank">
						<img src="../img/w3_ajax.png" alt="w3schools photo">
					</a>
				</td>
			</tr>
        </table>
    </section>
</asp:Content>
