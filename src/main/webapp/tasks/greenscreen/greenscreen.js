window.addEventListener("load", function() {

    jQuery(function() {
        jQuery("canvas").draggable({
            stop: function(e) {
                e.target.className = "rotating";
            }
        });

    });
    var $ = function (arg) {return document.querySelector(arg)};

    var reqAnimFrame = window.requestAnimationFrame
        || window.mozRequestAnimationFrame
        || window.webkitRequestAnimationFrame || function (callback) {
        setTimeout(callback, 1000 / 60);
    };


    var video = $("video");
    var canvas = $("canvas");

    var ctx = canvas.getContext("2d");



    var targetRed = 14;
    var targetGreen = 145;
    var targetBlue = 84;

    var sensitivity = 70;

    var loop = function() {
        ctx.drawImage(video, 0, 0, 320, 240);

        var imageData = ctx.getImageData(0, 0, 320, 240);


        for(var i = 0, l = imageData.data.length; i < l;i+=4) {
            var red = imageData.data[i];
            var green = imageData.data[i + 1];
            var blue = imageData.data[i + 2];

            var diff = Math.sqrt(Math.pow(targetRed - red, 2)
                + Math.pow(targetGreen - green, 2)
                + Math.pow(targetBlue - blue, 2));

            if (diff < sensitivity) {
                imageData.data[i + 3] = 0;
            }
        }

        ctx.putImageData(imageData, 0, 0);
        reqAnimFrame(loop);
    }

    reqAnimFrame(loop);


    video.addEventListener("click", function(e) {
        e.target.className = "rotating";
    });

});