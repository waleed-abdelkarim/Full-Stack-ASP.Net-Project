<%@ Page Title="" Language="VB" MasterPageFile="~/masterPage.Master" AutoEventWireup="false" CodeFile="Expert_Quiz.aspx.vb" Inherits="Expert_Quiz" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<form id="form1" runat="server">

	<section style="text-align:center;">


					<p class="auto-style3">
						<strong>
						<asp:Label ID="Label2" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;
						</strong><asp:Label ID="Label1" runat="server" Text="Question here"></asp:Label>
						<br>
						&nbsp;
						<asp:RadioButton ID="Q1MC1" runat="server" GroupName="Q1" />
						<br>
						<asp:RadioButton ID="Q1MC2" runat="server" GroupName="Q1" />
						<br>
	                	<asp:RadioButton ID="Q1MC3" runat="server" GroupName="Q1" />
						&nbsp;</p>


					<p class="auto-style4">
						<strong>
						<asp:Label ID="Label19" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;</strong><asp:Label ID="Label20" runat="server" Text="Question here"></asp:Label>
						<br>
						<asp:RadioButton ID="Q2MC1" runat="server" GroupName="Q2" />
						<br>
						<asp:RadioButton ID="Q2MC2" runat="server" GroupName="Q2" />
						<br>
	                	<asp:RadioButton ID="Q2MC3" runat="server" GroupName="Q2" />
						<br>
                	</p>

					<p>
						<strong>
						<asp:Label ID="Label21" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;</strong><asp:Label ID="Label22" runat="server" Text="Question here"></asp:Label>
						<br>
						<asp:RadioButton ID="RadioButton7" runat="server" GroupName="Q3" />
						<br>
						<asp:RadioButton ID="RadioButton8" runat="server" GroupName="Q3" />
						<br>
	                	<asp:RadioButton ID="RadioButton9" runat="server" GroupName="Q3" />
						<br>
                	</p>

					<p>
						<strong>
						<asp:Label ID="Label23" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;</strong><asp:Label ID="Label24" runat="server" Text="Question here"></asp:Label>
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton12" runat="server" GroupName="Q4" />
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton11" runat="server" GroupName="Q4" />
						<br>
	                	&nbsp;<asp:RadioButton ID="RadioButton10" runat="server" GroupName="Q4" />
						<br>
                	</p>

					<p>
						<strong>
						<asp:Label ID="Label25" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;</strong><asp:Label ID="Label26" runat="server" Text="Question here"></asp:Label>
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton13" runat="server" GroupName="Q5" />
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton14" runat="server" GroupName="Q5" />
						<br>
	                	&nbsp;<asp:RadioButton ID="RadioButton15" runat="server" GroupName="Q5" />
						<br>
                	</p>

					<p>
						<strong>
						<asp:Label ID="Label27" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;</strong><asp:Label ID="Label28" runat="server" Text="Question here"></asp:Label>
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton17" runat="server" GroupName="Q6" />
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton16" runat="server" GroupName="Q6" />
						<br>
	                	&nbsp;<asp:RadioButton ID="RadioButton18" runat="server" GroupName="Q6" />
						<br>
                	</p>

					<p>
						<strong>
						<asp:Label ID="Label29" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;</strong><asp:Label ID="Label30" runat="server" Text="Question here"></asp:Label>
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton19" runat="server" GroupName="Q7" />
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton20" runat="server" GroupName="Q7" />
						<br>
	                	<asp:RadioButton ID="RadioButton21" runat="server" GroupName="Q7" />
						<br>
                	</p>

					<p>
						<strong>
						<asp:Label ID="Label31" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;</strong><asp:Label ID="Label32" runat="server" Text="Question here"></asp:Label>
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton22" runat="server" GroupName="Q8" />
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton24" runat="server" GroupName="Q8" />
						<br>
	                	&nbsp;<asp:RadioButton ID="RadioButton23" runat="server" GroupName="Q8" />
						<br>
                	</p>

					<p>
						<strong>
						<asp:Label ID="Label33" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;</strong><asp:Label ID="Label34" runat="server" Text="Question here"></asp:Label>
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton25" runat="server" GroupName="Q9" />
						<br>
						&nbsp;<asp:RadioButton ID="RadioButton26" runat="server" GroupName="Q9" />
						<br>
	                	&nbsp;<asp:RadioButton ID="RadioButton27" runat="server" GroupName="Q9" />
						<br>
                	</p>

					<p>
						<strong>
						<asp:Label ID="Label35" runat="server" Text="Question Number"></asp:Label>
						<br>
						&nbsp;</strong><asp:Label ID="Label36" runat="server" Text="Question here"></asp:Label>
						<br>
						<asp:RadioButton ID="RadioButton28" runat="server" GroupName="Q10" />
						<br>
						<asp:RadioButton ID="RadioButton29" runat="server" GroupName="Q10" />
						<br>
	                	&nbsp;<asp:RadioButton ID="RadioButton30" runat="server" GroupName="Q10" />
						<br>
                	</p>

						<p>
	        				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Questions]"></asp:SqlDataSource>
	        				&nbsp;
                            <asp:Button ID="SubmitButton" runat="server" Text="Submit" />
&nbsp;
                            <asp:Button ID="ClearButton" runat="server" Text="Clear" />
&nbsp;
                            <asp:Button ID="ShuffleButton" runat="server" Text="Shuffle" />
		         		</p>   


	</section>
     
    </form>
     
</asp:Content>