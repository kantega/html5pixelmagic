<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="main" scope="request">

    <h1>Object tracking</h1>

    <p class="ingress">Use color information to implement simple object tracking</p>

    <p>
        <input type="range" min="0" max="100" id="sensitivitySlider">
    </p>
    <video width="320" height="240" >

    </video>


    <canvas width="320" height="240">

    </canvas>
    <div id="targetColor">

    </div>


    <div class="code">
<pre class="brush: js;">
    var pixel = ctx.getImageData(parseInt(x), parseInt(y), 1, 1).data;
    targetRed = pixel[0];
    targetGreen = pixel[1];
    targetBlue = pixel[2];
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
        <a class="next" href="/impresio/index.jsp">Next</a>
    </p>
</c:set>


<c:set var="head" scope="request">
    <link rel="stylesheet" type="text/css" href="objecttracking.css">
    <script src="objecttracking.js" type="text/javascript"></script>
</c:set>
<c:set var="title" value="Object tracking" scope="request"/>

<jsp:include page="/design.jsp"/>