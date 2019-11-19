package repositories;

import models.Category;
import models.Project;

import java.sql.*;
import java.util.ArrayList;

public class CFPRepositoryJdbcImpl implements CFPRepository{
    private Connection connection;

    //Строковые константы, содержащие команды SQL
    //language=SQL
    private final String CATEGORY_INSERT = "insert into category_for_project (id_project, id_catogory) VALUES (?,?);";


    // Конструктор
    public CFPRepositoryJdbcImpl(Connection connection) {
        this.connection = connection;
    }

//     Реализация интерфейса RowMaper, который преобразует набор строк таблицы,
//     которые были выбраны SQL-командой, в объект типа USER

    // Добавление нового пользователя в таблицу
    @Override
    public boolean save(Category model) {
        // Создание PreparedStatement, в параметры которого передается строковая константа с sql запросом на добавление нового пользователя
        try (PreparedStatement statement = connection.prepareStatement(CATEGORY_INSERT, Statement.RETURN_GENERATED_KEYS)) {
            // Добавление значений параметров 1-4 в SQL апросе
            statement.setLong(1, model.getProjectId());
            statement.setLong(2, model.getId());
            // Выполнение запроса
            int affectedRows = statement.executeUpdate();
            // Если не была затронута ни одна строка, значит произошла какая-то ошибка при выполнении запроса
            if (affectedRows == 0) {
                return false;
            }
            // Ключ нового пользователя
            ResultSet generatesKeys = statement.getGeneratedKeys();
            // Добавление id объекту пользователя
            generatesKeys.close();
        } catch (SQLException e) {
            return false;
        }
        return true;
    }



}
