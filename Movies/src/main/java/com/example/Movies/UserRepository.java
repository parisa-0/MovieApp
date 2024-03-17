package com.example.Movies;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
     /*
    @Query("SELECT u FROM User u where u.username like ?1%")
    List<User> findName(String username);
     */
    @Query("SELECT u FROM User u where u.username = ?1 and u.password = ?2")
    List<User> findName(String username, String password);

}
