<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="True" Inherits="IS424_Project.Sub_pages.AdminPages.mngResources" Codebehind="mngResources.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .container_center {
            font-size: 20px;
           
        }
        .test{
            align-content:center;
            margin: auto;
        }
        #submitbut{
            margin: 10px;
            font-size: 20px;
        }
        .auto-style1 {
            align-content: center;
            margin: auto;
            direction: ltr;
        }
    </style>
     <script src="../../Script/readForManeger.js">
   </script> 
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" class="container_center">
        <table class="auto-style1">
            <caption><h1>Edit course content here</h1></caption>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Please Select the language"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="lanList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="lanList_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>HTML</asp:ListItem>
                        <asp:ListItem>CSS</asp:ListItem>
                        <asp:ListItem>JavaScript</asp:ListItem>
                        <asp:ListItem>XML &amp; Ajax</asp:ListItem>
                        <asp:ListItem>ASP.Net</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr><td colspan="2"> <h2>Insert new content</h2></td></tr>
            <tr><td colspan="2">
                <div id="ins">
                   
                </div>
                </td></tr>
            <tr> <td colspan="2"> <h2>Delete content<asp:Label ID="idlabel" runat="server" Text="Label"></asp:Label>
                </h2><div id ="test" runat="server">cs1</div></td></tr>
            <tr>
                <td colspan="2">
                    <div id="langauge">
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Button" />
                </td>
            </tr>
        </table>
    </form>
    
   
</asp:Content>
