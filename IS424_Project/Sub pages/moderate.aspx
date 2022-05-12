<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="moderate.aspx.cs" Inherits="IS424_Project.Sub_pages.moderate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="../Script/Moderate.js" >
    </script>
	<link rel="stylesheet" href="../CSS/style.css"/>
    <style>
         .container_ce {
			margin: auto;
			overflow: hidden;
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
    </style>
</head>
<body  onload="loadXMLDoc();">
       <header>
        <div class="container">
            <h1 id="logo"><a href="./Home.aspx" style="color: darkorange; text-decoration: none">IS424</a> Web
				Application Development
            </h1>

            <div class="menu">
                <ul>
                    <li><a href="./Home.aspx">Home</a></li>

                    <li><a href="./Learn.aspx">Learn</a>
                        <ul>
                            <li><a href="./HTML.aspx">HTML</a></li>
                            <li><a href="./CSS.aspx">CSS</a></li>
                            <li><a href="./JS.aspx">JavaScript</a></li>
                            <li><a href="./XML_Ajax.aspx">XML & Ajax</a></li>
                            <li><a href="./LearnASP.aspx">ASP .Net</a></li>
                        </ul>
                    </li>

                     <li><a href="./Exams.aspx">Exams</a>
                        <ul>
                            <li><a href="./easy.aspx">Easy</a></li>
                            <li><a href="./moderateExam.aspx">Moderate</a></li>
                            <li><a href="./expert.aspx">Expert</a></li>
                        </ul>
                    </li>


                    <li><a href="./Contact.html">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </header>

    <section>


    </section>


    <footer style="margin-top: 100px;">
        <div class="container" style="margin-top: 20px; text-align: center;">
            <table border="0" width="99%" id="names">
                <tr>
                    <td style="color: darkorange;">Bassam</td>
                    <td>Bader</td>
                    <td style="color: darkorange;">Faisal</td>
                    <td>Faris</td>
                    <td style="color: darkorange;">Waleed</td>
                </tr>
                <tr>
                    <td style="color: darkorange;">441106059</td>
                    <td>441106059</td>
                    <td style="color: darkorange;">441106059</td>
                    <td>441106059</td>
                    <td style="color: darkorange;">441106059</td>
                </tr>

            </table>
            <p>IS424 Web Application Development,<span style="color: darkorange;"> Copyright &copy; 2022 </span></p>
        </div>
    </footer>
</body>
</html>
