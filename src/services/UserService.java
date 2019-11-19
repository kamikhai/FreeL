package services;

import models.Project;
import models.User;
import repositories.ProjectRepositoryJdbcImpl;
import repositories.UserRepositoryJdbcImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserService {
    static Connection connection;
    static UserRepositoryJdbcImpl userRepositoryJdbc;
    static {
        connection = null;
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/proglance", "postgres", "qwerty007");
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }

        userRepositoryJdbc = new UserRepositoryJdbcImpl(connection);
    }

    public static User findUser(String email){
        return userRepositoryJdbc.findUser(email);
    }
    public static User findUserById(Long id){
        return userRepositoryJdbc.findUserById(id);
    }
}
