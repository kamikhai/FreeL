<%--
  Created by IntelliJ IDEA.
  User: kamilla
  Date: 24.10.2019
  Time: 2:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Главная</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
    <link rel="stylesheet" href="assets/css/untitled.css">
</head>

<body id="page-top">
<nav class="navbar navbar-light navbar-expand-lg fixed-top" id="mainNav">
    <div class="container"><a class="navbar-brand js-scroll-trigger" href="/main" style="color: rgba(255,255,255,0.7);">Proglance</a>
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
<header class="masthead text-center text-white d-flex" style="background-image:url('assets/img/header.jpg');">
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <h1 class="text-uppercase"><strong>Миллионы идей ждут вас</strong></h1>
                <hr style="border-color: rgb(74,83,118);">
            </div>
        </div>
        <div class="col-lg-8 mx-auto">
            <p class="text-faded mb-5">&nbsp;Портал для организации свободных групп разработчиков, целью
                которых&nbsp;<br>является реализация open-source проекта.</p>
            <a class="btn btn-primary btn-xl js-scroll-trigger" role="button" href="/create"
               style="background-color: rgb(74,83,118);">Создать свой проект</a></div>
    </div>
</header>
<section id="about" class="bg-primary" style="background-color: rgb(74,83,118)!important;">
    <div class="container">
        <div class="row">
            <div class="col offset-lg-8 mx-auto text-center">
                <h2 class="text-white section-heading">У нас есть все, что вам нужно!</h2>
                <hr class="light my-4">
                <p class="text-faded mb-4">На данном сайте вы можете найти людей не только для создания нового проекта,
                    но и для завершения старого</p><a class="btn btn-light btn-xl js-scroll-trigger" role="button"
                                                      href="#services">Начать!</a></div>
        </div>
    </div>
</section>
<section id="services">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Возможности сайта</h2>
                <hr class="my-4" style="border-color: rgb(74,83,118)!important;">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-3 text-center">
                <div class="mx-auto service-box mt-5"><i class="fa fa-desktop fa-4x text-primary mb-3 sr-icons"
                                                         data-aos="zoom-in" data-aos-duration="200" data-aos-once="true"
                                                         style="color: rgb(74,83,118)!important;"></i>
                    <h3 class="mb-3">Создавайте собственные проекты</h3>
                    <p class="text-muted mb-0">Вы можете найти людей, которые помогут реализовать вашу идею</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 text-center">
                <div class="mx-auto service-box mt-5"><i class="fa fa-search fa-4x text-primary mb-3 sr-icons"
                                                         data-aos="zoom-in" data-aos-duration="200" data-aos-delay="200"
                                                         data-aos-once="true"
                                                         style="color: rgb(74,83,118)!important;"></i>
                    <h3 class="mb-3">Участвуйте в готовых проектах</h3>
                    <p class="text-muted mb-0">Вы можете сами принять участи в создание чего-либо проекта</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 text-center">
                <div class="mx-auto service-box mt-5"><i class="fa fa-mortar-board fa-4x text-primary mb-3 sr-icons"
                                                         data-aos="zoom-in" data-aos-duration="200" data-aos-delay="400"
                                                         data-aos-once="true"
                                                         style="color: rgb(74,83,118)!important;"></i>
                    <h3 class="mb-3">Обучайтесь</h3>
                    <p class="text-muted mb-0">Вы можете собрать команду, вместе с который не только создадите готовый
                        продукт, но и научитесь всему необходимому для реализации вашей идеи</p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3 text-center">
                <div class="mx-auto service-box mt-5"><i class="fa fa-users fa-4x text-primary mb-3 sr-icons"
                                                         data-aos="fade" data-aos-duration="200" data-aos-delay="600"
                                                         data-aos-once="true"
                                                         style="color: rgb(74,83,118)!important;"></i>
                    <h3 class="mb-3">Находите союзников по всей стране</h3>
                    <p class="text-muted mb-0">Вы&nbsp; можете собрать команду с разных уголков страны&nbsp;</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="portfolio" class="p-0">
    <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">

            <div class="col-sm-6 col-lg-4">
                <a class="portfolio-box" href="assets/img/fullsize/1.jpg">
                    <img class="img-fluid" src="assets/img/thumbnails/1.jpg">
                    <div class="portfolio-box-caption" style="background: rgba(74,83,118,.9);">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded"></div>
                            <div class="project-name"><span>Веб-разработка</span></div>
                        </div>
                    </div>
                </a></div>

            <div class="col-sm-6 col-lg-4">
                <a class="portfolio-box" href="assets/img/fullsize/2.jpg">
                    <img class="img-fluid" src="assets/img/thumbnails/2.jpg">
                    <div class="portfolio-box-caption" style="background: rgba(74,83,118,.9);">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded"></div>
                            <div class="project-name"><span>Мобильная разработка</span></div>
                        </div>
                    </div>
                </a></div>

            <div class="col-sm-6 col-lg-4"><a class="portfolio-box" href="assets/img/fullsize/3.jpg"><img
                    class="img-fluid" src="assets/img/thumbnails/3.jpg">
                <div class="portfolio-box-caption" style="background: rgba(74,83,118,.9);">
                    <div class="portfolio-box-caption-content">
                        <div class="project-category text-faded"></div>
                        <div class="project-name"><span>Разработка игр</span></div>
                    </div>
                </div>
            </a></div>
            <div class="col-sm-6 col-lg-4"><a class="portfolio-box" href="assets/img/fullsize/4.jpg"><img
                    class="img-fluid" src="assets/img/thumbnails/4.jpg">
                <div class="portfolio-box-caption" style="background: rgba(74,83,118,.9);">
                    <div class="portfolio-box-caption-content">
                        <div class="project-category text-faded"></div>
                        <div class="project-name"><span>Системное администрирование</span></div>
                    </div>
                </div>
            </a></div>
            <div
                    class="col-sm-6 col-lg-4"><a class="portfolio-box" href="assets/img/fullsize/5.jpg"><img
                    class="img-fluid" src="assets/img/thumbnails/5.jpg">
                <div class="portfolio-box-caption" style="background: rgba(74,83,118,.9);">
                    <div class="portfolio-box-caption-content">
                        <div class="project-category text-faded"></div>
                        <div class="project-name"><span>Администрирование баз данных</span></div>
                    </div>
                </div>
            </a></div>
            <div
                    class="col-sm-6 col-lg-4"><a class="portfolio-box" href="assets/img/fullsize/6.jpg"><img
                    class="img-fluid" src="assets/img/thumbnails/6.jpg">
                <div class="portfolio-box-caption" style="background: rgba(74,83,118,.9);">
                    <div class="portfolio-box-caption-content">
                        <div class="project-category text-faded"></div>
                        <div class="project-name"><span>Тестирование</span></div>
                    </div>
                </div>
            </a></div>
        </div>
    </div>
</section>
<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto text-center">
                <h2 class="section-heading">Вы можете связаться с нами!</h2>
                <hr class="my-4" style="border-color: rgb(74,83,118)!important;">
                <p class="mb-5">Есть какие-то предложения? Прекрасно! Свяжитесь с нами</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 ml-auto text-center"><i class="fa fa-phone fa-3x mb-3 sr-contact" data-aos="zoom-in"
                                                         data-aos-duration="300" data-aos-once="true"></i>
                <p>8-800-555-3535</p>
            </div>
            <div class="col-lg-4 mr-auto text-center"><i class="fa fa-envelope-o fa-3x mb-3 sr-contact"
                                                         data-aos="zoom-in" data-aos-duration="300" data-aos-delay="300"
                                                         data-aos-once="true"></i>
                <p><a href="mailto:kamilla-h@bk.ru" style="color: rgb(74,83,118)!important;">kamilla-h@bk.ru</a></p>
            </div>
        </div>
    </div>
</section>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/bs-animation.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<script src="assets/js/creative.js"></script>
</body>

</html>
