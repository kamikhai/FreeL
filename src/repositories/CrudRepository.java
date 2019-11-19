package repositories;

public interface CrudRepository<T, ID> {
    boolean save(T model);
}
