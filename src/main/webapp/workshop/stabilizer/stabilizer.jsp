<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="main" scope="request">

    <h1>Image stabilizer</h1>

    <p class="ingress">Draw video image centered on a detected object</p>

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
    <link rel="stylesheet" type="text/css" href="stabilizer.css">
    <script src="stabilizer.js" type="text/javascript"></script>
</c:set>
<c:set var="title" value="Object tracking" scope="request"/>

<jsp:include page="/design.jsp"/>