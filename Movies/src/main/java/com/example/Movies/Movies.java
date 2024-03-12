package com.example.Movies;

import jakarta.persistence.*;

@Entity
@Table(name = "movies")
public class Movies {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long movieID;
    private String moviename;

    public Movies() {
        super();
    }

    public Movies(Long movieID, String moviename) {
        super();
        this.movieID = movieID;
        this.moviename = moviename;
    }

    public Long getMovieID() {
        return movieID;
    }

    public void setMovieID(Long movieID) {
        this.movieID = movieID;
    }

    public String getMoviename() {
        return moviename;
    }

    public void setMoviename(String moviename) {
        this.moviename = moviename;
    }

}
