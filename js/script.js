function main() {
    if (document.getElementById("msg").value.trim() == "") {
        $("#erreur").text("Veuillez ecrire un message !");
        $("#erreur").css('color', 'red');
        $("#erreur").slideDown();
        return false;
    } else if (document.getElementById("pseudo").value.trim() == "") {
        $("#erreur").text("Veuillez rentrez un pseudo !");
        $("#erreur").css('color', 'red');
        $("#erreur").slideDown();
        return false;
    } else {
        $("#erreur").slideUp();
        enregistrer();
    }
}

function enregistrer() {
    $.ajax({
        type: "POST",
        url: "enregistrer.php?pseudo=" + document.getElementById("pseudo").value + "&msg=" + document.getElementById("msg").value,
        async: true,
        success: function (response) {
            console.log(response);
        }
    });
}

function autoScroll () {
    let objDiv = document.getElementById("discu");
    objDiv.scrollTop = objDiv.scrollHeight;
}
$(document).ready(function () {
    // $("#discu").load("recuperer.php");
    $.ajax({
        type: "POST",
        url: "recuperer.php?pseudo=" + document.getElementById("pseudo").value,
        async: false,
        success: function (response) {
            $("#discu").html(response);
            console.log("1");
            autoScroll();
        }
    });

    $("#erreur").slideUp();

    $("#form").on("submit", function () {
        return main();
    });

    $("#msg").keydown(function (e) {
        if (e.keyCode == 13 && !e.shiftKey) {
            e.preventDefault();
            $("#form").submit();
        }
    });

    $("#pseudo").focusin(function () {
        $(this).css('color', 'red');
    });
    $("#pseudo").focusout(function () {
        $(this).css('color', 'green');
    });

});

var test;
function nbLigne() {
    $.ajax({
        type: "POST",
        url: "nbEnre.php",
        async: false,
        success: function (response) {
            test = response;
        }
    });
}

setInterval("recup()", 200);
nbLigne();
function recup() {
    $.ajax({
        type: "POST",
        url: "nbEnre.php",
        async: false,
        success: function (response) {
            console.log(test + "aaa");
            if (response != test) {
                // console.log("reponse " + response + " test " + test); 
                console.log("azerty");  
                $.ajax({
                    type: "POST",
                    url: "premierEnre.php?pseudo=" + document.getElementById("pseudo").value,
                    async: true,
                    success: function (response) {
                        $("#discu").append(response);
                        console.log("2");
                        autoScroll();
                        nbLigne();
                        // $("#conv").append(response);
                    }
                });
            };
        }
    });
}


