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

    @GetMapping("/user")
    public String viewHomePage(Model model) {
        List<User> listUser = service.listAll();
        model.addAttribute("listUser", listUser);
        return "UserIndex";
    }
/*
    @RequestMapping("edit/{id}")
    public ModelAndView showEditUserPage(@PathVariable(name = "userID") int userID) {
        ModelAndView mav = new ModelAndView("UserNew");
        User user = service.get(userID);
        mav.addObject("user", user);
        return mav;
    }

 */

    @GetMapping("/new")
    public String add(Model model) {
        model.addAttribute("user", new User());
        return "UserNew";
    }
/*
    @RequestMapping(value = "/saveuser", method = RequestMethod.POST)
    public String saveUser(@ModelAttribute("user") User user) {
        service.save(user);
        return "redirect:/user";
    }

 */

    @RequestMapping("/close")
    public String deleteUser(@PathVariable(name = "userID") int userID) {
        service.delete(userID);
        return "redirect:/user";
    }



    @RequestMapping(value = "showLoggedInUser", method = RequestMethod.GET)
    public ModelAndView showLoggedInUser(@RequestParam(name = "username") String username,
                                         @RequestParam(name = "password") String password) {
        ModelAndView mav = new ModelAndView("UserIndex");
        List<User> listUser = service.findName(username, password);
        //if listuser is empty

        if(listUser.isEmpty()) {

        }
        else {
            mav.addObject("listUser", listUser);
        }
        return mav;
      //  return "UserIndex";
    }

 /*

    @RequestMapping("/showLoggedInUser")
    public ModelAndView showLoggedInUser() {
        ModelAndView mav = new ModelAndView("UserIndex");
        List<User> listUser = service.findName("BarryAllen", "TheFlash!10");
        System.out.println("Get / list name 2" + listUser);
        mav.addObject("listUser", listUser);
        return mav;
    }
*/
    @GetMapping("/new2")
    public String logUser(Model model) {
        model.addAttribute("user", new User());
        return "UserNew2";
    }



    @GetMapping("/findName")
    public String findName(Model model) {
        List<User> listUser = service.findName("BarryAllen", "TheFlash!10");
        model.addAttribute("listUser", listUser);
        System.out.println("Get / list name 2" + listUser);
        return "UserIndex";
    }








}

