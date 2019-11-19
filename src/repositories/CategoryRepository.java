package repositories;

import models.Category;
import models.Project;

import java.util.ArrayList;

public interface CategoryRepository extends CrudRepository<Project, Long> {
    ArrayList<String> findById(Long id);

    ArrayList<Category> findAll();
}
