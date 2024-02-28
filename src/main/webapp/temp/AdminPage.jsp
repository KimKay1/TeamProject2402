<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- Bootstrap -->
    <link href="../template/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
            integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
            integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
            crossorigin="anonymous"></script>
    <!-- Animate.css -->
    <link href="../template/animate.css/animate.css" rel="stylesheet" type="text/css"/>
    <!-- Font Awesome iconic font -->
    <link href="../template/fontawesome/css/fontawesome-all.css" rel="stylesheet" type="text/css"/>
    <!-- Magnific Popup -->
    <link href="../template/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css"/>
    <!-- Slick carousel -->
    <link href="../template/slick/slick.css" rel="stylesheet" type="text/css"/>
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Oswald:300,400,500,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
    <!-- Theme styles -->
    <link href="../template/css/dot-icons.css" rel="stylesheet" type="text/css">
    <link href="../template/css/theme.css" rel="stylesheet" type="text/css">
    <link href="../template/css/header.css" rel="stylesheet" type="text/css">
    <title>AdminPage</title>
    <style>
        .admin_container {
            width:100%;
        }
        section {
            margin:0 auto;
            width:1120px;
            display: flex;
            justify-content: space-between;
        }
        section > div {
            margin:30px 0px;
            width:500px;
        }
    </style>
</head>

<%--파일 업로드 추가하기?--%>

<body>
<div class="admin_container">
    <div class="after-head d-flex section-text-white position-relative">
        <div class="d-background" data-image-src="" data-parallax="scroll"></div>
        <div class="d-background bg-black-80"></div>
        <div class="top-block top-inner container">
            <div class="top-block-content">
                <h1 class="section-title">Admin Page</h1>
            </div>
        </div>
    </div>

    <section class="section-line">
        <div class="addMovie">
            <div class="section-head">
                <h2 class="section-title text-uppercase">Add Movie</h2>
            </div>
            <form action="../admin.do?mode=insert" method="post">
                <div class="row form-grid">
                    <div class="col-12">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="title" type="text" placeholder="Title" />
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="director" type="text" placeholder="Director" />
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="actor" type="text" placeholder="Actor" />
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="category" type="text" placeholder="Category" />
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="runningtime" type="text" placeholder="Running Time" />
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="releasedate" type="text" placeholder="Release Date" />
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="production" type="text" placeholder="Production" />
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="input-view-flat input-group">
                            <textarea class="form-control" name="summary" placeholder="Summary"></textarea>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="img" type="text" placeholder="Movie Poster" />
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="img2" type="text" placeholder="Horizontal Image" />
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="youtube" type="text" placeholder="Youtube" />
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="visitcount" type="text" placeholder="VisitCount" />
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="px-5 btn btn-theme" type="submit">입력 완료</button>
                    </div>
                </div>
            </form>
        </div>

        <div class="removeMovie">
            <div class="section-head">
                <h2 class="section-title text-uppercase">Remove Movie</h2>
            </div>
            <form action="../admin.do?mode=delete" method="post">
                <div class="row form-grid">
                    <div class="col-12">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="num" type="text" placeholder="Movie Number" />
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="input-view-flat input-group">
                            <input class="form-control" name="title" type="text" placeholder="Movie Title" />
                        </div>
                    </div>
                    <div class="col-12">
                        <button class="px-5 btn btn-theme" type="submit"> 삭제</button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</div>
</body>
</html>
