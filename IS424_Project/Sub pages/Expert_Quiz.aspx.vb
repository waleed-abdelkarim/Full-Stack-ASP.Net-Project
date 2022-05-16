Imports System.Data.OleDb

Partial Class Expert_Quiz
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Not Session("level").Equals("Expert") Then
                Response.Redirect("./Login.aspx")
            End If
        End If


        If Not IsPostBack Then
            Q1MC1.Checked = False
            Q1MC2.Checked = False
            Q1MC3.Checked = False
            ans1.Visible = False
            Q2MC1.Checked = False
            Q2MC2.Checked = False
            Q2MC3.Checked = False
            ans2.Visible = False
            Q3MC1.Checked = False
            Q3MC2.Checked = False
            Q3MC3.Checked = False
            ans3.Visible = False
            Q4MC1.Checked = False
            Q4MC2.Checked = False
            Q4MC3.Checked = False
            ans4.Visible = False
            Q5MC1.Checked = False
            Q5MC2.Checked = False
            Q5MC3.Checked = False
            ans5.Visible = False
            Q6MC1.Checked = False
            Q6MC2.Checked = False
            Q6MC3.Checked = False
            ans6.Visible = False
            Q7MC1.Checked = False
            Q7MC2.Checked = False
            Q7MC3.Checked = False
            ans7.Visible = False
            Q8MC1.Checked = False
            Q8MC2.Checked = False
            Q8MC3.Checked = False
            ans8.Visible = False
            Q9MC1.Checked = False
            Q9MC2.Checked = False
            Q9MC3.Checked = False
            ans9.Visible = False
            Q10MC1.Checked = False
            Q10MC2.Checked = False
            Q10MC3.Checked = False
            ans10.Visible = False

            Dim conn As New OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Expert_Questions - Copy.accdb")
            Dim reader1 As OleDbDataReader

            conn.Open()

            Dim cmd As New OleDbCommand("Select top 10 * from Questions ORDER BY Rnd(-(10000*ID)*Time())", conn)
            reader1 = cmd.ExecuteReader

            Dim i As Int32 = 0

            If reader1.Read Then
                i = i + 1
                QN1.Text = "Question " & i & ":"
                Q1.Text = reader1("Questions").ToString
                Q1MC1.Text = reader1("Choice 1").ToString
                Q1MC2.Text = reader1("Choice 2").ToString
                Q1MC3.Text = reader1("Choice 3").ToString
                ans1.Text = reader1("Correct Answer").ToString
                reader1.Read()

                i = i + 1
                QN2.Text = "Question " & i & ":"
                Q2.Text = reader1("Questions").ToString
                Q2MC1.Text = reader1("Choice 1").ToString
                Q2MC2.Text = reader1("Choice 2").ToString
                Q2MC3.Text = reader1("Choice 3").ToString
                ans2.Text = reader1("Correct Answer").ToString
                reader1.Read()

                i = i + 1
                QN3.Text = "Question " & i & ":"
                Q3.Text = reader1("Questions").ToString
                Q3MC1.Text = reader1("Choice 1").ToString
                Q3MC2.Text = reader1("Choice 2").ToString
                Q3MC3.Text = reader1("Choice 3").ToString
                ans3.Text = reader1("Correct Answer").ToString
                reader1.Read()

                i = i + 1
                QN4.Text = "Question " & i & ":"
                Q4.Text = reader1("Questions").ToString
                Q4MC1.Text = reader1("Choice 1").ToString
                Q4MC2.Text = reader1("Choice 2").ToString
                Q4MC3.Text = reader1("Choice 3").ToString
                ans4.Text = reader1("Correct Answer").ToString
                reader1.Read()

                i = i + 1
                QN5.Text = "Question " & i & ":"
                Q5.Text = reader1("Questions").ToString
                Q5MC1.Text = reader1("choice 1").ToString
                Q5MC2.Text = reader1("choice 2").ToString
                Q5MC3.Text = reader1("choice 3").ToString
                ans5.Text = reader1("Correct Answer").ToString
                reader1.Read()

                i = i + 1
                QN6.Text = "Question " & i & ":"
                Q6.Text = reader1("Questions").ToString
                Q6MC1.Text = reader1("choice 1").ToString
                Q6MC2.Text = reader1("choice 2").ToString
                Q6MC3.Text = reader1("choice 3").ToString
                ans6.Text = reader1("Correct Answer").ToString
                reader1.Read()

                i = i + 1
                QN7.Text = "Question " & i & ":"
                Q7.Text = reader1("Questions").ToString
                Q7MC1.Text = reader1("choice 1").ToString
                Q7MC2.Text = reader1("choice 2").ToString
                Q7MC3.Text = reader1("choice 3").ToString
                ans7.Text = reader1("Correct Answer").ToString
                reader1.Read()

                i = i + 1
                QN8.Text = "Question " & i & ":"
                Q8.Text = reader1("Questions").ToString
                Q8MC1.Text = reader1("choice 1").ToString
                Q8MC2.Text = reader1("choice 2").ToString
                Q8MC3.Text = reader1("choice 3").ToString
                ans8.Text = reader1("Correct Answer").ToString
                reader1.Read()

                i = i + 1
                QN9.Text = "Question " & i & ":"
                Q9.Text = reader1("Questions").ToString
                Q9MC1.Text = reader1("choice 1").ToString
                Q9MC2.Text = reader1("choice 2").ToString
                Q9MC3.Text = reader1("choice 3").ToString
                ans9.Text = reader1("Correct Answer").ToString
                reader1.Read()

                i = i + 1
                QN10.Text = "Question " & i & ":"
                Q10.Text = reader1("Questions").ToString
                Q10MC1.Text = reader1("choice 1").ToString
                Q10MC2.Text = reader1("choice 2").ToString
                Q10MC3.Text = reader1("choice 3").ToString
                ans10.Text = reader1("Correct Answer").ToString
                reader1.Read()
            End If

            conn.Close()
        End If
    End Sub

    Public Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        Dim CA As Int32 = 0
        Dim WAs As String = ""
        Dim check As Boolean = False

        If Q1MC1.Checked And ans1.Text.Equals(Q1MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q1MC2.Checked And ans1.Text.Equals(Q1MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q1MC3.Checked And ans1.Text.Equals(Q1MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            WAs = "1"
        End If
        ans1.Visible = True
        check = False


        If Q2MC1.Checked And ans2.Text.Equals(Q2MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q2MC2.Checked And ans2.Text.Equals(Q2MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q2MC3.Checked And ans2.Text.Equals(Q2MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            If WAs IsNot "" Then
                WAs = WAs + ","
            End If
            WAs = WAs & "2"
        End If
        ans2.Visible = True
        check = False


        If Q3MC1.Checked And ans3.Text.Equals(Q3MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q3MC2.Checked And ans3.Text.Equals(Q3MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q3MC3.Checked And ans3.Text.Equals(Q3MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            If WAs IsNot "" Then
                WAs = WAs + ","
            End If
            WAs = WAs & "3"
        End If
        ans3.Visible = True
        check = False


        If Q4MC1.Checked And ans4.Text.Equals(Q4MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q4MC2.Checked And ans4.Text.Equals(Q4MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q4MC3.Checked And ans4.Text.Equals(Q4MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            If WAs IsNot "" Then
                WAs = WAs + ","
            End If
            WAs = WAs & "4"
        End If
        ans4.Visible = True
        check = False


        If Q5MC1.Checked And ans5.Text.Equals(Q5MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q5MC2.Checked And ans5.Text.Equals(Q5MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q5MC3.Checked And ans5.Text.Equals(Q5MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            If WAs IsNot "" Then
                WAs = WAs + ","
            End If
            WAs = WAs & "5"
        End If
        ans5.Visible = True
        check = False


        If Q6MC1.Checked And ans6.Text.Equals(Q6MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q6MC2.Checked And ans6.Text.Equals(Q6MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q6MC3.Checked And ans6.Text.Equals(Q6MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            If WAs IsNot "" Then
                WAs = WAs + ","
            End If
            WAs = WAs & "6"
        End If
        ans6.Visible = True
        check = False


        If Q7MC1.Checked And ans7.Text.Equals(Q7MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q7MC2.Checked And ans7.Text.Equals(Q7MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q7MC3.Checked And ans7.Text.Equals(Q7MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            If WAs IsNot "" Then
                WAs = WAs + ","
            End If
            WAs = WAs & "7"
        End If
        ans7.Visible = True
        check = False


        If Q8MC1.Checked And ans8.Text.Equals(Q8MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q8MC2.Checked And ans8.Text.Equals(Q8MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q8MC3.Checked And ans8.Text.Equals(Q8MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            If WAs IsNot "" Then
                WAs = WAs + ","
            End If
            WAs = WAs & "8"
        End If
        ans8.Visible = True
        check = False



        If Q9MC1.Checked And ans9.Text.Equals(Q9MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q9MC2.Checked And ans9.Text.Equals(Q9MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q9MC3.Checked And ans9.Text.Equals(Q9MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            If WAs IsNot "" Then
                WAs = WAs + ","
            End If
            WAs = WAs & "9"
        End If
        ans9.Visible = True
        check = False


        If Q10MC1.Checked And ans10.Text.Equals(Q10MC1.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q10MC2.Checked And ans10.Text.Equals(Q10MC2.Text) Then
            CA = CA + 1
            check = True
        End If

        If Q10MC3.Checked And ans10.Text.Equals(Q10MC3.Text) Then
            CA = CA + 1
            check = True
        End If

        If Not check Then
            If WAs IsNot "" Then
                WAs = WAs + ","
            End If
            WAs = WAs & "10"
        End If
        ans10.Visible = True


        If CA = 10 Then
                Response.Write("<script language=""javascript"">alert('" & CA & "/10\nFull Mark!');</script>")
            Else
                Response.Write("<script language=""javascript"">alert('" & CA & "/10\nYour mistake was: Question " & WAs & " ');</script>")
            End If

            SubmitButton.Visible = False


    End Sub


End Class
