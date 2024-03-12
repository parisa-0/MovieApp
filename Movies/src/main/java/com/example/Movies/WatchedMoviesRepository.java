package com.example.Movies;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface WatchedMoviesRepository extends JpaRepository<Watchedmovies, Long> {
}
