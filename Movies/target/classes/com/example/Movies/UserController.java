package com.example.Movies;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class UserController {

    @Autowired
    private UserService service;

    @GetMapping("/vhp")
    public String viewHomePage(Model model) {
        List<User> listUser = service.listAll();
        model.addAttribute("listUser", listUser);
        return "UserIndex";
    }

    @RequestMapping("/delete/{userID}")
    public String deleteUser(@PathVariable(name = "userID") int userID) {
        service.delete(userID);
        return "redirect:/vhp";
    }

    @RequestMapping("edit/{id}")
    public ModelAndView showEditUserPage(@PathVariable(name = "userID") int userID) {
        ModelAndView mav = new ModelAndView("new");
        User user = service.get(userID);
        mav.addObject("user", user);
        return mav;
    }

    @GetMapping("/new")
    public String add(Model model) {
        model.addAttribute("user", new User());
        return "UserNew";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveStudent(@ModelAttribute("user") User user) {
        service.save(user);
        return "redirect:/vhp";
    }




}

