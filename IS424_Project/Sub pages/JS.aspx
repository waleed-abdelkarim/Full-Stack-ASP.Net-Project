<%@ Page Title="Learn JavaScript | Welcome" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeFile="JS.aspx.cs" Inherits="IS424_Project.Sub_pages.JS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="../img/JS.png" />
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
		<table border="0" class="container_table" id="lec" >
			 <caption id="JS_lectures"><h1 style="font-size:40px">Lectures</h1></caption>
		
		</table>
	</section>
	<section>

        <table border="0" class="container_table" id ="res">
			 <caption id="JS_resources"><h1 style="font-size:40px">Resources</h1></caption>
          
        </table>
    </section>
	 <script type="text/javascript">
         loadXMLDoc("../Data/JS.xml");
     </script>
</asp:Content>