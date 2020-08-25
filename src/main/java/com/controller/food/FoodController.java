package com.controller.food;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/food")
public class FoodController {

    @RequestMapping(value = "/toFood",method = RequestMethod.GET)
    public String basic(){
        return "/cms/food/basic";
    }

    @RequestMapping(value = "/toComplaintsSearch",method = RequestMethod.GET)
    public String complaintsSearch(){
        return "/cms/food/complaintsSearch";
    }


}
