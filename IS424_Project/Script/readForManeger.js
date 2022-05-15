var xml;
function loadXMLDoc(path) {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {

        if (this.readyState == 4 && this.status == 200) {
            xml = this;
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
        str += '<label> <input class="restodele" name="q1" type="radio" value="' + val + '" />';
        str += x[i].getElementsByTagName("title")[0].innerHTML;
        str += "</label><br>";
    }
    str += "<input type='submit' value='Delete' id='submitbut' class='but' onclick='deleteItem(); return false' />";
    document.getElementById("langauge").innerHTML = str;
}
function deleteItem() {

    var radioButtons = document.getElementsByClassName("restodele");
    for (var radioButton of radioButtons) {
        if (radioButton.checked) {
            document.getElementById("Label2").innerHTML = radioButton.value;
        }
    }
}
//    var xmlDoc = xml.responseXML;
//    var x = xmlDoc.getElementsByTagName("item");
//    for (var i = 0; i < x.length; i++) {
//        if (x[i].getElementsByTagName("id")[0].innerHTML == selecteditem) {
//            var no = x[i].getElementsByTagName("id")[0].parentNode;
//            no.remove();
//            /*no.parentNode.removeChild(no);*/
//        }
//    }
//}