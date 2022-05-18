<%@ Page Title="Moderate Exam" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="True" Inherits="IS424_Project.Sub_pages.moderateExam" Codebehind="moderateExam.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<html xmlns="./Data/Moderate.xml">
		    <link rel="icon" href="../img/exams.png" />
  <script src="../Script/Moderate.js">
   </script> 
	<script type="text/javascript">
        document.onload = loadXMLDoc();

    </script>
		<script runat="server">

      protected void clear(object sender, EventArgs e)
        {
              Session.Contents.RemoveAll();
            Response.Redirect("./Home.aspx");
        }

</script>

   <style>
         .container_ce {
			margin: auto;
			overflow: hidden;
			min-height: 500px;
            min-width:500px;
		}
		.but {
			background-color: teal;
			padding: 5px;
			border: 0;
			font-size: 14px;
			color: white;
			font-weight: bold;
		}
		.but:hover {
			background-color: darkorange;
			padding: 5px;
			border: 0;
			font-size: 14px;
		}
		.answers{
			background-color: rgba(144, 238, 144, 0.4);
			border-radius: 5px;
		}
    </style>

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
	<form id="form1" runat="server" ><asp:TextBox ID="mark" runat="server" OnTextChanged="Mark_TextChanged" AutoPostBack="True" Visible="True" Height="1px" Width="1px" ViewStateMode="Inherit" Enabled="True" BackColor="LightGray" BorderStyle="None"></asp:TextBox></form>
	             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userConn %>" ProviderName="<%$ ConnectionStrings:userConn.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>

	
<section class="quiz">


</section>
</asp:Content>