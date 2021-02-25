package service;

import java.util.List;

public interface IService<T> {
    List<T> findAll();

    T findById(int id);

    void insert(T t);
    void delete(int id);
    void edit(T t);
    List<T> findByName(String name);
}
