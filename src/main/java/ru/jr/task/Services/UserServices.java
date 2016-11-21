package ru.jr.task.Services;

import ru.jr.task.entity.User;
import java.util.List;

public interface UserServices {

    void addUser(User user);

    void removeUser(User user);

    void updateUser(User user);

    List<User> findByNameUser(String name);

    User findByIdUser(String id);

    List<User> findAllUser();
}
