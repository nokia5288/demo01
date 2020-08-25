package com.controller.hotel;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hotel")
public class HotelController {

    @RequestMapping(value = "/toHotel",method = RequestMethod.GET)
    public String basic(){
        return "/cms/hotel/basic";
    }

    @RequestMapping(value = "/toRooms",method = RequestMethod.GET)
    public String rooms(){
        return "/cms/hotel/rooms";
    }
}
