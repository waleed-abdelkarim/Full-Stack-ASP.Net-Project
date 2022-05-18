<%@ Page Title="Learn css" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" Inherits="IS424_Project.Sub_pages.CSS" Codebehind="CSS.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="icon" href="../img/css.png" />
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
		<table border="0" class="container_table" id="lec" >
			 <caption id="CSS_lectures"><h1 style="font-size:40px">Lectures</h1></caption>
		
		</table>
	</section>
	<section>

        <table border="0" class="container_table" id="res">
			 <caption id="CSS_resources"><h1 style="font-size:40px">Resources</h1></caption>
          
        </table>
    </section>
	 <script type="text/javascript">
         loadXMLDoc("../Data/CSS.xml");
     </script>
</asp:Content>
