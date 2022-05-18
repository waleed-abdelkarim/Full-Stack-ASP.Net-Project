<%@ Page Title="Easy Exam" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" Inherits="IS424_Project.Sub_pages.easyExam" Codebehind="easyExam.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="../img/exams.png" />
    <script runat="server">

      protected void clear(object sender, EventArgs e)
        {
              Session.Contents.RemoveAll();
            Response.Redirect("./Home.aspx");
        }

</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="signoupalceholder" runat="server">

 <div class="user" >
            <ul>
                <li><a id="username"
                            onserverclick="clear"
                            runat="server"
                    CausesValidation="False" visible="False">Sign out from Student</a></li>
            </ul>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <form id="form2" runat="server" ><asp:TextBox ID="mark" runat="server" OnTextChanged="mark_TextChanged" AutoPostBack="True" Visible="True" Height="25px" Width="25px" ViewStateMode="Inherit" Enabled="True" BackColor="LightGray" BorderStyle="None"></asp:TextBox></form>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userConn %>" ProviderName="<%$ ConnectionStrings:userConn.ProviderName %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    <div class="container_center">
    <center><h1>Quiz Questions</h1></center>

    <form name="quiz">

        <b>Question 1.
        <br>What does HTML stand for?<br></b>
        <blockquote>
            <input type="radio" name="q1" value="a">Hyper Text Markup Language<br>
            <input type="radio" name="q1" value="b">Home Tool Markup Language<br>
            <input type="radio" name="q1" value="c">Hyperlinks and Text Markup Language<br>
        </blockquote>

        <hr>
        <b>
        Question 2.
        <br>Choose the correct HTML element to define emphasized text?<br></b>
        <blockquote>
            <input type="radio" name="q2" value="a"> italic<br>
            <input type="radio" name="q2" value="b"> em<br>
            <input type="radio" name="q2" value="c"> i<br>
        </blockquote>
        <hr>

        <b>
        Question 3.
        <br>Who is making the Web standards?<br></b>
        <blockquote>
            <input type="radio" name="q3" value="a">The World Wide Web Consortium<br>
            <input type="radio" name="q3" value="b">Mozilla<br>
            <input type="radio" name="q3" value="c">Microsoft<br>
        </blockquote>

        <hr>
        <b>
        Question 4.
        <br>Which HTML attribute specifies an alternate text for an image, if the image cannot be displayed?<br></b>
        <blockquote>
            <input type="radio" name="q4" value= "a"> title<br>
            <input type="radio" name="q4" value= "b"> src<br>
            <input type="radio" name="q4" value="c"> alt<br>
        </blockquote>
        <hr>

        <b>
        Question 5.
        <br>What does CSS stand for?<br></b>
        <blockquote>
            <input type="radio" name="q5" value="a">Colorful Style Sheets<br>
            <input type="radio" name="q5" value="b">Cascading Style Sheets<br>
            <input type="radio" name="q5" value="c">Computer Style Sheets<br>
        </blockquote>

        <hr>
        <b>
        Question 6.
        <br>Which HTML attribute is used to define inline styles?<br></b>
        <blockquote>
            <input type="radio" name="q6" value="a">class<br>
            <input type="radio" name="q6" value="b">styles<br>
            <input type="radio" name="q6" value="c">style<br>
        </blockquote>
        <hr>

       <b>
        Question 7.
        <br>Which is the correct CSS syntax?<br></b>
        <blockquote>
            <input type="radio" name="q7" value="a">{body;color:black;}<br>
            <input type="radio" name="q7" value="b">{body:color=black;}<br>
            <input type="radio" name="q7" value="c">body {color: black;}<br>
        </blockquote>
        <hr>
        <b>

        Question 8.
        <br>How do you insert a comment in a CSS file?<br></b>
        <blockquote>
            <input type="radio" name="q8" value="a">/* this is a comment */<br>
            <input type="radio" name="q8" value="b">// this is a comment //<br>
            <input type="radio" name="q8" value="c">// this is a comment<br>
        </blockquote>
        <hr>

        <b>
        Question 9.
        <br>How do you write "Hello World" in an alert box?<br></b>
        <blockquote>
            <input type="radio" name="q9" value="a">msgBox("Hello World");<br>
            <input type="radio" name="q9" value="b”">alertBox("Hello World");<br>
            <input type="radio" name="q9" value="c">alert("Hello World");<br>
        </blockquote>
        <hr>

        <b>

        Question 10.
        <br>What is the correct syntax to make a function in JavaScript?<br></b>
        <blockquote>
            <input type="radio" name="q10" value="a">function myFunction()<br>
            <input type="radio" name="q10" value="b">function:myFunction()<br>
            <input type="radio" name="q10" value="c">function = myFunction()<br>
        </blockquote>
        <hr>

        <b>


        Question 11.
        <br>How can you add a comment in a JavaScript?<br></b>
        <blockquote>
            <input type="radio" name="q11" value="a">//This is a comment<br>
            <input type="radio" name="q11" value="b">'This is a comment<br>
            <input type="radio" name="q11" value="c">!--This is a comment--<br>
        </blockquote>
        <hr>

        <b>

        Question 12.
        <br>Which event occurs when the user clicks on an HTML element?<br></b>
        <blockquote>
            <input type="radio" name="q12" value="a">onmouseclick<br>
            <input type="radio" name="q12" value="b">onmouseover<br>
            <input type="radio" name="q12" value="c">onclick<br>
        </blockquote>
        <hr>

        <input type="button"value="Grade Me"onClick="getScore(this.form);">
        <input type="reset" value="Clear"><p>
        Number of score out of 12 = <input type="text" size="15" name= "mark">
        Score in percentage = <input type="text" size="15" name="percentage"><br>
     </form>

    <form method="post" name="Form" onsubmit="" action="">

    </form>

    </div>
<script>

    var numQues = 12;
    var numChoi = 3;
    var answers = new Array(12);
    answers[0] = "a";
    answers[1] = "b";
    answers[2] = "a";
    answers[3] = "c";
    answers[4] = "b";
    answers[5] = "c";
    answers[6] = "c";
    answers[7] = "a";
    answers[8] = "c";
    answers[9] = "a";
    answers[10] = "a";
    answers[11] = "c";


    function getScore(form) {
        var score = 0;
        var currElt;
        var currSelection;
        for (i = 0; i < numQues; i++) {
            currElt = i * numChoi;
            answered = false;
            for (j = 0; j < numChoi; j++) {
                currSelection = form.elements[currElt + j];
                if (currSelection.checked) {
                    answered = true;
                    if (currSelection.value == answers[i]) {
                        score++;
                        break;
                    }
                }
            }
            if (answered === false) { alert("Do answer all the questions, Please"); return false; }

        }

        var scoreper = Math.round(score / numQues * 100);

        form.percentage.value = scoreper + "%";
        document.getElementById("ContentPlaceHolder1_mark").value = scoreper;
        form.mark.value = score;

    }

</script>


</asp:Content>
