<%@ Page Title="Manage Resources" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="True" Inherits="IS424_Project.Sub_pages.AdminPages.mngResources" CodeBehind="mngResources.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="../../img/web.png" />
    <style type="text/css">
        .container_center {
            font-size: 20px;
        }
        .test {
            align-content: center;
            margin: auto;
        }
        #submitbut {
            margin: 10px;
            font-size: 20px;
        }
        .auto-style1 {
            align-content: center;
            margin: auto;
            direction: ltr;
        }
        .auto-style3 {
            width: 245px;
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
        .auto-style10 {
            height: 266px;
        }
    </style>
    <script src="../../Script/readForManeger.js">
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" class="container_center">
        <table class="auto-style1">
            <caption>
                <h1>Edit course content here</h1>
            </caption>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="lanList" ErrorMessage="Please chose language" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style10">
                    <h2 style="text-align:center">Insert new content</h2>
                    <table id="ins" runat="server">
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Select Type"></asp:Label>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="type_list" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="type_list_SelectedIndexChanged">
                                    <asp:ListItem>Lectures</asp:ListItem>
                                    <asp:ListItem>Resources</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="type_list" ErrorMessage="Please select type" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label2" runat="server" Text="ID"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ID_TB" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ID_TB" ErrorMessage="please enter ID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="Label3" runat="server" Text="Title"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Title_TB" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Title_TB" ErrorMessage="Please enter title" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">
                                <asp:Label ID="file_label" runat="server" Text="File src" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="fileUpload" runat="server" Visible="False" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5">
                                <asp:Label ID="lab_label" runat="server" Text="Lab src" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style6">
                                <asp:FileUpload ID="labUpload" runat="server" Visible="False" />
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
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr>
                <td colspan="2" class="auto-style10" id="del" runat="server">

                    <h2 style="text-align: center">Delete contentnt<asp:TextBox ID="TextBox1" runat="server" Height="1px" Visible="False" Enabled="False" Width="1px" BackColor="LightGray" BorderColor="LightGray" BorderStyle="None"></asp:TextBox>
                    </h2>
                    <div id="langauge" runat="server">
                    </div>

                    <asp:Button ID="deletebtn" runat="server" OnClick="delete_Click" Text="Delete"   CausesValidation="False" Visible="False" />
                </td>
            </tr>


        </table>
    </form>


</asp:Content>