<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="main" scope="request">

    <h1>HTML5 Video Player</h1>

    <p class="ingress">Introducing the HTML5 <code>&lt;video&gt;</code> tag </p>

    <video width="320" height="240" autoplay="autoplay" loop="loop" controls="controls">
        <source src="/videos/video.mp4">
        <source src="/videos/video.webm">
    </video>

    <div id="controls">
        <input id="range" type="range" >
        <br>
        <button id="play">Play</button>
        <button id="pause">Pause</button>

    </div>


    <div class="code">
        <pre class="brush: xml;">
            <video width="320" height="240" autoplay="autoplay" loop="loop">
                <source src="/videos/video.mp4">
                <source src="/videos/video.webm">
            </video>

        </pre>

    </div>
    <div class="code">
    <pre class="brush: js;">
        $("#play").addEventListener("click", function(e) {
            video.play();

        });

        $("#pause").addEventListener("click", function(e) {
            video.pause();

        });

        </pre>
    </div>
    <div class="code">
    <pre class="brush: js;">
        video.addEventListener("timeupdate", function(e) {
            $("#range").value = Math.round(100 * (video.currentTime / video.duration));

        });

        $("#range").addEventListener("change", function(e) {
                video.currentTime = Math.round($("#range").value*video.duration / 100);

            });
            </pre>
    </div>

    <p>
        <a class="next" href="mirror.jsp">Next</a>
    </p>
</c:set>


<c:set var="head" scope="request">
    <link rel="stylesheet" type="text/css" href="player.css">
    <script src="player.js" type="text/javascript"></script>
</c:set>
<c:set var="title" value="Simple Video Player" scope="request"/>

<jsp:include page="/design.jsp"/>