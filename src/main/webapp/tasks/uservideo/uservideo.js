window.addEventListener("load", function() {

    var $ = function (arg) {return document.querySelector(arg)};

    var reqAnimFrame = window.requestAnimationFrame
        || window.mozRequestAnimationFrame
        || window.webkitRequestAnimationFrame || function (callback) {
        setTimeout(callback, 1000 / 60);
    };


    var video = $("video");
    var canvas = $("canvas");


    var getUserMedia = window.navigator.getUserMedia ||
        window.navigator.webkitGetUserMedia ||
        window.navigator.mozGetUserMedia;


    getUserMedia.call(window.navigator, { video:true, audio:false },
        gotUserMedia,
        userMediaFailed);


    function gotUserMedia(stream) {
        var url = window.URL || window.webkitURL;
        video.src = window.mozGetUserMedia ? stream : url.createObjectURL(stream);
        video.play();
    }

    function userMediaFailed(err) {
        console.log("Could not getUserMedia: " + err)
    }


    var angle = 0;

    var ctx = canvas.getContext("2d");

    var scale = 1;

    var loop = function() {
        ctx.setTransform(1, 0, 0, 1, 0, 0);
        ctx.clearRect(0, 0, 320, 240);
        ctx.translate(160, 120);
        ctx.rotate(angle)
        ctx.translate(-160, -120);
        ctx.scale(scale, scale);

        try {
            ctx.drawImage(video, 0, 0, 320, 240);
        }catch (e) {
            console.log("Firefox throws exception for the first few frames")
        }


        reqAnimFrame(loop);
    }

    reqAnimFrame(loop);


    canvas.addEventListener("click", function(e) {
        angle +=Math.PI/16;
        scale *=0.9;
        e.preventDefault();
        return false;
    });


    video.addEventListener("click", function(e) {
        e.target.className = "rotating";
    });
});