package com.example.Movies;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "usermoviessaved")
public class Savedmovies {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long usermoviesavedid;
    private Long userid;
    private Long movieid;

    private LocalDateTime datemoviesaved;

    public Savedmovies() {
        super();
    }

    public Savedmovies(Long usermoviesavedid, Long userid, Long movieid, LocalDateTime datemoviesaved) {
        super();
        this.usermoviesavedid = usermoviesavedid;
        this.userid = userid;
        this.movieid = movieid;
        this.datemoviesaved = datemoviesaved;
    }

    public Long getUsermoviesavedid() {
        return usermoviesavedid;
    }

    public void setUsermoviesavedid(Long usermoviesavedid) {
        this.usermoviesavedid = usermoviesavedid;
    }

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public Long getMovieid() {
        return movieid;
    }

    public void setMovieid(Long movieid) {
        this.movieid = movieid;
    }


    public LocalDateTime getDatemoviesaved() {
        return datemoviesaved;
    }
    public void setDatemoviesaved(LocalDateTime datemoviesaved) {
        this.datemoviesaved = datemoviesaved;
    }
}
