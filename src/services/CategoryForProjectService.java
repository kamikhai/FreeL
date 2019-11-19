package services;

import models.Category;
import models.Project;
import models.User;
import repositories.CFPRepositoryJdbcImpl;
import repositories.CategoryRepositoryJdbcImpl;
import repositories.ProjectRepositoryJdbcImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

public class CategoryForProjectService {
    static Connection connection;
    static CFPRepositoryJdbcImpl cfpRepositoryJdbc;
    static {
        connection = null;
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proglance", "postgres", "qwerty007");
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }

        cfpRepositoryJdbc = new CFPRepositoryJdbcImpl(connection);
    }


    public static void save(String[] categoties, Long id){
        for (String s:
             categoties) {
            cfpRepositoryJdbc.save(new Category(Long.parseLong(s), id));
        }
    }
}
