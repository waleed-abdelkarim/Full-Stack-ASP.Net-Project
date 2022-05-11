function questions() {
        document.writeln("<h1>Hello</h1>");
        document.write("<caption>< h1 > Moderate Quiz</h1 ></caption > <form method=\"post\" id=\"form\">");
        document.write("<strong>Question 1: " +q1+"<br></strong><br> <tr> <td>");
        document.write("<label>");
        document.write("<input name=\"q1\" type=\"radio\" value=\"Computer\" id=\"q1a1\" />");
    document.write("</label> <br>");
    document.write("<h1>" + x2.value + "</h1>");
}


var total =0;
var mistake = [];
mistake[0] = 0;
var mis = "Your mistakes was: Question  ";
var mscount =0;
var count=0;

function result() {
    
    //show and calc answers

    for (var i = 0; i < count; i++) {
        document.getElementById("ans" + (i + 1) + "").hidden = false;
        var right = document.getElementsByName("q" + (i + 1) + "");
        var right_val;
        for (var x = 0; x < right.length; x++) {
            if (right[x].checked) {
                right_val = right[x].value;
            }
        }

        if (document.getElementById("q" + (i + 1) + "").value == right_val) {
            total = total + 1;
        }
        else {
            mistake[mscount++] = (i+1);
        }
    }

    document.getElementById("grade").innerHTML = total + "/5";

    if (mistake[0] == 0) {
        document.getElementById("mistake").innerHTML = "Full mark";
    }
    else {
        for (var i = 0; i < mscount; i++) {
            if (i + 1 == mscount)
                mis += mistake[i] ;
            else {
                mis += mistake[i] + ",";
            }
        }
        document.getElementById("mistake").innerHTML = mis;
    }
 
    document.getElementById("grade").hidden = false;
    document.getElementById("mistake").hidden = false;
}


function loadXMLDoc() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {

        if (this.readyState == 4 && this.status == 200) {
            ModerateDetail(this);
        }
    };

    // employee.xml is the external xml file
    xmlhttp.open("GET", "Moderate.xml", true);
    xmlhttp.send();
}

function ModerateDetail(xml) {
    var i;
    var xmlDoc = xml.responseXML;
    var table = "<caption><h1> Moderate Quiz</h1></caption ><form method='post' action=''  >";
    var x = xmlDoc.getElementsByTagName("item");

    // Start to fetch the data by using TagName 


    // Print the xml data in table form
    for (i = 0; i < x.length; i++) {
        table += "<tr><td><p>" + "<strong>Question " + (i + 1) + ":</strong ><br/>" +
            "<p>" + x[i].getElementsByTagName("question")[0].childNodes[0].nodeValue + "</p>" +
            "<label>" + "<input name='q" + (i + 1) + "' id='q" + (i + 1) + "' type='radio' value='" + x[i].getElementsByTagName("answer1")[0].childNodes[0].nodeValue +"'/>" + x[i].getElementsByTagName("answer1")[0].childNodes[0].nodeValue + "</label><br>" +
            "<label>" + "<input name='q" + (i + 1) + "' id='q" + (i + 1) + "' type='radio' value='" + x[i].getElementsByTagName("answer2")[0].childNodes[0].nodeValue +"'/> "+ x[i].getElementsByTagName("answer2")[0].childNodes[0].nodeValue + "</label><br>" +
            "<label>" + "<input name='q" + (i + 1) + "' id='q" + (i + 1) + "'type='radio' value='" + x[i].getElementsByTagName("answer3")[0].childNodes[0].nodeValue + "'/>" + x[i].getElementsByTagName("answer3")[0].childNodes[0].nodeValue + "</label></p>"+
            "<p hidden id='ans" + (i + 1) + "'>" + x[i].getElementsByTagName("right")[0].childNodes[0].nodeValue + "</p> </td></tr>";
        count = count + 1;
    }
    table+="<tr><td><p><input type='submit' value='Submit' class='but' onclick='result()' /><input type='reset' value='Clear' class='but' />" +
        "</p ></td></tr></form >";
    document.getElementById("id").innerHTML = table;
}


    

 
 

