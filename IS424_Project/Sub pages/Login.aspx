<%@ Page Title="IS424 | Login" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="True" Inherits="IS424_Project.Sub_pages.Login" Codebehind="Login.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="../img/web.png" />
    <style type="text/css">
        .auto_style1 {
            font-weight: bold;
            font-size: 20px;
        }
        .auto-style1 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="description" style="background-image:url('../img/poster.jpg'); min-height: 600px;">
        
		<form id="LoginForm" style="min-height: 600px;" runat="server">
            <p>You are not allowed to enter this page, please login with your acount Or complete the lower level exams </p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userConn %>" ProviderName="<%$ ConnectionStrings:userConn.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            <div id="login_inner" >
            <h2>Log in</h2>
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
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="./signup.aspx" ForeColor="White">New User? SignUp</asp:HyperLink>
                </td>
            </tr>
        </table>
                </div>
        </form>

	</section>
</asp:Content>
