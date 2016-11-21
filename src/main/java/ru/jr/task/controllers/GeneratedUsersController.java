package ru.jr.task.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.jr.task.Services.UserServices;
import ru.jr.task.entity.User;

import java.util.List;
import java.util.Random;

@RestController
public class GeneratedUsersController {

    @Autowired
    private UserServices userServices;

    @RequestMapping("/generatedTestUsers")
    private List<User> generatedTestUsers(){
        String[] names = {"Fry", "Bender", "Leela", "Zoidberg", "Amy", "Professor", "Zapp",
                "Kif", "Scruffy", "Nibbler", "Hermes", "Morbo", "Mom", "Bialbo",
                "Bobrov", "Diego", "Hulio", "Kim", "Elly", "Risha"};

        for(String name : names){
            User user = new User();
            user.setName(name);
            user.setAge(new Random().nextInt(47) + 23);
            user.setIsAdmin(user.getAge() % 3 == 0 ? true : false);
            userServices.addUser(user);
        }
        List<User> userList = userServices.findAllUser();
        return  userList;
    }
}
