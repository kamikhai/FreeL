package servlets;

import repositories.UserRepositoryJdbcImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


@WebServlet("/signIn")

public class SignInServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Boolean auth = (Boolean) req.getSession().getAttribute("auth");
        if (auth == null || auth.equals(false)) {
                req.getRequestDispatcher("/signIn.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("/profile");
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Boolean auth = (Boolean) req.getSession().getAttribute("auth");

        if (auth == null || auth.equals(false)) {
            Connection connection = null;
            try {
                connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proglance", "postgres", "qwerty007");
            } catch (SQLException e) {
                throw new IllegalStateException(e);
            }

            UserRepositoryJdbcImpl userRepositoryJdbc = new UserRepositoryJdbcImpl(connection);

            String email = req.getParameter("email");
            int password = req.getParameter("password").hashCode();
            String rememberMeStr = req.getParameter("remember");
            boolean remember = "Y".equals(rememberMeStr);

            System.out.println(email);
            System.out.println(password);
            boolean flag = userRepositoryJdbc.signIn(email, password);

            if (flag) {
                req.getSession().setAttribute("auth", true);
                req.getSession().setAttribute("email", email);
                if (remember) {
                    resp.addCookie(new Cookie("login", email + " " + password));
                }
                resp.sendRedirect("/profile");
            } else {
                resp.sendRedirect("/signIn?er=Invalid login and/or password&email=" + email);
            }
        } else {
            req.getRequestDispatcher("/profile").forward(req, resp);
        }
    }
}

