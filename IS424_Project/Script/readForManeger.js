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
    str += "<input id='Button1' type='button' value='Select' onclick='deleteItem(); return false' />"

    document.getElementById("ContentPlaceHolder1_langauge").innerHTML = str;
}

function deleteItem() {

    var radioButtons = document.getElementsByClassName("restodele");
    for (var radioButton of radioButtons) {
        if (radioButton.checked) {
            document.getElementById("ContentPlaceHolder1_TextBox1").value = radioButton.value;
        }
    }
}