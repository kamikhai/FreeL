package servlets;

import repositories.UserRepositoryJdbcImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

@WebServlet("/upload")
@MultipartConfig(fileSizeThreshold = 6291456, // 6 MB
        maxFileSize = 10485760L, // 10 MB
        maxRequestSize = 20971520L // 20 MB
)
public class UploadServlet extends HttpServlet {
    private static final String UPLOAD_DIR = "uploads";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Все оки");
        // gets absolute path of the web application
        String applicationPath = req.getServletContext().getRealPath("");
        // constructs path of the directory to save uploaded file
        String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;
        // creates upload folder if it does not exists
        File uploadFolder = new File(uploadFilePath);
        if (!uploadFolder.exists()) {
            uploadFolder.mkdirs();
        }
        String fileName = "";
        // write all files in upload folder
        for (Part part : req.getParts()) {
            if (part != null && part.getSize() > 0) {
                fileName = part.getSubmittedFileName();
                String contentType = part.getContentType();

                // allows only JPEG files to be uploaded
                if (!contentType.equalsIgnoreCase("image/jpeg")) {
                    continue;
                }

                part.write(uploadFilePath + File.separator + fileName);
                System.out.println("File successfully uploaded to "
                        + uploadFolder.getAbsolutePath()
                        + File.separator
                        + fileName);
            }
        }

        Connection connection = null;
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proglance", "postgres", "qwerty007");
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }

        UserRepositoryJdbcImpl userRepositoryJdbc = new UserRepositoryJdbcImpl(connection);
        String email = req.getSession().getAttribute("email").toString();
        userRepositoryJdbc.updateUser(email, UPLOAD_DIR + File.separator + fileName);
        resp.sendRedirect("/profile");


    }
}
