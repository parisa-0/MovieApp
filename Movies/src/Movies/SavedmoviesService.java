package com.example.Movies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SavedmoviesService {
    @Autowired
    private SavedmoviesRepository repo;

    public List<Savedmovies> listAll() {
        return (List<Savedmovies>) repo.findAll();
    }

    public void save(Savedmovies savedmovies) {
        repo.save(savedmovies);
    }

    public Savedmovies get(long usermoviesavedid) {
        return repo.findById(usermoviesavedid).get();
    }

    public void delete(long usermoviesavedid) {
        repo.deleteById(usermoviesavedid);
    }
}
