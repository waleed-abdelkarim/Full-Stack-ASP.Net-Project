<%@ Page Title="Learning Center" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" Inherits="IS424_Project.Sub_pages.Learn" Codebehind="Learn.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title></title>
	<link rel="icon" href="../img/web.png" />
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
    <section id="description" style="background-image:url('../img/poster.jpg');">
		<div class="container">
			<h1>Welcome to Learning center</h1>
			<p>Here you will be able to learn how to develop a complete website
			</p>
		</div>
	</section>

	<section class="boxes">
			<a href="./HTML.aspx">
				<div class="box">
					<img src="../img/html.png">
					<h2>HTML</h2>
					<p>Learn the basic of HTML</p>
				</div>
			</a>

			<a href="./CSS.aspx">
				<div class="box">
					<img src="../img/css.png">
					<h2>CSS</h2>
					<p>Learn the basic of CSS</p>
				</div>
			</a>

			<a href="./JS.aspx">
				<div class="box">
					<img src="../img/JS.png">
					<h2>JavaScript</h2>
					<p>Learn the basic of JavaScript</p>
				</div>
			</a>

			<a href="./XML_Ajax.aspx">
				<div class="box">
					<img src="../img/xml.png">
					<h2>XML & Ajax</h2>
					<p>Learn the basic of XML and Ajax</p>
				</div>
			</a>

			<a href="./LearnASP.aspx">
				<div class="box">
					<img src="../img/asp.png" style="width: 50%;">
					<h2 >ASP .Net</h2>
					<p>Learn the basic of ASP .Net</p>
				</div>
			</a>

	</section>
     
</asp:Content>