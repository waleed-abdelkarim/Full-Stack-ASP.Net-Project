<%@ Page Title="IS424 | Signup" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="True" CodeBehind="signup.aspx.cs" Inherits="IS424_Project.Sub_pages.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="icon" href="../img/web.png" />
    <style type="text/css">
        .auto-style4 {
            height: 26px;
            font-size: large;
        }
        .auto-style5 {
            height: 36px;
        }
        .auto-style6 {
            direction: ltr;
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
        <section id="description" style="background-image:url('../img/poster.jpg'); min-height: 600px;" class="auto-style6">
		<form id="LoginForm" style="min-height: 600px;" runat="server">
            <div id="login_inner" >
            <h2>Sign up</h2>
            <br />
        <table class="table_form">
            <tr>
                <td class="auto_style1" style="font-size: 20px; font-weight: bold;">Username</td>
                <td>
                    <asp:TextBox ID="TB_UserName" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_UserName" Display="Dynamic" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" style="font-size: 20px; font-weight: bold;">Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TB_pname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_pname" Display="Dynamic" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 20px; font-weight: bold">Password</td>
                <td>
                    <asp:TextBox ID="TB_password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_password" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="font-size: 20px; font-weight: bold">Password</td>
                <td>
                    <asp:TextBox ID="TB_password0" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TB_password" ControlToValidate="TB_password0" Display="Dynamic" ErrorMessage="Password doesn't match" ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2" style="text-align:center;">
                    
                    <asp:Label ID="incorrectLabel" runat="server" ForeColor="Red" Text="The user name is taken" Visible="False"></asp:Label>
                </td>
                <td class="auto-style4" style="text-align:center;">
                    
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <asp:Button ID="SignupBtn" runat="server" Text="Sign up" Width="50%" OnClick="SignupBtn_Click"/>
                </td>
                <td style="text-align:center;">
                    &nbsp;</td>
            </tr>
            </table>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userConn %>" ProviderName="<%$ ConnectionStrings:userConn.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                </div>
        </form>

	</section>
</asp:Content>
