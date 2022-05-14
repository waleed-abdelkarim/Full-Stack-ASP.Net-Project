function loadXMLDoc(path) {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {

        if (this.readyState == 4 && this.status == 200) {
            displayItems(this);
        }
    };

    xmlhttp.open("GET", path, true);
    xmlhttp.send();
}



function displayItems(xml) {
    var xmlDoc = xml.responseXML;
    var x = xmlDoc.getElementsByTagName("item");
    var str = '';
    for (var i = 0; i < x.length; i++) {
        var val = x[i].getElementsByTagName("id")[0].innerHTML;
        str += '<label> <input name="q1" type="radio" value="' + val + '" />';
        str += x[i].getElementsByTagName("title")[0].innerHTML;
        str += "</label><br>";
    }
    str += "<input type='submit' value='Delete' id='submitbut' class='but' onclick='delete()' />";
    document.getElementById("langauge").innerHTML = str;
}
function deleteItem() {
    var cou = ocument.getElementById("langauge").children.length;
    for (var i = 1; i < cou; i + 2) {
        if (document.getElementById("langauge").children[i].children[0].checked)
            document.getElementById(document.getElementById("langauge").children[i].children[0].value).parentNode.remove();
    }
}
