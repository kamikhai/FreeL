package repositories;

import models.User;

import java.sql.*;
import java.util.Date;

public class UserRepositoryJdbcImpl implements UserRepository {
    private Connection connection;

    //Строковые константы, содержащие команды SQL
    //language=SQL
    private final String USER_INSERT = "insert into progl_user (username, email, password) values (?,?,?);";
    //language=SQL
    private final String FIND_USER = "select * from progl_user WHERE email = ? ";
    //language=SQL
    private final String SIGN_IN = "select * from progl_user WHERE email = ? and password = ? ";
    //language=SQL
    private final String UPDATE_USER = "update progl_user set img = ? where email = ?";
    //language=SQL
    private final String FIND_USER_BY_ID = "select * from progl_user WHERE id = ? ";

    // Конструктор
    public UserRepositoryJdbcImpl(Connection connection) {
        this.connection = connection;
    }

//     Реализация интерфейса RowMaper, который преобразует набор строк таблицы,
//     которые были выбраны SQL-командой, в объект типа USER
    private RowMapper<User> userRowMapper = new RowMapper<User>() {
        @Override
        public User mapRow(ResultSet row) throws SQLException {
            Long id = row.getLong("id");
            String username = row.getString("username");
            String email = row.getString("email");
            Integer password = row.getInt("password");
            String surname = row.getString("surname");
            String name = row.getString("_name");
            Date birthdate = row.getDate("birthdate");
            Boolean gender = row.getBoolean("gender");
            System.out.println(gender);
            String city = row.getString("city");
            String site = row.getString("site");
            String github = row.getString("github");
            String aboutMe = row.getString("aboutme");
            String img = row.getString("img");
            return new User(id, username, surname, name, birthdate, gender, city, site, github, aboutMe, email, password, img);
        }
    };

    // Добавление нового пользователя в таблицу
    @Override
    public boolean save(User model) {
        // Создание PreparedStatement, в параметры которого передается строковая константа с sql запросом на добавление нового пользователя
        try (PreparedStatement statement = connection.prepareStatement(USER_INSERT, Statement.RETURN_GENERATED_KEYS)) {
            // Добавление значений параметров 1-4 в SQL апросе
            statement.setString(1, model.getUsername());
            statement.setString(2, model.getEmail());
            statement.setLong(3, model.getPassword());
            // Выполнение запроса
            int affectedRows = statement.executeUpdate();
            // Если не была затронута ни одна строка, значит произошла какая-то ошибка при выполнении запроса
            if (affectedRows == 0) {
                return false;
            }
            // Ключ нового пользователя
            ResultSet generatesKeys = statement.getGeneratedKeys();
            // Добавление id объекту пользователя
            if (generatesKeys.next()) {
                model.setId(generatesKeys.getLong("id"));
            } else {
                throw new SQLException();
            }
            generatesKeys.close();
        } catch (SQLException e) {
            return false;
        }
        return true;
    }

    @Override
    public boolean signIn(String name, int password) {
        User user = null;
        // Создание PreparedStatement, в параметры которого передается строковая константа с sql запросом на получаение пользователя по id
        try (PreparedStatement statement = connection.prepareStatement(SIGN_IN);) {
            // Добавление значения параметра 1 в SQL запрос
            statement.setString(1, name);
            statement.setInt(2, password);
            // Выполнение запроса
            ResultSet resultSet = statement.executeQuery();
            // Создание объекта пользователя по строке таблице, которую вернул SQL запрос
            if (resultSet.next()) {
                Long id = resultSet.getLong("id");
                String username = resultSet.getString("username");
                String email = resultSet.getString("email");
                Integer pass = resultSet.getInt("password");
                user = new User(id, username, email, pass);
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
        return user != null;
    }

    @Override
    public User findUser(String email) {
        User user = null;
        // Создание PreparedStatement, в параметры которого передается строковая константа с sql запросом на получаение пользователя по id
        try (PreparedStatement statement = connection.prepareStatement(FIND_USER);) {
            // Добавление значения параметра 1 в SQL запрос
            statement.setString(1, email);
            // Выполнение запроса
            ResultSet resultSet = statement.executeQuery();
            // Создание объекта пользователя по строке таблице, которую вернул SQL запрос
            if (resultSet.next()) {
                user = userRowMapper.mapRow(resultSet);
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
        return user;
    }

    @Override
    public boolean updateUser(String email, String fileName) {
        // Создание PreparedStatement, в параметры которого передается строковая константа с sql запросом на добавление нового пользователя
        try (PreparedStatement statement = connection.prepareStatement(UPDATE_USER, Statement.RETURN_GENERATED_KEYS)) {
            // Добавление значений параметров 1-4 в SQL апросе
            statement.setString(1, fileName);
            statement.setString(2, email);
            // Выполнение запроса
            int affectedRows = statement.executeUpdate();
            // Если не была затронута ни одна строка, значит произошла какая-то ошибка при выполнении запроса
            if (affectedRows == 0) {
                return false;
            }
        } catch (SQLException e) {
            return false;
        }
        return true;
    }

    @Override
    public User findUserById(Long id) {
        User user = null;
        // Создание PreparedStatement, в параметры которого передается строковая константа с sql запросом на получаение пользователя по id
        try (PreparedStatement statement = connection.prepareStatement(FIND_USER_BY_ID);) {
            // Добавление значения параметра 1 в SQL запрос
            statement.setLong(1, id);
            // Выполнение запроса
            ResultSet resultSet = statement.executeQuery();
            // Создание объекта пользователя по строке таблице, которую вернул SQL запрос
            if (resultSet.next()) {
                user = userRowMapper.mapRow(resultSet);
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
        return user;
    }
}
