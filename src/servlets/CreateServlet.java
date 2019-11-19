package servlets;

import models.Project;
import services.CategoryForProjectService;
import services.ProjectService;
import services.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/create")
public class CreateServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Boolean auth = (Boolean) req.getSession().getAttribute("auth");
        if (auth == null || auth.equals(false)) {
            resp.sendRedirect("/signIn");
        } else {
            req.getRequestDispatcher("/create.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getSession().getAttribute("email").toString();
        Long id = UserService.findUser(email).getId();
        String name = req.getParameter("name");
        String about = req.getParameter("description");
        String github = req.getParameter("github");
        String[] cats = req.getParameterValues("cat");


        Long projId = ProjectService.save(new Project(name, id, about, github), email);
        CategoryForProjectService.save(cats, projId);
        resp.sendRedirect("/project");


    }
}
