package com.rajesh.integration.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value="/")
    public ModelAndView getHome(){
        return new ModelAndView("home");
    }

    @RequestMapping(value="/dialog")
    public ModelAndView getDialog(){
        return new ModelAndView("dialog");
    }
}
