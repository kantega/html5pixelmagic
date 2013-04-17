<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="main" scope="request">

    <h1>Manipulating pixel values</h1>

    <p class="ingress">
        Using <code>getImageData</code>, <code>putImageData</code> to access and change pixel components
    </p>

    <video width="320" height="240"  autoplay="autoplay" loop="loop">
        <source src="/videos/video.mp4">
        <source src="/videos/video.webm">
    </video>

    <canvas width="320" height="240">

    </canvas>




    <div class="code">
       <pre class="brush: js;">
           var imageData = ctx.getImageData(0, 0, 320, 240);
           var imageData2 = ctx.getImageData(0, 0, 320, 240);
       </pre>
    </div>

    <div class="code">
        <pre class="brush: js;">
            for(var i = 0, l = imageData.data.length; i < l;i+=4) {
                imageData.data[i] =   imageData2.data[i+shift];
                imageData.data[i+1] = imageData2.data[i-shift+1];
            }
        </pre>
    </div>

    <div class="code">
            <pre class="brush: js;">
                ctx.putImageData(imageData, 0, 0);
            </pre>
    </div>


    <p>
        <a class="next" href="../greenscreen/greenscreen.jsp">Next</a>
    </p>

</c:set>


<c:set var="head" scope="request">
    <link rel="stylesheet" type="text/css" href="transform.css">
    <script src="transform.js" type="text/javascript"></script>
</c:set>
<c:set var="title" value="Accessing Pixels" scope="request"/>

<jsp:include page="/design.jsp"/>