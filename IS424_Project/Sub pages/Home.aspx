<%@ Page Title="IS424 | Welcome"  Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="True" Inherits="IS424_Project.Sub_pages.Home" Codebehind="Home.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>IS424 | Welcome</title>
	<link rel="icon" href="../img/web.png" />
    <style type="text/css">
        .auto_style1 {
            font-weight: bold;
            font-size: 20px;
        }
        .auto-style1 {
            color: #FF0000;
        }
        header img {
            display: none;
            position: absolute;
            top: 1.5em;
            left: 1.5em;
            width: 40px;
            height: 40px;
        }
        #Content3{
            display: none;
            position: absolute;
            top: 1.5em;
            left: 1.5em;
            width: 40px;
            height: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
     
    <section id="description" style="background-image:url('../img/poster.jpg');">
		<form id="LoginForm" runat="server">
            <div id="login_inner" >
            <h2>Log in<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userConn %>" ProviderName="<%$ ConnectionStrings:userConn.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                </h2>
            <br />
        <table class="table_form">
            <tr>
                <td class="auto_style1" style="font-size: 20px; font-weight: bold;">User Name</td>
                <td>
                    <asp:TextBox ID="TB_UserName" runat="server" Width="140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: 20px; font-weight: bold">Password</td>
                <td>
                    <asp:TextBox ID="TB_Password" TextMode="Password" runat="server" Width="140px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="2" style="text-align:center;">
                    
                    <asp:Label ID="incorrectLabel" runat="server" Font-Size="Large" Text="The username or password you provided is incorrect" Visible="False"></asp:Label>
                    
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="LoginBtn" runat="server" Text="Login" Width="50%" OnClick="LoginBtn_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx" ForeColor="White">New User? SignUp</asp:HyperLink>
                </td>
            </tr>
        </table>
                </div>
        </form>

	</section>

	<section class="boxes">
			<a href="./Learn.aspx">
				<div class="box">
					<img src="../img/web.png">
					<h2>Learning center</h2>
					<p>Here you will find a good resources to learn</p>
				</div>
			</a>

			<a href="./Exams.aspx">
				<div class="box">
					<img src="../img/exams.png">
					<h2>Exams Center</h2>
					<p>Here you will be able to test your knowledge</p>
				</div>
			</a>

			
	</section>
     
</asp:Content>
