<%@ Page Title="IS424 | Welcome"  Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="IS424_Project.Sub_pages.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>IS424 | Welcome</title>
	<link rel="icon" href="../img/web.png" />
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            font-size: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="description" style="background-image:url('../img/poster.jpg');">
		<form id="Login" class="" runat="server">
            <div id="login-inner">
            <h2>Log in</h2>
            <br />
        <table class="table_form">
            <tr>
                <td class="auto-style1" style="font-size: 20px; font-weight: bold;">User Name</td>
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
                <td class="auto-style1">User Type</td>
                <td >
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                    </asp:DropDownList>
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
			<a href="./html.html">
				<div class="box">
					<img src="../img/html.png">
					<h2>HTML</h2>
					<p>Learn the basic of HTML</p>
				</div>
			</a>

			<a href="./css.html">
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

			<a href="./Contact.html">
				<div class="box">
					<img src="../img/contact.png">
					<h2>Contact Us</h2>
					<p>Contact us using form</p>
				</div>
			</a>

	</section>
     
</asp:Content>
