package com.controller.travel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/travel")
public class TravelController {

    @RequestMapping(value = "/toTravel",method = RequestMethod.GET)
    public String basic(){
        return "/cms/travel/basic";
    }

    @RequestMapping(value = "/toRoutes",method = RequestMethod.GET)
    public String routes(){
        return "/cms/travel/routes";
    }
}
