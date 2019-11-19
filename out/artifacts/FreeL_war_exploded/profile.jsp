<%@ page import="services.UserService" %>
<%@ page import="models.User" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - ITIS</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
    <link rel="stylesheet" href="assets/css/untitled.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
</head>

<body id="page-top">
<nav class="navbar navbar-light navbar-expand-lg fixed-top" id="mainNav" style="background-color: rgb(74,83,118)">
    <div class="container"><a class="navbar-brand js-scroll-trigger" href="/main"
                              style="color: rgba(255,255,255,0.7);">Proglance</a>
        <button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right"
                type="button" aria-controls="navbarResponsive"
                aria-expanded="false" aria-label="Toggle navigation" style="color: rgba(255,255,255,0.7);"><i
                class="fa fa-align-justify" style="color: rgba(255,255,255,0.7);"></i></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="/create"
                                                            style="color: rgba(255,255,255,0.7);">Создать проект</a>
                </li>
                <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="/project"
                                                            style="color: rgba(255,255,255,0.7);">проекты</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="#"
                                                            style="color: rgba(255,255,255,0.7);">вакансии</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="/profile"
                                                            style="color: rgba(255,255,255,0.7);"><i
                        class="fa fa-user-circle-o" style="color: rgba(255,255,255,0.7);font-size: 25px;"></i></a></li>
            </ul>
        </div>
    </div>
</nav>
<div id="wrapper" style="font-family: Open Sans,Helvetica Neue,Arial,sans-serif;">
    <% User user = UserService.findUser(request.getSession().getAttribute("email").toString());%>
    <div class="d-flex flex-column" id="content-wrapper">
        <div id="content">
            <div class="container-fluid">
                <h3 class="text-dark mb-4">Профиль</h3>
                <div class="row mb-3">
                    <div class="col-lg-4">
                        <div class="card mb-3">

                                <div class="card-body text-center shadow"><img class="rounded-circle mb-3 mt-4"
                                                                               src="<%=(user.getImg() == null || user.getImg().equals("")) ? "../uploads/2.jpg" : "../" + user.getImg()%>"
                                                                               width="160" height="160">
                                    <form method="POST" action="upload" enctype="multipart/form-data">
                                    <div class="mb-3">
                                        <input type="file" class="btn form-control-file" id="exampleFormControlFile1" name="fileName1">
                                        <input class="btn btn-primary btn-sm" type="submit"
                                                style="background: rgb(74,83,118);border-color: rgb(74,83,118);" value="Сменить фотографию">
                                    </div>
                                    </form>
                                </div>

                        </div>
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="text-primary font-weight-bold m-0" style="color: rgb(74,83,118)!important;">
                                    Проекты</h6>
                            </div>
                            <div class="card-body"></div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="row mb-3 d-none">
                            <div class="col">
                                <div class="card text-white bg-primary shadow">
                                    <div class="card-body">
                                        <div class="row mb-2">
                                            <div class="col">
                                                <p class="m-0">Peformance</p>
                                                <p class="m-0"><strong>65.2%</strong></p>
                                            </div>
                                            <div class="col-auto"><i class="fas fa-rocket fa-2x"></i></div>
                                        </div>
                                        <p class="text-white-50 small m-0"><i class="fas fa-arrow-up"></i>&nbsp;5% since
                                            last month</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card text-white bg-success shadow">
                                    <div class="card-body">
                                        <div class="row mb-2">
                                            <div class="col">
                                                <p class="m-0">Peformance</p>
                                                <p class="m-0"><strong>65.2%</strong></p>
                                            </div>
                                            <div class="col-auto"><i class="fas fa-rocket fa-2x"></i></div>
                                        </div>
                                        <p class="text-white-50 small m-0"><i class="fas fa-arrow-up"></i>&nbsp;5% since
                                            last month</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="card shadow mb-3">
                                    <div class="card-header py-3">
                                        <p class="text-primary m-0 font-weight-bold"
                                           style="color: rgb(74,83,118)!important;">Пользовательская информация</p>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="form-row">
                                                <div class="col">
                                                    <div class="form-group"><label for="username"><strong>Имя
                                                        пользователя</strong><br></label><input class="form-control"
                                                                                                type="text"
                                                                                                id="username" value="<%= user.getUsername() == null || user.getUsername().equals("") ? "" : user.getUsername()%>"></div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group"><label
                                                            for="email"><strong>Email&nbsp;</strong></label><input
                                                            class="form-control" type="email" id="email" value="<%= user.getEmail() == null || user.getEmail().equals("") ? "" : user.getEmail()%>"></div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="col">
                                                    <div class="form-group"><label for="first_name"><strong>Имя</strong><br></label><input
                                                            class="form-control" type="text" value="<%= user.getName() == null || user.getName().equals("") ? "" : user.getName()%>"
                                                            id="first_name"></div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group"><label
                                                            for="last_name"><strong>Фамилия</strong><br></label><input
                                                            class="form-control" type="text" value="<%= user.getSurname() == null || user.getSurname().equals("") ? "" : user.getSurname()%>"
                                                            id="last_name"></div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="col">
                                                    <div class="form-group"><label for="gender"><strong>Пол</strong><br></label><input
                                                            class="form-control" type="text" value="<%= user.getGender() == null || user.getGender().equals("") ? "" : user.getGender()%>"
                                                            id="gender"></div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group"><label for="birth"><strong>Дата
                                                        рождения</strong><br></label><input class="form-control"
                                                                                            type="text"
                                                                                            value="<%= user.getBirthdate() == null || user.getBirthdate().equals("") ? "" : user.getBirthdate()%>"
                                                                                            id="birth"></div>
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="col">
                                                    <div class="form-group"><label for="about"><strong>О
                                                        себе</strong><br></label><textarea class="form-control"
                                                                                           id="about" ><%= user.getAboutMe() == null || user.getAboutMe().equals("") ? "" : user.getAboutMe()%></textarea></div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <button class="btn btn-primary btn-sm" type="submit"
                                                        style="background-color: rgb(74,83,118);border-color: rgb(74,83,118);">
                                                    Сохранить настройки
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="card shadow">
                                    <div class="card-header py-3">
                                        <p class="text-primary m-0 font-weight-bold"
                                           style="color: rgb(74,83,118)!important;">Контактная информация</p>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="form-group"><label
                                                    for="city"><strong>Город</strong></label><input class="form-control"
                                                                                                    type="text"
                                                                                                    value="<%= user.getCity() == null || user.getCity().equals("") ? "" : user.getCity()%>"
                                                                                                    id="city"></div>
                                            <div class="form-row">
                                                <div class="col">
                                                    <div class="form-group"><label
                                                            for="site"><strong>Сайт</strong></label><input
                                                            class="form-control" type="text" value="<%= user.getSite() == null || user.getSite().equals("") ? "" : user.getSite()%>"
                                                            id="site"></div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-group"><label for="github"><strong>Гитхаб</strong></label><input
                                                            class="form-control" type="text" value="<%= user.getGithub() == null || user.getGithub().equals("") ? "" : user.getGithub()%>"
                                                            id="github"></div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <button class="btn btn-primary btn-sm" type="submit"
                                                        style="background-color: rgb(74,83,118);border-color: rgb(74,83,118);">
                                                    Сохранить настройки
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card shadow mb-5"></div>
            </div>
        </div>
    </div>
    <a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<script src="assets/js/creative.js"></script>
</body>

</html>