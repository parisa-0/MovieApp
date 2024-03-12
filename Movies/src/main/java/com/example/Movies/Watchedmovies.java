package com.example.Movies;

import jakarta.persistence.*;

import java.time.LocalDateTime;

@Entity
@Table(name = "usermovieswatched")
public class Watchedmovies {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long usermoviewatchedid;
    private Long userid;
    private Long movieid;

    private LocalDateTime datemoviewatched;

    public Watchedmovies() {
        super();
    }

    public Watchedmovies(Long usermoviewatchedid, Long userid, Long movieid, LocalDateTime datemoviewatched) {
        super();
        this.usermoviewatchedid = usermoviewatchedid;
        this.userid = userid;
        this.movieid = movieid;
        this.datemoviewatched = datemoviewatched;
    }

    public Long getUsermoviewatchedid() {
        return usermoviewatchedid;
    }

    public void setUsermoviewatchedid(Long usermoviewatchedid) {
        this.usermoviewatchedid = usermoviewatchedid;
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


    public LocalDateTime getDatemoviewatched() {
        return datemoviewatched;
    }
    public void setDatemoviewatched(LocalDateTime datemoviewatched) {
        this.datemoviewatched = datemoviewatched;
    }
}
