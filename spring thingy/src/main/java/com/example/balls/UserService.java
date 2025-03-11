package com.example.balls;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface UserService {
    User createUser(User user);
    User getUserById(Long id);
    List<User> getAllUsers();
    User updateUser(User user);
    void deleteUser(Long id);
}
