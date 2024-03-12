package com.example.Movies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class SavedmoviesController {
    @Autowired
    private SavedmoviesService service;

    @GetMapping("/savedmovies")
    public String viewSavedMovies(Model model) {
        List<Savedmovies> listSavedmovies = service.listAll();
        model.addAttribute("listSavedmovies", listSavedmovies);
        return "SavedMoviesIndex";
    }

    @RequestMapping("/deletesavedmovies/{usermoviesavedid}")
    public String deleteSavedMovie(@PathVariable(name = "usermoviesavedid") int usermoviesavedid) {
        service.delete(usermoviesavedid);
        return "redirect:/savedmovies";
    }

    @RequestMapping("editsavedmovies/{usermoviesavedid}")
    public ModelAndView showEditSavedMoviesPage(@PathVariable(name = "savedmovies") int usermoviesavedid) {
        ModelAndView mav = new ModelAndView("new");
        Savedmovies savedmovies = service.get(usermoviesavedid);
        mav.addObject("Savedmovies", savedmovies);
        return mav;
    }

    @GetMapping("/newsavedmovie")
    public String addSavedMovie(Model model) {
        model.addAttribute("Savedmovies", new Savedmovies());
        return "SavedMovieNew";
    }

    @RequestMapping(value = "/savesavedmovie", method = RequestMethod.POST)
    public String saveSavedMovie(@ModelAttribute("usermoviesavedid") Savedmovies savedmovies) {
        service.save(savedmovies);
        return "redirect:/savedmovies";
    }
}
