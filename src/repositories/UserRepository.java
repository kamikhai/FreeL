package repositories;

import models.User;

public interface UserRepository extends CrudRepository<User, Long> {
    boolean signIn(String name, int password);
    User findUser(String email);
    boolean updateUser(String email, String fileName);

    User findUserById(Long id);
}
