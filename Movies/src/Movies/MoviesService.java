package com.example.Movies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MoviesService {
    @Autowired
    private  MoviesRepository repo;

    public  List<Movies> listAll() {
        return (List<Movies>) repo.findAll();
    }

    public void save(Movies movies) {
        repo.save(movies);
    }

    public Movies get(long movieID) {
        return repo.findById(movieID).get();
    }

    public void delete(long movieID) {
        repo.deleteById(movieID);
    }
}
