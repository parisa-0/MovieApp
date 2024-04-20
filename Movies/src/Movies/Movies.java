package com.example.Movies;

import jakarta.persistence.*;

@Entity
@Table(name = "movies")
public class Movies {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long movieID;
    private String moviename;

    private String movieimg;

    public Movies() {
        super();
    }

    public Movies(Long movieID, String moviename, String movieimg) {
        super();
        this.movieID = movieID;
        this.moviename = moviename;
        this.movieimg = movieimg;
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

    public String getMovieimg() {
        return movieimg;
    }

    public void setMovieimg(String movieimg) {
        this.movieimg = movieimg;
    }

}
