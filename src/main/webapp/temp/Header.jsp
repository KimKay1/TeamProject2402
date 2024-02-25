<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Memico - Cinema Bootstrap HTML5 Template</title>
    <!-- Bootstrap -->
    <link href="../template/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Animate.css -->
    <link href="../template/animate.css/animate.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome iconic font -->
    <link href="../template/fontawesome/css/fontawesome-all.css" rel="stylesheet" type="text/css" />
    <!-- Magnific Popup -->
    <link href="../template/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
    <!-- Slick carousel -->
    <link href="../template/slick/slick.css" rel="stylesheet" type="text/css" />
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Oswald:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <!-- Theme styles -->
    <link href="../template/css/dot-icons.css" rel="stylesheet" type="text/css">
    <link href="../template/css/theme.css" rel="stylesheet" type="text/css">
</head>
<body class="body">
<header class="header header-horizontal header-view-pannel">
    <div class="container">
        <nav class="navbar">
            <a class="navbar-brand" href="">
                        <span class="logo-element">
                            <span class="logo-tape">
                                <span class="svg-content svg-fill-theme" data-svg="./images/svg/logo-part.svg"></span>
                            </span>
                            <span class="logo-text text-uppercase">
                                <span>jsp</span>Team</span>
                        </span>
            </a>
            <button class="navbar-toggler" type="button">
                        <span class="th-dots-active-close th-dots th-bars">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
            </button>
            <div class="navbar-collapse">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../index.jsp">Homepage</a>
                    </li>
                    <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" href="#" data-role="nav-toggler">MOVIE</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                <a class="nav-link" href="#" data-role="nav-toggler">Movies</a>
                                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                                <ul class="collapse nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="../movies-list.jsp">List - No Sidebar</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../movie-info-sidebar-right.jsp">Movie info</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../gallery.jsp">Gallery</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="../templateEx/news-blocks-sidebar-right.jsp">News</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" href="#">REVIEW</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item">
                                <a class="nav-link" href="../Review/ReviewList.do">Review</a>
                            </li>
                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                <a class="nav-link" href="#" data-role="nav-toggler">User pages</a>
                                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                                <ul class="collapse nav">
                                    <%--로그인 상태일 때--%>
                                    <%
                                        if(session.getAttribute("UserId") != null){
                                    %>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../member/MyPage.do">My page</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Ex</a>
                                    </li>
                                    <%
                                    } else {
                                    %>
                                    <li class="nav-item">
                                        <a class="nav-link" href="LoginPlz.jsp">My page</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="LoginPlz.jsp">Ex</a>
                                    </li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="navbar-extra">
                    <%
                        if(session.getAttribute("UserId") == null){
                    %>
                    <a class="btn-theme btn" href="../member/Login.do"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Login</a>
                    <%
                    } else {
                    %>
                    <a class="btn-theme btn" href="Logout.jsp"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Logout</a>
                    <%
                        }
                    %>
                </div>
            </div>
        </nav>
    </div>
</header>

</body>
</html>
