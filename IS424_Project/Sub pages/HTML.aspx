<%@ Page Title="Learn HTML | Welcome" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeFile="HTML.aspx.cs" Inherits="IS424_Project.Sub_pages.HTML" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="../img/html.png" />
	<script src="../../Script/readToPages.js">
    </script> 
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
	<form id="form1" runat="server" class="container_center">
		   </form>
	<div id="return">
        <a href="#top">Top</a>
    </div>
    <section id="description" style="background-image:url('../img/poster.jpg');">
			<div class="TOC" style="float: left;">
			
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
		<table border="0" class="container_table" id="lec" >
			 <caption id="HTML_lectures"><h1 style="font-size:40px">Lectures</h1></caption>

		</table>
	</section>
	<section>

        <table border="0" class="container_table" id="res">
			 <caption id="HTML_resources"><h1 style="font-size:40px">Resources</h1></caption>
          
        </table>
    </section>
	 <script type="text/javascript">
		 loadXMLDoc("../Data/HTML.xml");
     </script>
</asp:Content>
