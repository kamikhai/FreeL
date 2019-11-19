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
    <title>Проекты</title>
    <link rel="stylesheet" href="http://bootstraptema.ru/snippets/style/2015/bootswatch/bootstrap-superhero-v3.3.6.css" media="screen">
    <link rel="stylesheet" href="http://bootstraptema.ru/snippets/style/2015/bootswatch/custom.min.css">
    <link rel="stylesheet" href="stylesheet.css">
</head>
<body>
<center>
    <header>
        <table style="width: 90%">
            <tr>
                <td><a href="/main">На главную</a></td>
                <td><a href="/project">Проекты</a></td>
                <td>Конкурсы</td>
                <td>Вакансии</td>
                <td>Поиск</td>
                <td><a href="/signUp"><%= request.getSession().getAttribute("auth") != null && (boolean) request.getSession().getAttribute("auth") ? "" : "Регистрация"%></a></td>
                <td><a href="/signIn"><%= request.getSession().getAttribute("auth") != null && (boolean) request.getSession().getAttribute("auth") ? "Профиль" : "Вход"%></a></td>
            </tr>
        </table>
    </header>
</center>

<center>
    <%@ page import="services.ProjectService" %>
    <% ArrayList<Project> projects = ProjectService.findAll();
    StringBuilder stringBuilder = new StringBuilder();
        for (Project project:projects
            ) {
            stringBuilder.append("<div style=\"margin-top: 20px; margin-left: 50px; margin-right: 50px; background: #668bad\">\n" +
                    "<div style=\"margin-top: 20px; margin-left: 50px; margin-right: 50px\">\n" +
                    " <p>Название проекта:  " +
                    project.getName() + "</p>" +
                    " <p>О проекте:  " +
                    project.getAbout() + "</p>" +
                    "<p>Ссылка на гитхаб:  " +
                    "    <a href=\""+ project.getGithub() + "\">"+project.getGithub()+"</a> \n" + "</p>" +
                    "</div>\n" +
                    "</div>");
    }%>
    <%= stringBuilder.toString()%>
</center>
</body>
</html>
