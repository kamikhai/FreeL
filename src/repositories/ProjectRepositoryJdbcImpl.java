package repositories;

import models.Project;
import models.User;
import services.UserService;

import java.sql.*;
import java.util.ArrayList;

public class ProjectRepositoryJdbcImpl implements ProjectRepository{
    private Connection connection;

    //Строковые константы, содержащие команды SQL
    //language=SQL
    private final String PROJECT_INSERT = "insert into project_table (owner_id, _name, about_proj, github) values (?,?,?,?);";
    //language=SQL
    private final String FIND_ALL = "select * from project_table;";


    // Конструктор
    public ProjectRepositoryJdbcImpl(Connection connection) {
        this.connection = connection;
    }

//     Реализация интерфейса RowMaper, который преобразует набор строк таблицы,
//     которые были выбраны SQL-командой, в объект типа USER
    private RowMapper<Project> projectRowMapper = new RowMapper<Project>() {
        @Override
        public Project mapRow(ResultSet row) throws SQLException {
            Long id = row.getLong("id");
            String username = row.getString("_name");
            Long owner = row.getLong("owner_id");
            String about = row.getString("about_proj");
            String github = row.getString("github");
            return new Project(id, username, owner, about, github);
        }
    };

    // Добавление нового пользователя в таблицу
    @Override
    public boolean save(Project model) {
        return true;
    }

    public Long saveModel(Project model){
        // Создание PreparedStatement, в параметры которого передается строковая константа с sql запросом на добавление нового пользователя
        try (PreparedStatement statement = connection.prepareStatement(PROJECT_INSERT, Statement.RETURN_GENERATED_KEYS)) {
            // Добавление значений параметров 1-4 в SQL апросе
            statement.setLong(1, model.getOwner());
            statement.setString(2, model.getName());
            statement.setString(3, model.getAbout());
            statement.setString(4, model.getGithub());
            // Выполнение запроса
            int affectedRows = statement.executeUpdate();
            // Если не была затронута ни одна строка, значит произошла какая-то ошибка при выполнении запроса
            if (affectedRows == 0) {
                return null;
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
            return null;
        }
        return model.getId();
    }



    @Override
    public ArrayList<Project> findAll() {
        ArrayList<Project> projects = new ArrayList<>();

        try (PreparedStatement statement = connection.prepareStatement(FIND_ALL);) {
            // Выполнение запроса
            ResultSet resultSet = statement.executeQuery();
            // Создание объекта пользователя по строке таблице, которую вернул SQL запрос
            while (resultSet.next()) {
                projects.add(projectRowMapper.mapRow(resultSet));
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }

        return projects;
    }
}
