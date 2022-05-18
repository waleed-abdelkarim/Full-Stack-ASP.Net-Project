<%@ Page Title="Learn XML & Ajax" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" Inherits="IS424_Project.Sub_pages.XML_Ajax" Codebehind="XML_Ajax.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="../img/xml.png" />
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
	
<script runat="server">

      protected void clear(object sender, EventArgs e)
        {
              Session.Contents.RemoveAll();
            Response.Redirect("./Home.aspx");
        }

</script>
</asp:Content>
 <asp:Content ID="Content3" ContentPlaceHolderID="signoupalceholder" runat="server">
<div class="user" >
            <ul>
                <li><a id="username"
                            onserverclick="clear"
                            runat="server"
                    CausesValidation="False" visible="False">Sign out from Student</a></li>
            </ul>
        </div>
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
		<table border="0" class="container_table" id="lec" >
			 <caption id="XML_lectures"><h1 style="font-size:40px">Lectures</h1></caption>
		</table>
	</section>
	<section>

        <table border="0" class="container_table" id="res">
			 <caption id="XML_resources"><h1 style="font-size:40px">Resources</h1></caption>
        </table>
    </section>
	<script type="text/javascript">
        loadXMLDoc("../Data/XML_Ajax.xml");
    </script>
</asp:Content>
