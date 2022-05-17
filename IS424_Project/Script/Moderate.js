var count = 0;

function result() {
    var total = 0;
    var mistake = [];
    mistake[0] = 0;
    var mis = "Your mistakes was: Question  ";
    var mscount = 0;

    
    document.getElementById("submitbut").hidden = true;
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
        if (document.getElementById("ans" + (i + 1) + "").textContent == right_val) {
            total = total + 1;
        }
        else {
            mistake[mscount++] = (i + 1);
        }
    }
    if (mistake[0] == 0) {
        mis = "Full mark";
    }
    else {
        for (var i = 0; i < mscount; i++) {
            if (i + 1 == mscount)
                mis += mistake[i];
            else {
                mis += mistake[i] + ",";
            }
        }
    }
    window.alert(total + '/10 \n' + mis);

}



function loadXMLDoc() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {

        if (this.readyState == 4 && this.status == 200) {
            ModerateDetail(this);
        }
    };

    xmlhttp.open("GET", "../Data/Moderate.xml", true);
    xmlhttp.send();
}

function ModerateDetail(xml) {
    var i;
    var xmlDoc = xml.responseXML;
    var table = "<caption><h1> Moderate Exam</h1></caption ><form method='post' action=''  >";
    var x = xmlDoc.getElementsByTagName("item");

    // Start to fetch the data by using TagName 
    var used = [];
    var ranum = Math.floor(Math.random() * 10);
    for (var y = 0; y < 10; y++) {
        if (used.includes(ranum)) {
            ranum = Math.floor(Math.random() * 31);
            y = y - 1;
        }
        else {
            used.push(ranum);
        }
    }

    var counter = 0;
    try {
        // Print the xml data in table form
        for (i = 0; i < 10; i++) {
            table += "<tr><td><p>" + "<strong>Question " + (i + 1) + ":</strong ><br/>" +
                "<p>" + x[used[counter]].getElementsByTagName("question")[0].childNodes[0].nodeValue + "</p>" +
                "<label>" + "<input name='q" + (i + 1) + "' id='q" + (i + 1) + "' type='radio' value='" + x[used[counter]].getElementsByTagName("answer1")[0].childNodes[0].nodeValue + "'/>" + x[used[counter]].getElementsByTagName("answer1")[0].childNodes[0].nodeValue + "</label><br>" +
                "<label>" + "<input name='q" + (i + 1) + "' id='q" + (i + 1) + "' type='radio' value='" + x[used[counter]].getElementsByTagName("answer2")[0].childNodes[0].nodeValue + "'/> " + x[used[counter]].getElementsByTagName("answer2")[0].childNodes[0].nodeValue + "</label><br>" +
                "<label>" + "<input name='q" + (i + 1) + "' id='q" + (i + 1) + "'type='radio' value='" + x[used[counter]].getElementsByTagName("answer3")[0].childNodes[0].nodeValue + "'/>" + x[used[counter]].getElementsByTagName("answer3")[0].childNodes[0].nodeValue + "</label></p>" +
                "<p hidden id='ans" + (i + 1) + "'" + " class='answers'>" + x[used[counter]].getElementsByTagName("right")[0].childNodes[0].nodeValue + "</p> </td></tr>";
            count = count + 1;
            counter = counter + 1;
        }
        table += "<tr><td><p><input type='submit' value='Submit' id='submitbut' class='but' onclick='result()' />" +
            "</p ></td></tr></form >";

        const tbl = document.createElement("table");
        tbl.setAttribute("class", "container_ce");
        tbl.innerHTML = table;
        document.body.childNodes[3].childNodes[1].appendChild(tbl);
    }
    catch {
        ModerateDetail(xml);
    }
}

