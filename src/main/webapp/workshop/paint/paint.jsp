<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="main" scope="request">

    <h1>Paint </h1>

    <p class="ingress">
        Use the center of a tracked object as the paint brush in a Paint clone.
    </p>

    <p>
        <input type="range" min="0" max="100" id="sensitivitySlider">
    </p>
    <video width="320" height="240" >

    </video>


    <canvas width="320" height="240" id="trackerCanvas">

    </canvas>

    <div id="targetColor">

    </div>


    <br>

    <canvas width="320" height="240" id="stableCanvas">

    </canvas>


</c:set>


<c:set var="head" scope="request">
    <link rel="stylesheet" type="text/css" href="paint.css">
    <script src="paint.js" type="text/javascript"></script>
</c:set>
<c:set var="title" value="Object tracking" scope="request"/>

<jsp:include page="/design.jsp"/>