<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="main" scope="request">

    <h1>HTML5 User Video</h1>

    <p class="ingress">Grabbing video from the user's webcam</p>

    <video width="320" height="240" >

    </video>

    <canvas width="320" height="240">

    </canvas>


    <div class="code">
<pre class="brush: js;">
var getUserMedia = window.navigator.getUserMedia ||
    window.navigator.webkitGetUserMedia ||
    window.navigator.mozGetUserMedia;
</pre>
    </div>

    <div class="code">
    <pre class="brush: js;">
        getUserMedia.call(window.navigator,
            { video:true, audio:false },
            gotUserMedia,
            userMediaFailed);

    </pre>
    </div>

    <div class="code">
        <pre class="brush: js;">
            function gotUserMedia(stream) {
                video.src = window.webkitURL.createObjectURL(stream);
                video.play();
            }
        </pre>
        </div>

    <p>
        <a class="next" href="../transform/transform.jsp">Next</a>
    </p>
</c:set>


<c:set var="head" scope="request">
    <link rel="stylesheet" type="text/css" href="uservideo.css">
    <script src="uservideo.js" type="text/javascript"></script>
</c:set>
<c:set var="title" value="Videoplayer" scope="request"/>

<jsp:include page="/design.jsp"/>