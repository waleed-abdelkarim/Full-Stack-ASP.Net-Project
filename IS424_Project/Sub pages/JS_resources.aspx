<%@ Page Title="Learn JavaScript | Resources" Language="C#" MasterPageFile="~/masterPage.Master" AutoEventWireup="true" CodeBehind="JS_resources.aspx.cs" Inherits="IS424_Project.Sub_pages.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="icon" href="../img/JS.png" />
    <style type="text/css">
        .frame_box {
            border-bottom: solid black;
            padding-bottom: 50px;
            padding-top: 20px;
        }

        iframe {
            overflow: hidden;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="return">
        <a href="#top">Top</a>
    </div>

    <section id="description" style="background-image: url('../img/poster.jpg');">
        <div class="TOC" id="top description" style="float: left;">
            <h2>Resources</h2>
            <ul>
                <li>
                    <a href="#JS1">JavaScript Tutorial for Beginners: Learn JavaScript in 1 Hour</a>
                </li>
                <li>
                    <a href="#JS2">JavaScript for Beginners</a>
                </li>
                <li>
                    <a href="#JS3">W3Schools | JavaScript Tutorial</a>
                </li>
            </ul>
        </div>
    </section>


    <section>
        <table border="0" class="container_table">
            <tr>
                <td class="frame_box" id="JS1">
                    <h2>JavaScript Tutorial for Beginners: Learn JavaScript in 1 Hour</h2>
                    <iframe src="https://www.youtube.com/embed/W6NZfCO5SIk" title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                </td>
            </tr>

            <tr>
                <td class="frame_box" id="JS2">
                    <h2>JavaScript for Beginners</h2>
                    <iframe src="https://www.youtube.com/embed/videoseries?list=PLzMcBGfZo4-njtc5xy3qli4cN2zlKsoxd"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                </td>
            </tr>

            <tr>
                <td class="frame_box" id="JS3">
                    <h2>W3Schools | JavaScript Tutorial</h2>
                    <a href="https://www.w3schools.com/js/default.asp" target="_blank">
                        <img src="../img/w3_js.png" alt="w3schools photo">
                    </a>
                </td>
            </tr>
        </table>
    </section>
</asp:Content>
