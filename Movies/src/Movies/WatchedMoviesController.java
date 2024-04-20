package com.example.Movies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class WatchedMoviesController {
    @Autowired
    private WatchedMoviesService service;

    @GetMapping("/watchedmovies")
    public String viewWatchedMovies(Model model) {
        List<Watchedmovies> listWatchedmovies = service.listAll();
        model.addAttribute("listWatchedmovies", listWatchedmovies);
        return "WatchedMoviesIndex";
    }

    @RequestMapping("/deletewatchedmovies/{usermoviewatchedid}")
    public String deleteWatchedMovie(@PathVariable(name = "usermoviewatchedid") int usermoviewatchedid) {
        service.delete(usermoviewatchedid);
        return "redirect:/watchedmovies";
    }

    @RequestMapping("editwatchedmovies/{usermoviewatchedid}")
    public ModelAndView showEditUserPage(@PathVariable(name = "watchedmovies") int usermoviewatchedid) {
        ModelAndView mav = new ModelAndView("new");
        Watchedmovies watchedmovies = service.get(usermoviewatchedid);
        mav.addObject("Watchedmovies", watchedmovies);
        return mav;
    }

    @GetMapping("/newwatchedmovie/{movieid}")
    public String add(Model model) {
        model.addAttribute("Watchedmovies", new Watchedmovies());
        return "WatchedMovieNew";
    }

    @RequestMapping(value = "/savewatchedmovie", method = RequestMethod.POST)
    public String saveWatchedMovieName(@ModelAttribute("movieid") Watchedmovies watchedmovies) {
        service.save(watchedmovies);
        return "redirect:/watchedmovies";
    }

}
