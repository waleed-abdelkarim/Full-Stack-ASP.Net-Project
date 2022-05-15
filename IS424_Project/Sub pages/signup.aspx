<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="IS424_Project.Sub_pages.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {
        direction: ltr;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">Username</td>
                <td>
                    <asp:TextBox ID="TB_UserName" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_UserName" Display="Dynamic" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Name</td>
                <td>
                    <asp:TextBox ID="TB_pname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_pname" Display="Dynamic" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TB_password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TB_password" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TB_password0" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TB_password" ControlToValidate="TB_password0" Display="Dynamic" ErrorMessage="CompareValidator"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="error" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userConn %>" ProviderName="<%$ ConnectionStrings:userConn.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                </td>
                <td colspan="2" class="ce">
                    <asp:Button ID="insertBTN" runat="server" Text="Insert"  CssClass="formBtn" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
