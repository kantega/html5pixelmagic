window.addEventListener("keyup", function(e) {
    console.log(e.keyCode)
    if(e.keyCode == 39) {
        document.querySelector("a.next").click();
    }
    else if(e.keyCode == 37) {
        history.back();
    }

});