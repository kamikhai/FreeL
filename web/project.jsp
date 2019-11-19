<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="services.ProjectService" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="models.Project" %><%--
  Created by IntelliJ IDEA.
  User: kamilla
  Date: 24.10.2019
  Time: 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Проекты</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:300,400,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/css/pikaday.min.css">
    <link rel="stylesheet" href="assets/css/untitled.css">
</head>

<body id="page-top">
<nav class="navbar navbar-light navbar-expand-lg fixed-top" id="mainNav" style="background-color: rgb(74,83,118)">
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

<section class="portfolio-block project-no-images" >
    <div class="container">
        <div class="heading">
            <h2></h2>
        </div>
        <div class="row">
            <%@ page import="services.ProjectService" %>
            <%@ page import="services.UserService" %>
            <%@ page import="services.CategoryService" %>
            <%@ page import="models.User" %>
            <% ArrayList<Project> projects = ProjectService.findAll();
                StringBuilder stringBuilder = new StringBuilder();
                for (Project project:projects
                ) {
                    ArrayList<String> category = CategoryService.findById(project.getId());
                    String cat = "";
                    for (String s:category
                    ) {
                        cat += "<a href=\"\" style=\"font-family: Lato\">"+"#"+s+" "+"</a>";
                    }
                    if (!cat.equals("")){
                        cat += "</br></br>";
                    }
                    User user = UserService.findUserById(project.getOwner());
                    stringBuilder.append("<div class=\"col-md-6 col-lg-4\">\n" +
                            "                <div class=\"project-card-no-image\"><center><img class=\"rounded-circle mb-3 mt-4\"src=\""+ ((user.getImg() == null || user.getImg().equals("")) ? "../uploads/2.jpg" : "../" + user.getImg()) + "\" width=\"100\" height=\"100\"><h4><a href=\"\">"+"@"+user.getUsername()+"</a></h4></center>\n" +
                            "                    <h3>"+project.getName()+"</h3>\n" + cat + "\n" +

                            "                    <h4><a href=\""+project.getGithub()+"\">"+project.getGithub()+"</a></h4><a class=\"btn btn-outline-primary btn-sm\" role=\"button\" href=\"#\">See More</a>\n" +
                            "                </div>\n" +
                            "            </div>");

                }%>
            <%= stringBuilder.toString()%>
            <%--            <div class="col-md-6 col-lg-4">--%>
            <%--                <div class="project-card-no-image"><img class="rounded-circle mb-3 mt-4">--%>
            <%--                    <h3>Lorem Ipsum</h3>--%>
            <%--                    <h4><a href="#">Link</a></h4><a class="btn btn-outline-primary btn-sm" role="button" href="#">See More</a>--%>
            <%--                </div>--%>
            <%--            </div>--%>
        </div>
    </div>
</section>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pikaday/1.6.1/pikaday.min.js"></script>
<script src="assets/js/theme.js"></script>
</body>

</html>
