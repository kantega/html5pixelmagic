<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>HTML5 Pixel Magic! - ${title}</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/html5pixelmagic.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/internett.css" media="screen"/>
        <!--[if (lt IE 9)&(!IEMobile)]>
            <link media="screen" rel="stylesheet" href="/assets/css/bootstrap.css"/>
            <link media="screen" rel="stylesheet" href="/assets/css/editor.css"/>"/>
            <link media="screen" rel="stylesheet" href="/assets/css/global.css"/>"/>
            <link media="screen" rel="stylesheet" href="/assets/css/desktop.css"/>"/>
            <link media="screen" rel="stylesheet" href="/assets/css/ie8.css"/>"/>
        <![endif]-->


    <script type="text/javascript" src="/syntaxhighlighter/scripts/shCore.js"></script>
    <script type="text/javascript" src="/syntaxhighlighter/scripts/shBrushJScript.js"></script>
    <script type="text/javascript" src="/syntaxhighlighter/scripts/shBrushXml.js"></script>
    <link type="text/css" rel="stylesheet" href="/syntaxhighlighter/styles/shCoreDefault.css"/>
    <script type="text/javascript">
        SyntaxHighlighter.defaults['gutter'] = false;
        SyntaxHighlighter.defaults['toolbar'] = false;
        SyntaxHighlighter.all();
    </script>

    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/html5pixelmagic.js"></script>
    ${head}
</head>
<body>
<div id="page-container">
<div id="topsection" class="always-fullwidth">
    <div id="header">
        <div class="container">
            <div class="row">
                <div class="span2">
                    <a href="/" class="logoLink noLinkEffect" title="Til forsiden">
                        <img src="/assets/bitmaps/kantega_logo.png" alt="Kantega Logo">
                    </a>
                    <a href="#mobile-navigation" class="mobile-menu-anchor"></a>
                </div>

                <section class="hidden-phone">
<nav id="desktop-navigation" class="always-fullwidth">
    <div class="span8" id="mainMenu">
        <ul>
            <li>
                <a title="Workshop" href="/tasks/videoplayer/player.jsp">Player</a>
            </li>
            <li>
                <a title="Workshop" href="/tasks/videoplayer/mirror.jsp">Mirror</a>
            </li>
            <li>
                <a title="Workshop" href="/tasks/uservideo/uservideo.jsp">User video</a>
            </li>
            <li>
                <a title="Workshop" href="/tasks/transform/transform.jsp">Colors</a>
            </li>
            <li>
                <a title="Workshop" href="/tasks/greenscreen/greenscreen.jsp">Green screen</a>
            </li>
            <li>
                <a title="Workshop" href="/tasks/objecttracking/objecttracking.jsp">Tracking</a>
            </li>
            <li>
                <a title="Workshop" href="/impresio/index.jsp">Impresio</a>
            </li>
            <li>
                <a title="Workshop" href="/workshop/tasks.jsp">Tasks</a>
            </li>
            <li>
                <a title="Om Kantega" target="_blank" href="http://kantega.no/jobb/">About Kantega</a>
            </li>
        </ul>
    </div>
</nav>
                </section>
            </div>
        </div>
    </div>
</div> <!-- Topsection -->

<div id="mainsection">
    <div class="container">
        <div class="articleLayout">
            <div class="content">
            ${main}
            </div>

        </div>
        <div style="margin-top: 0.5em; color:gray;font-size: smaller;">
            Supported by <a href="http://kantega.no">Kantega</a>, a Norwegian IT consulting company 100% owned by employees.

            We're always <a href="http://kantega.no/jobb">looking for talented developers</a>

        </div>
    </div>

    <div class="footerspacer">&nbsp;</div>


</div>

</div> <!-- Page container -->
</body>
</html>