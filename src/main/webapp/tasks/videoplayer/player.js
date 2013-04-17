window.addEventListener("load", function() {

    var $ = function (arg) {return document.querySelector(arg)};


    var video = $("video");
    var controls = $("#controls");


    video.addEventListener("timeupdate", function(e) {
        $("#range").value = Math.round(100 * (video.currentTime / video.duration));

    });

    $("#play").addEventListener("click", function(e) {
        video.play();

    });

    $("#pause").addEventListener("click", function(e) {
        video.pause();

    });

    $("#range").addEventListener("change", function(e) {
        video.currentTime = Math.round($("#range").value*video.duration / 100);

    });
});