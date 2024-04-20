package com.example.Movies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WatchedMoviesService {
    @Autowired
    private WatchedMoviesRepository repo;

    public List<Watchedmovies> listAll() {
        return (List<Watchedmovies>) repo.findAll();
    }

    public void save(Watchedmovies watchedmovies) {
        repo.save(watchedmovies);
    }

    public Watchedmovies get(long usermoviewatchedid) {
        return repo.findById(usermoviewatchedid).get();
    }

    public void delete(long usermoviewatchedid) {
        repo.deleteById(usermoviewatchedid);
    }
}
