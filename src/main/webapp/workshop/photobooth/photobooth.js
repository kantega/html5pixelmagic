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


    var ctx = canvas.getContext("2d");

    var loop = function() {


        ctx.drawImage(video, 0, 0, 320, 240);

        var imageData = ctx.getImageData(0, 0, 320, 240);


        for(var i = 0, l = imageData.data.length; i < l;i+=4) {
            var red = imageData.data[i];
            var green = imageData.data[i + 1];
            var blue = imageData.data[i + 2];


            imageData.data[i] = red > 100 ? 255 : 0;
            imageData.data[i+1] = green > 100 ? 255 : 0;
            imageData.data[i+2] = blue > 100 ? 255 : 0;

        }

        ctx.putImageData(imageData, 0, 0);

        reqAnimFrame(loop);
    }

    reqAnimFrame(loop);

    $("#save").addEventListener("click", function() {
        // TODO: Capture image from canvas using toDataURL. Then set the output img's src attr.

    });

});