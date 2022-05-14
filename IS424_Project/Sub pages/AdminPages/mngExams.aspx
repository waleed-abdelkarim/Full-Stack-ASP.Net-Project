<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="True" CodeBehind="mngExams.aspx.cs" Inherits="IS424_Project.Sub_pages.AdminPages.mngExams" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 612px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Please Select the exam you want to edit</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
                        <asp:ListItem>Moderate</asp:ListItem>
                        <asp:ListItem>Expert</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div id="Moderate">
                        <div>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" autopostback = "true"
                                OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            </asp:GridView>
                        </div>
                        <br />
                    </div>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
