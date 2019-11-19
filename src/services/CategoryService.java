package services;

import models.Category;
import models.Project;
import models.User;
import repositories.CategoryRepositoryJdbcImpl;
import repositories.ProjectRepositoryJdbcImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

public class CategoryService {
    static Connection connection;
    static CategoryRepositoryJdbcImpl categoryRepositoryJdbc;
    static {
        connection = null;
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proglance", "postgres", "qwerty007");
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }

        categoryRepositoryJdbc = new CategoryRepositoryJdbcImpl(connection);
    }

    public static ArrayList<String> findById(Long id){
        return categoryRepositoryJdbc.findById(id);
    }

    public static ArrayList<Category> findAll(){
        return categoryRepositoryJdbc.findAll();
    }

    public static boolean save(Project model, String email){
        return true;
    }
}
