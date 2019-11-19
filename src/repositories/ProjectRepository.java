package repositories;

import models.Project;
import models.User;

import java.util.ArrayList;

public interface ProjectRepository extends CrudRepository<Project, Long> {
    ArrayList<Project> findAll();
}
