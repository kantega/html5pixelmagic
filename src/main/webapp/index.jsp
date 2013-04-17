<%@page pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="title" value="Welcome" scope="request"/>

<c:set var="main" scope="request">

<h1>HTML5 Pixel Magic</h1>

    <p class="ingress">Eirik Bjørsnøs. Chief Scientist at
        <img class="kantega" src="/assets/bitmaps/kantega.png">
    </p>


    <img class="eirik" src="/assets/bitmaps/eirik.jpg">


    <p>
        <a class="next" href="/tasks/videoplayer/player.jsp">Next</a>
    </p>
<!--<iframe src="http://player.vimeo.com/video/49377269" width="500" height="281" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>-->


</c:set>

<jsp:include page="design.jsp"/>