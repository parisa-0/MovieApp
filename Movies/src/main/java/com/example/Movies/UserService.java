package com.example.Movies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository repo;

    public List<User> findName(String username, String password) {
        List<User> users = repo.findName(username, password);
        return users;
    }

    public List<User> listAll() {
        return (List<User>) repo.findAll();
    }

    public void save(User user) {
        repo.save(user);
    }

    public User get(long userID) {
        return repo.findById(userID).get();
    }


    public void delete(long userID) {
        repo.deleteById(userID);
    }
}
