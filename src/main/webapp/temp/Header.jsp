<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<%-- body 부분에 header 복사/붙여넣기

    <jsp:include page="../temp/Header.jsp"></jsp:include>

--%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Memico - Cinema Bootstrap HTML5 Template</title>
    <!-- Bootstrap -->
    <link href="../template/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
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
        <div class="header_h">
            <a class="navbar-brand" href="../index.jsp">
                        <span class="logo-element">
                            <span class="logo-tape">
                                <span class="svg-content svg-fill-theme" data-svg="./images/svg/logo-part.svg"></span>
                            </span>
                            <span class="logo-text text-uppercase">
                                <span>jsp</span>Team</span>
                        </span>
            </a>
            <div class="navbar-extra">
                <form class="d-flex" role="search" action="/navbar/search.do" method="get">
                    <input name="search" class="form-control me-2" type="search" placeholder="Title / Director Search" aria-label="Search">
                    <button type="submit" class="btn btn-theme">Search</button>
                </form>
            </div>
            <div class="navbar-extra">
                <%
                    if(session.getAttribute("UserId") == null){
                %>
                <a class="btn-theme btn loginbtn" href="../member/Login.do"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Login</a>
                <%
                } else {
                %>
                <a class="btn-theme btn logoutbtn" href="../temp/Logout.jsp"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;Logout</a>
                <%
                    }
                %>
            </div>
        </div>
    </div>
    <div class="navbardiv">
        <nav class="navbar">
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
                        <a class="nav-link" data-role="nav-toggler">MOVIE</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item">
                                <a class="nav-link" href="/category/view.do?category=액션">Action</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/category/view.do?category=애니메이션">Animation</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/category/view.do?category=코미디">Comedy</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/category/view.do?category=범죄">Crime</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/category/view.do?category=드라마">Drama</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/category/view.do?category=판타지">Fantasy</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/category/view.do?category=스릴러">Thriller</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/category/view.do?category=로맨스">Romance</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../R/R_List.do">Review</a>
                    </li>
                    <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                        <a class="nav-link" >MYPAGE</a>
                        <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                        <ul class="collapse nav">
                            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                                <a class="nav-link" href="#" data-role="nav-toggler">User pages</a>
                                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                                <ul class="collapse nav">
                                    <%
                                        if(session.getAttribute("UserId") != null){
                                    %>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../member/MyPage.do?mode=edit">My page</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../member/MyPage.do?mode=change">Change Password</a>
                                    </li>
                                    <%
                                    } else {
                                    %>
                                    <li class="nav-item">
                                        <a class="nav-link" href="../temp/LoginPlz.jsp">My page</a>
                                    </li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header>

</body>
</html>
