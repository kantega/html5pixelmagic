<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="main" scope="request">

    <h1>Photo Booth!</h1>

    <p class="ingress">
        Apply color effects and let the user save an image.
    <p>

    <video width="320" height="240" >

    </video>


    <canvas width="320" height="240">

    </canvas>

    <p>
        <button id="save">Capture</button>
    </p>
    <img id="output">
</c:set>


<c:set var="head" scope="request">
    <link rel="stylesheet" type="text/css" href="photobooth.css">
    <script src="photobooth.js" type="text/javascript"></script>
</c:set>
<c:set var="title" value="Object tracking" scope="request"/>

<jsp:include page="/design.jsp"/>