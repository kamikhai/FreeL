<%--
  Created by IntelliJ IDEA.
  User: kamilla
  Date: 24.10.2019
  Time: 2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Вход</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic">

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
    <link rel="stylesheet" href="assets/css/untitled.css">
    <link rel="stylesheet" href="assets/css/smoothproducts.css">
</head>

<body id="page-top">
<nav class="navbar navbar-light navbar-expand-lg fixed-top" id="mainNav">
    <div class="container"><a class="navbar-brand js-scroll-trigger" href="/main" style="color: rgba(255,255,255,0.7);">Proglance</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" aria-controls="navbarResponsive"
                                                                                                                                             aria-expanded="false" aria-label="Toggle navigation" style="color: rgba(255,255,255,0.7);"><i class="fa fa-align-justify" style="color: rgba(255,255,255,0.7);"></i></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="/create" style="color: rgba(255,255,255,0.7);">Создать проект</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="/project" style="color: rgba(255,255,255,0.7);">проекты</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="#" style="color: rgba(255,255,255,0.7);">вакансии</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link js-scroll-trigger" href="/profile" style="color: rgba(255,255,255,0.7);"><i class="fa fa-user-circle-o" style="color: rgba(255,255,255,0.7);font-size: 25px;"></i></a></li>
            </ul>
        </div>
    </div>
</nav>
<header class="masthead text-center text-white " style="background-image: url('assets/img/create1.jpg');">
    <section class="clean-block clean-form dark">
        <div class="container">
            <div class="block-heading">
                <h2 class="text-info" style="color: rgb(74,83,118)!important;">Создание проекта</h2>
                <p>Введите информацию о проекте</p>
            </div>
            <%@ page import="services.CategoryService" %>
            <%@ page import="models.Category" %>
            <% StringBuilder stringBuilder = new StringBuilder();
                for (Category cat : CategoryService.findAll()
                        ) {
                    stringBuilder.append("<option value=\""+cat.getId()+"\">"+cat.getName()+"</option>");
                }
            %>
            <form method="post">
                <div class="form-group"><label for="name" style="color: rgb(74,83,118)">Название проекта</label><input class="form-control item" type="text" placeholder="Введите название проекта" id="name" name="name"></div>
                <div class="form-group"><label for="description" style="color: rgb(74,83,118)">Описание</label><textarea class="form-control" id="description" name="description" placeholder="Введите описание проекта"></textarea></div>
                <div class="form-group"><label for="github" style="color: rgb(74,83,118)">Ссылка на гитхаб</label><input class="form-control item" type="text" placeholder="Ссылка на проект" id="github" name="github"></div>
                <div class="form-group"><label for="cat" style="color: rgb(74,83,118)">Выберите категорию</label>
                    <select multiple="multiple" id="cat" class="form-control item" name="cat" size="2">
                        <%=stringBuilder.toString()%>
                    </select>
                </div>
               <button class="btn btn-primary btn-block" type="submit" style="background: rgb(74,83,118);">Сохранить</button></form>
        </div>
    </section></header>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<script src="assets/js/creative.js"></script>
</body>

</html>