package servlets;

import models.User;
import repositories.UserRepositoryJdbcImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet("/signUp")

public class SignUpServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/signUp.ftl").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Connection connection = null;
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proglance", "postgres", "qwerty007");
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }

        UserRepositoryJdbcImpl userRepositoryJdbc = new UserRepositoryJdbcImpl(connection);

        if (userRepositoryJdbc.save(new User(name, email, password.hashCode()))){
            System.out.println("Error");
            req.getSession().setAttribute("auth", true);
            req.getSession().setAttribute("email", email);

            resp.sendRedirect("/profile");
        } else {
            resp.sendRedirect("/signUp?er=Invalid login or email");
        }
    }
}
