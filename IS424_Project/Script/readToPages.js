function loadXMLDoc(path) {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {

        if (this.readyState == 4 && this.status == 200) {
            display(this);
        }
    };

    xmlhttp.open("GET", path, true);
    xmlhttp.send();
}

function display(xml) {
    var xmlDoc = xml.responseXML;
    var x = xmlDoc.getElementsByTagName("Lectures")[0].getElementsByTagName("item");
    var str = document.getElementById("lec").innerHTML
    var str2 = '<h2><a href="#' + xmlDoc.getElementsByTagName("TOC")[0].getElementsByTagName("id1")[0].innerHTML + '">Lectures</a></h2><ul>';
    for (var i = 0; i < x.length; i++) {
        str += '<tr> <td class="frame_box" id ="' + x[i].getElementsByTagName("id")[0].innerHTML + '">';
        str += '<h2>' + x[i].getElementsByTagName("title")[0].innerHTML + '</h2>';
        str += '<embed src="' + x[i].getElementsByTagName("filesrc")[0].innerHTML + '" width="100%" height="530px">';
        str += '<p>To download The slides click <a href="' + x[i].getElementsByTagName("filesrc")[0].innerHTML + '" target="_blank">here</a>';
        str += ' and to download the labs click <a href="' + x[i].getElementsByTagName("labsrc")[0].innerHTML + '"> here</a></p></td></tr>';

        str2 += '<li> <a href="#' + x[i].getElementsByTagName("id")[0].innerHTML + '">' + x[i].getElementsByTagName("title")[0].innerHTML +'</a></li>';
    }

    str2 += '</ul >'
    document.getElementById("lec").innerHTML = str.replace("~", "..");
    document.getElementsByClassName("TOC")[0].innerHTML = str2

    var x = xmlDoc.getElementsByTagName("Resources")[0].getElementsByTagName("item");

    str = document.getElementById("res").innerHTML
    str2 = document.getElementsByClassName("TOC")[0].innerHTML;
    str2 += '<h2><a href="#' + xmlDoc.getElementsByTagName("TOC")[0].getElementsByTagName("id2")[0].innerHTML+ '">Lectures</a></h2><ul>';
    for (var i = 0; i < x.length; i++) {
        str += '<tr><td class="frame_box" id="' + x[i].getElementsByTagName("id")[0].innerHTML + '">';
        str += '<h2>' + x[i].getElementsByTagName("title")[0].innerHTML + '</h2>';
        str += ' <iframe width="560" height="315" src="' + x[i].getElementsByTagName("websrc")[0].innerHTML + '"';
        str += 'title="YouTube video player" frameborder="0" allow = "accelerometer; autoplay; clipboard-write;';
        str += 'encrypted - media; gyroscope; picture -in -picture" allowfullscreen ></iframe >';
        str2 += '<li> <a href="#' + x[i].getElementsByTagName("id")[0].innerHTML + '">' + x[i].getElementsByTagName("title")[0].innerHTML + '</a></li>';
    }
    str2 += '</ul >';
    document.getElementById("res").innerHTML = str.replace("~", "..");
    document.getElementsByClassName("TOC")[0].innerHTML = str2
}