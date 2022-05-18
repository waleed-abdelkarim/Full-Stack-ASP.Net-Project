<%@ Page Title="Exam Center" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" Inherits="IS424_Project.Sub_pages.Exams" Codebehind="Exams.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	    <link rel="icon" href="../../img/web.png" />
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
			<h1>Welcome to Exam center</h1>
			<p>Here you will be able to test your knowledge</p>
		</div>
	</section>


    <section class="boxes">
		<a href="./easyExam.aspx">
			<div class="box">
				<img src="../img/exams.png">
				<h2>Easy Exam</h2>
				<p>Exam with static questions</p>
			</div>
		</a>

		<a href="./moderateExam.aspx">
			<div class="box">
				<img src="../img/exams.png">
				<h2>Moderate Exam</h2>
				<p>Exam with questions from XML</p>
			</div>
		</a>

		<a href="./Expert_Quiz.aspx">
				<div class="box">
					<img src="../img/exams.png">
					<h2>Expert Exam</h2>
					<p>Exam with questions from DB</p>
				</div>
			</a>
		</section>
</asp:Content>
