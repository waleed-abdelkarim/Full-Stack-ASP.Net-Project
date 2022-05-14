<%@ Page Title="Learn ASP" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="LearnASP.aspx.cs" Inherits="IS424_Project.Sub_pages.LearnASP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="../img/asp.png" />
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
    <div id="return">
        <a href="#top">Top</a>
    </div>
    <section id="description" style="background-image:url('../img/poster.jpg');">
			<div class="TOC" style="float: left;">
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
		<table border="0" class="container_table" id="lec">
			 <caption id="ASP_lectures"><h1 style="font-size:40px">Lectures</h1></caption>
		</table>
	</section>

	<section>
        <table border="0" class="container_table" id="res">
			 <caption id="HTML_resources"><h1 style="font-size:40px">Resources</h1></caption>
        </table>
    </section>
	<script type="text/javascript">
         loadXMLDoc("../Data/learnASP.xml");
    </script>
</asp:Content>
