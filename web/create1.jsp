<%--
  Created by IntelliJ IDEA.
  User: kamilla
  Date: 14.10.2019
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Создание проекта</title>
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
  <br>
  <%= request.getSession().getAttribute("auth") != null && (boolean) request.getSession().getAttribute("auth") ? "<p>\n" +
          "  <form method=\"post\">\n" +
          "<p>Название проекта</p>\n" +
          "<input type=\"text\" name=\"name\">\n" +
          "<p>Описание</p>\n" +
          "<textarea name=\"description\" cols=\"40\" rows=\"3\"></textarea></p>\n" +
          "  <p>Ссылка на гитхаб</p>\n" +
          "  <input type=\"text\" name=\"github\">\n" + "<br>" +
          "<input type=\"submit\" value=\"Создать проект\">\n" +
          "</form>\n" +
          "</p>" : "<a href=\"/signIn\" style=\"color: red\">Войдите</a>"%>

</center>
</body>
</html>
