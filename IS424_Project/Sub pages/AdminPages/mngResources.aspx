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
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 245px;
        }
        .auto-style4 {
            height: 308px;
        }
        .auto-style5 {
            width: 245px;
            height: 28px;
        }
        .auto-style6 {
            height: 28px;
        }
        .auto-style7 {
            width: 513px;
        }
    </style>
     <script src="../../Script/readForManeger.js">
   </script> 
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" class="container_center">
        <table class="auto-style1" border="1">
            <caption><h1>Edit course content here</h1></caption>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Please Select the language"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:RadioButtonList ID="lanList" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="lanList_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem>HTML</asp:ListItem>
                        <asp:ListItem>CSS</asp:ListItem>
                        <asp:ListItem>JavaScript</asp:ListItem>
                        <asp:ListItem>XML &amp; Ajax</asp:ListItem>
                        <asp:ListItem>ASP.Net</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    Please Select what you want to do</td>
                <td class="auto-style7">
                    <asp:RadioButtonList ID="actList" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="actList_SelectedIndexChanged">
                        <asp:ListItem>Insert content</asp:ListItem>
                        <asp:ListItem>Delete content</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr><td colspan="2"> <h2>Insert new content
                </h2></td></tr>
            <tr><td colspan="2" class="auto-style4">
                <div id="ins" runat="server" visible="False">
                   
                    <table class="auto-style2">
                        <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td>
                                <asp:RadioButtonList ID="type_list" runat="server" AutoPostBack="True">
                                    <asp:ListItem>0</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                </asp:RadioButtonList>
                                                        </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ID_TB" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label3" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Title_TB" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="file_label" runat="server" Text="File src" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="fileUpload" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="lab_label" runat="server" Text="Lab src" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:FileUpload ID="labUpload" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Web_label" runat="server" Text="Web src" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="web_TB" runat="server" Visible="False"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                            </td>
                        </tr>
                    </table>
                   
                </div>
                </td></tr>
            <tr> <td colspan="2"> <h2>Delete contentnt<asp:TextBox ID="TextBox1" runat="server" Height="16px"></asp:TextBox>
                </h2></td></tr>
            <tr>
                <td colspan="2">
                    <div id="langauge" runat="server">
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="delete" runat="server" OnClick="delete_Click" Text="Button"/>
                    </td>
            </tr>
        </table>
    </form>
    
   
</asp:Content>
