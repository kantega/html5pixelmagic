<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="main" scope="request">

    <h1>HTML Green Screen Effect</h1>

    <p class="ingress">
        Removing only the "green" pixels
    </p>

    <video width="320" height="240"  autoplay="autoplay" loop="loop">
        <source src="/videos/video.mp4">
        <source src="/videos/video.webm">
    </video>

    <canvas width="320" height="240">

    </canvas>



    <div class="code">
      <pre class="brush: js;">
          var targetRed = 14;
          var targetGreen = 145;
          var targetBlue = 84;

          var sensitivity = 70;

      </pre>
    </div>

    <div class="code">
        <pre class="brush: js;">
            var pixelRed = imageData.data[i];
            var pixelGreen = imageData.data[i + 1];
            var pixelBlue = imageData.data[i + 2];

            var diff = Math.sqrt(
                        Math.pow(targetRed - pixelRed, 2)
                        + Math.pow(targetGreen - pixelGreen, 2)
                        + Math.pow(targetBlue - pixelBlue, 2));
        </pre>
        <img src="/assets/bitmaps/3dtheorem.png">
        <img src="/assets/bitmaps/colorcube.png">
    </div>

    <div class="code">
        <pre class="brush: js;">
            if (diff < sensitivity) {
                imageData.data[i + 3] = 0;
            }
        </pre>
    </div>

    <p>
        <a class="next" href="../objecttracking/objecttracking.jsp">Next</a>
    </p>
</c:set>


<c:set var="head" scope="request">
    <link rel="stylesheet" type="text/css" href="greenscreen.css">
    <script src="greenscreen.js" type="text/javascript"></script>
    <script src="/js/jquery-1.9.1.js"></script>
    <script src="/js/jquery-ui.js"></script>


</c:set>
<c:set var="title" value="Green Screen Effect" scope="request"/>

<jsp:include page="/design.jsp"/>