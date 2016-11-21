package ru.jr.task.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.jr.task.entity.User;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {

    List<User> findByName(String name);

}
