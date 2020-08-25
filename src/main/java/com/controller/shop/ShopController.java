package com.controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/shop")
public class ShopController {

    @RequestMapping(value = "/toShop",method = RequestMethod.GET)
    public String basic(){
        return "/cms/shop/basic";
    }

    @RequestMapping(value = "/toGoodsManage",method = RequestMethod.GET)
    public String goodsManage(){
        return "/cms/shop/goodsManage";
    }
}
