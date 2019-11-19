package repositories;

import models.Category;
import models.Project;

import java.sql.*;
import java.util.ArrayList;

public class CategoryRepositoryJdbcImpl implements CategoryRepository{
    private Connection connection;

    //Строковые константы, содержащие команды SQL
    //language=SQL
    private final String PROJECT_INSERT = "insert into project_table (owner_id, _name, about_proj, github) values (?,?,?,?);";
    //language=SQL
    private final String FIND_BY_ID = "select (name) from category_table INNER JOIN category_for_project cfp on category_table.id = cfp.id_catogory where id_project = ?;";
    //language=SQL
    private final String FIND_ALL = "select * from category_table;";


    // Конструктор
    public CategoryRepositoryJdbcImpl(Connection connection) {
        this.connection = connection;
    }

//     Реализация интерфейса RowMaper, который преобразует набор строк таблицы,
//     которые были выбраны SQL-командой, в объект типа USER
    private RowMapper<String> stringRowMapper = new RowMapper<String>() {
        @Override
        public String mapRow(ResultSet row) throws SQLException {
            String name = row.getString("name");
            return name;
        }
    };

    private RowMapper<Category> categoryRowMapper = new RowMapper<Category>() {
        @Override
        public Category mapRow(ResultSet row) throws SQLException {
            Long id = row.getLong("id");
            String name = row.getString("name");
            return new Category(id, name);
        }
    };

    // Добавление нового пользователя в таблицу
    @Override
    public boolean save(Project model) {
        return true;
    }



    @Override
    public ArrayList<String> findById(Long id) {
        ArrayList<String> cat = new ArrayList<>();

        try (PreparedStatement statement = connection.prepareStatement(FIND_BY_ID);) {
            statement.setLong(1, id);
            // Выполнение запроса
            ResultSet resultSet = statement.executeQuery();
            // Создание объекта пользователя по строке таблице, которую вернул SQL запрос
            while (resultSet.next()) {
                cat.add(stringRowMapper.mapRow(resultSet));
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }

        return cat;
    }

    @Override
    public ArrayList<Category> findAll() {
        ArrayList<Category> cat = new ArrayList<>();

        try (PreparedStatement statement = connection.prepareStatement(FIND_ALL);) {
            // Выполнение запроса
            ResultSet resultSet = statement.executeQuery();
            // Создание объекта пользователя по строке таблице, которую вернул SQL запрос
            while (resultSet.next()) {
                cat.add(categoryRowMapper.mapRow(resultSet));
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }

        return cat;
    }
}
