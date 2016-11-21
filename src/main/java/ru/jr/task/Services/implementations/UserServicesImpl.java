package ru.jr.task.Services.implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.jr.task.DAO.UserRepository;
import ru.jr.task.Services.UserServices;
import ru.jr.task.entity.User;

import java.util.List;

@Service
public class UserServicesImpl implements UserServices {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User findByIdUser(String id) {
        return userRepository.findOne(new Long(id));
    }

    @Override
    public void addUser(User user) {
        userRepository.save(user);
    }

    @Override
    public void removeUser(User user) {
        userRepository.delete(user);
    }

    @Override
    public void updateUser(User user) {
        userRepository.save(user);
    }

    @Override
    public List<User> findByNameUser(String name) {
        return userRepository.findByName(name);
    }

    @Override
    public List<User> findAllUser() {
        return  userRepository.findAll();
    }
}
