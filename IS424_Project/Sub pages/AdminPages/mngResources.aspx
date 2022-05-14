<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="True" Inherits="IS424_Project.Sub_pages.AdminPages.mngResources" CodeFile="mngResources.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Script/readForManeger.js">
   </script> 
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
    </style>
     <script src="../../Script/mng.js">
   </script> 
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" class="container_center">
        <table class="test">
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
            <tr> <td colspan="2"> <h2>Delete content</h2></td></tr>
            <tr>
                <td colspan="2">
                    <div id="langauge">
                    </div>
                </td>
            </tr>
        </table>
    </form>
    
   
</asp:Content>
