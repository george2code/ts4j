package ru.trustsystem.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ru.trustsystem.businesslogic.PageHelper;
import ts.datalayer.services.ReviewService;

@Controller
@RequestMapping("/")
public class HomeController {

    @Autowired
    private ReviewService reviewService;

    @RequestMapping(method = RequestMethod.GET)
    public String getIndex(ModelMap model) {

        model.addAttribute("message", "Hello world!");
        model.addAttribute("title", PageHelper.GetPageTitle(""));
        model.addAttribute("controller", PageHelper.GetControllerName(getClass()));

        model.addAttribute("reviews", this.reviewService.findAll());

        return "home/index";
    }
}