package com.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class AdminController {


    @RequestMapping(value = "/toAdmin",method = RequestMethod.GET)
    public String toAdmin(){
        return "cms/admin/user";
    }

}
