<%@ Page Title="Manage Users" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="True" Inherits="IS424_Project.Sub_pages.AdminPages.mngUsers" CodeFile="mngUsers.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="icon" href="../../img/web.png" />
    <style type="text/css">
        .container_center {
            font-size: 20px;
             align-content: center;
             margin: auto;
        }
        .formInput{
            text-align: left ;
            margin: auto;
        }
        .grid{
             align-content: center;
            margin: auto;
        }
        .auto-style2 {
        height: 26px;
    }
        .auto-style3 {
            direction: ltr;
        }
        .auto-style4 {
            width: 210px;
        }
        .auto-style5 {
            height: 26px;
            width: 210px;
        }
        .auto-style6 {
            width: 210px;
            direction: ltr;
        }
        .auto-style7 {
            width: 120px;
        }
        .auto-style8 {
            height: 26px;
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container_center" style="text-align:center">
        <h1>Manege website Users</h1>
          
         <form id="form1" runat="server" class="container_center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userConn %>" ProviderName="<%$ ConnectionStrings:userConn.ProviderName %>" SelectCommand="SELECT [ID], [Username], [PersonName], [Class], [Level] FROM [Users] ORDER BY [Class], [Level], [PersonName]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:userConn %>" ProviderName="<%$ ConnectionStrings:userConn.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            <table class="formInput">
            <tr>
                <td class="auto-style7">Username</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TB_UserName" runat="server" OnTextChanged="TB_UserName_TextChanged" AutoPostBack="True" Font-Size="Medium"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB_UserName" Display="Dynamic" ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Name</td>
                <td>
                    <asp:TextBox ID="TB_pname" runat="server" Font-Size="Medium"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TB_pname" Display="Dynamic" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TB_password" runat="server" TextMode="Password" Font-Size="Medium"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    </td>
            </tr>
            <tr>
                <td class="auto-style7">User Type</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="userType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="userType_SelectedIndexChanged" Font-Size="Medium">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="userType" Display="Dynamic" ErrorMessage="User Type is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Student Level</td>
                <td>
                    <asp:DropDownList ID="level" runat="server" Font-Size="Medium">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Beginner</asp:ListItem>
                        <asp:ListItem>Moderate</asp:ListItem>
                        <asp:ListItem>Expert</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="error" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="insertBTN" runat="server" Text="Insert" OnClick="insertBTN_Click" CssClass="formBtn" Font-Size="Large" />
                    <asp:Button ID="deleteBTN" runat="server" Text="Delete" OnClick="deleteBTN_Click" CssClass="formBtn" Font-Size="Large" />
                    <asp:Button ID="updateBTN" runat="server" Text="Update" CssClass="formBtn" OnClick="updateBTN_Click" Font-Size="Large" />
                </td>
            </tr>
        </table>


        
            <div class="grid">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" EmptyDataText="-" ShowHeaderWhenEmpty="True" Width="90%">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="PersonName" HeaderText="PersonName" SortExpression="PersonName" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                </Columns>
                <HeaderStyle BackColor="Black" ForeColor="White" />
            </asp:GridView>
            <br />
        </div>
         </form>
    </section>
</asp:Content>
