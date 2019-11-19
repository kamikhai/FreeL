package services;

import models.Project;
import models.User;
import repositories.ProjectRepositoryJdbcImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProjectService {
    static Connection connection;
    static ProjectRepositoryJdbcImpl projectRepositoryJdbc;
    static {
        connection = null;
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proglance", "postgres", "qwerty007");
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }

        projectRepositoryJdbc = new ProjectRepositoryJdbcImpl(connection);
    }

    public static ArrayList<Project> findAll(){
        return projectRepositoryJdbc.findAll();
    }

    public static Long save(Project model, String email){
        User user = UserService.findUser(email);
        model.setOwner(user.getId());
        return projectRepositoryJdbc.saveModel(model);
    }
}
