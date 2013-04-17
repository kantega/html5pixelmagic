window.addEventListener("load", function() {

    var $ = function (arg) {return document.querySelector(arg)};

    var reqAnimFrame = window.requestAnimationFrame
        || window.mozRequestAnimationFrame
        || window.webkitRequestAnimationFrame || function (callback) {
        setTimeout(callback, 1000 / 60);
    };


    var video = $("video");
    var canvas = $("canvas");

    var ctx = canvas.getContext("2d");


    var shift = 0;

    var loop = function() {
        ctx.drawImage(video, 0, 0, 320, 240);

        var imageData = ctx.getImageData(0, 0, 320, 240);
        var imageData2 = ctx.getImageData(0, 0, 320, 240);

        for(var i = 0, l = imageData.data.length; i < l;i+=4) {
            imageData.data[i] =imageData2.data[i+shift];
            imageData.data[i+1] =imageData2.data[i-shift+1];
        }

        ctx.putImageData(imageData, 0, 0);
        reqAnimFrame(loop);
    }

    reqAnimFrame(loop);


    video.addEventListener("click", function(e) {
        e.target.className = "rotating";
    });
    canvas.addEventListener("click", function(e) {
        shift+=16;
        e.preventDefault();
    });
});