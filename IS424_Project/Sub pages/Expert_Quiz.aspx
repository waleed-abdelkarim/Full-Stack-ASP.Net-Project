<%@ Page Title="Expert Exam" Language="VB" MasterPageFile="~/masterPage.Master" AutoEventWireup="false" CodeFile="Expert_Quiz.aspx.vb" Inherits="Expert_Quiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <style>
         .container_ce {
			margin: auto;
			overflow: hidden;
			min-height: 500px;
            min-width:500px;
		}
		.but {
			background-color: teal;
			padding: 5px;
			border: 0;
			font-size: 14px;
			color: white;
			font-weight: bold;
		}
		.but:hover {
			background-color: darkorange;
			padding: 5px;
			border: 0;
			font-size: 14px;
		}
		.answers{
			background-color: rgba(144, 238, 144, 0.4);
			border-radius: 5px;
		}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<asp:Label runat="server" CssClass="quiz">
		<h1 style="text-align:center;">Expert Exam</h1>
	</asp:Label>

	<form runat="server" onload="loadItems" class="quiz">

		 <asp:Table ID="Table2" runat="server" CssClass="container_ce" Height="92px" Width="167px">

			<asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN1" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q1" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q1MC1" runat="server" GroupName="Q1" />
						<br>
						<asp:RadioButton ID="Q1MC2" runat="server" GroupName="Q1" />
						<br>
						<asp:RadioButton ID="Q1MC3" runat="server" GroupName="Q1" />
						<br>
					</p>
					<asp:label visible="false" id="ans1" class="answers" runat="server" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			 <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN2" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q2" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q2MC1" runat="server" GroupName="Q2" />
						<br>
						<asp:RadioButton ID="Q2MC2" runat="server" GroupName="Q2" />
						<br>
						<asp:RadioButton ID="Q2MC3" runat="server" GroupName="Q2" />
						<br>
					</p>
					<asp:label visible="false" id="ans2" class="answers" runat="server" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			 <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN3" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q3" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q3MC1" runat="server" GroupName="Q3" />
						<br>
						<asp:RadioButton ID="Q3MC2" runat="server" GroupName="Q3" />
						<br>
						<asp:RadioButton ID="Q3MC3" runat="server" GroupName="Q3" />
						<br>
					</p>
					<asp:label visible="false" id="ans3" class="answers" runat="server" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			 <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN4" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q4" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q4MC1" runat="server" GroupName="Q4" />
						<br>
						<asp:RadioButton ID="Q4MC2" runat="server" GroupName="Q4" />
						<br>
						<asp:RadioButton ID="Q4MC3" runat="server" GroupName="Q4" />
						<br>
					</p>
					<asp:label visible="false" id="ans4" class="answers" runat="server" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			 <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN5" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q5" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q5MC1" runat="server" GroupName="Q5" />
						<br>
						<asp:RadioButton ID="Q5MC2" runat="server" GroupName="Q5" />
						<br>
						<asp:RadioButton ID="Q5MC3" runat="server" GroupName="Q5" />
						<br>
					</p>
					<asp:label visible="false" id="ans5" class="answers" runat="server" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			 <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN6" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q6" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q6MC1" runat="server" GroupName="Q6" />
						<br>
						<asp:RadioButton ID="Q6MC2" runat="server" GroupName="Q6" />
						<br>
						<asp:RadioButton ID="Q6MC3" runat="server" GroupName="Q6" />
						<br>
					</p>
					<asp:label visible="false" id="ans6" class="answers" runat="server" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			 <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN7" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q7" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q7MC1" runat="server" GroupName="Q7" />
						<br>
						<asp:RadioButton ID="Q7MC2" runat="server" GroupName="Q7" />
						<br>
						<asp:RadioButton ID="Q7MC3" runat="server" GroupName="Q7" />
						<br>
					</p>
					<asp:label visible="false" id="ans7" class="answers" runat="server" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			 <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN8" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q8" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q8MC1" runat="server" GroupName="Q8" />
						<br>
						<asp:RadioButton ID="Q8MC2" runat="server" GroupName="Q8" />
						<br>
						<asp:RadioButton ID="Q8MC3" runat="server" GroupName="Q8" />
						<br>
					</p>
					<asp:label visible="false" id="ans8" class="answers" runat="server" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			 <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN9" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q9" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q9MC1" runat="server" GroupName="Q9" />
						<br>
						<asp:RadioButton ID="Q9MC2" runat="server" GroupName="Q9" />
						<br>
						<asp:RadioButton ID="Q9MC3" runat="server" GroupName="Q9" />
						<br>
					</p>
					<asp:label visible="false" id="ans9" class="answers" runat="server" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			 <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<strong>
							<asp:Label ID="QN10" runat="server" Text="Question Number"></asp:Label>
						</strong>
						<br>
						<p>
							<asp:Label ID="Q10" runat="server" Text="Question here"></asp:Label>
						</p>
						<asp:RadioButton ID="Q10MC1" runat="server" GroupName="Q10" />
						<br>
						<asp:RadioButton ID="Q10MC2" runat="server" GroupName="Q10" />
						<br>
						<asp:RadioButton ID="Q10MC3" runat="server" GroupName="Q10" />
						<br>
					</p>
					<asp:label visible="false" id="ans10" runat="server" CssClass="answers" Font-Bold="true"></asp:label>
				</asp:TableCell>
			</asp:TableRow>

			  

			  <asp:TableRow runat="server">
				<asp:TableCell>
					<p>
						<asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="but" />
					</p>
				</asp:TableCell>
			</asp:TableRow>

		</asp:table>

	</form>
     
</asp:Content>