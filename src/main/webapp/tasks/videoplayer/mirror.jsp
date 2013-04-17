<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="main" scope="request">

    <h1>Drawing video to &lt;canvas&gt;</h1>

    <p class="ingress">Mirror, mirror..</p>

    <video width="320" height="240" autoplay="autoplay" loop="loop">
        <source src="/videos/video.mp4">
        <source src="/videos/video.webm">
    </video>

    <canvas width="320" height="240">

    </canvas>

    <div class="code">
        <pre class="brush: xml;">
            <canvas width="320" height="240">

            </canvas>
    </pre>
    </div>
    <div class="code">
            <pre class="brush: js;">

    var reqAnimFrame = window.requestAnimationFrame
           || window.mozRequestAnimationFrame
           || window.webkitRequestAnimationFrame || function (callback) {
           setTimeout(callback, 1000 / 60);
       };
            </pre>
                    </div>
    <div class="code">
        <pre class="brush: js;">
            var ctx = canvas.getContext("2d");


            var loop = function() {
                ctx.drawImage(video, 0, 0);

                reqAnimFrame(loop);
            }
                </pre>
        </div>
    <div class="code">
            <pre class="brush: js;">


            reqAnimFrame(loop);

        </pre>
    </div>

    <p>
        <a class="next" href="../uservideo/uservideo.jsp">Next</a>
    </p>
</c:set>


<c:set var="head" scope="request">
    <link rel="stylesheet" type="text/css" href="mirror.css">
    <script src="mirror.js" type="text/javascript"></script>
</c:set>
<c:set var="title" value="Using Canvas" scope="request"/>

<jsp:include page="/design.jsp"/>