package com.example.Movies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class MoviesController {
    @Autowired
    private MoviesService service;

    @GetMapping("/movies")
    public String viewMovies(Model model) {
        List<Movies> listMovies = service.listAll();
        model.addAttribute("listMovies", listMovies);
        return "MovieNamesIndex";
    }

    @RequestMapping("/deletemovies/{movieID}")
    public String deleteMovieName(@PathVariable(name = "movieID") int movieID) {
        service.delete(movieID);
        return "redirect:/movies";
    }

    @RequestMapping("editmovies/{movieID}")
    public ModelAndView showEditMoviePage(@PathVariable(name = "movieID") int movieID) {
        ModelAndView mav2 = new ModelAndView("MovieNew");
        Movies movies = service.get(movieID);
        mav2.addObject("Movies", movies);
        return mav2;
    }

    @GetMapping("/newmovie")
    public String add(Model model) {
        model.addAttribute("movies", new Movies());
        return "MovieNew";
    }

    @RequestMapping(value = "/savemovie", method = RequestMethod.POST)
    public String saveMovieName(@ModelAttribute("movieName") Movies movies) {
        service.save(movies);
        return "redirect:/movies";
    }



}
