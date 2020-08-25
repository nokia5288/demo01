package com.controller.user;

import com.pojo.user.User;
import com.service.user.UserService;
import com.util.AlUtil;
import com.util.RedisUtil;
import com.util.SaltUtil;
import com.util.SpringContextUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.*;
import java.util.concurrent.TimeUnit;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private RedisUtil redisUtil;


    //登录页面
    @RequestMapping(value = "/toLogin",method = RequestMethod.GET)
    public String toLogin(){
        return "login";
    }

    //注册页面
    @RequestMapping(value = "/toRegister",method = RequestMethod.GET)
    public String toRegister(){
        return "register";
    }


    //注册
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    @ResponseBody
    public Map register(HttpServletRequest request){
        Map map=new HashMap();
        Map map1=new HashMap();
        String msg="";
        String salt= SaltUtil.createSalt();
        map1.put("uName",request.getParameter("uName"));
        map1.put("uPwd",SaltUtil.createCredentials(request.getParameter("uPwd"),salt));
        map1.put("salt",salt);
        map1.put("email",request.getParameter("email"));
        map1.put("mobile",request.getParameter("mobile"));
        String code=request.getParameter("code");
        if(redisUtil.hasKey("code")){
            if(redisUtil.get("code").equals(code)){
                int i= userService.addSysUser(map1);
                if(i>0){
                    msg="1";
                    redisUtil.delete("code");
                    map.put("msg",msg);
                }else{
                    msg="添加失败，请联系管理员";
                    map.put("msg",msg);
                }
            }else{
                msg="验证码不正确，请重新输入";
                map.put("msg",msg);
            }
        }else{
            msg="验证码已过期，请重新获取";
            map.put("msg",msg);
        }

        return map;
    }

    //发送验证码
    @RequestMapping(value = "/sendSms",method = RequestMethod.POST)
    @ResponseBody
    public Map sendSms(String mobile){
        Map map=new HashMap();
        int msg=0;
        String SmsCode=AlUtil.sendSms(mobile);
        if(SmsCode!=null){
            msg=1;
            redisUtil.set("code",SmsCode);
            redisUtil.expire("code",300, TimeUnit.SECONDS);
        }
        map.put("msg",msg);
        return map;
    }

    //用户名查询
    @RequestMapping(value = "/selByuName",method = RequestMethod.POST)
    @ResponseBody
    public Map selByuName(String uName){
        Map map=new HashMap();
        int msg=0;
        if(userService.selByuName(uName)!=null){
            msg=1;
        }
        map.put("msg",msg);
        return map;
    }

    //登录
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public Map login(HttpServletRequest request){
        Map map=new HashMap();
        String msg="0";
        String uName=request.getParameter("uName");
        String uPwd=request.getParameter("uPwd");
        Subject subject=SecurityUtils.getSubject();
        UsernamePasswordToken token=new UsernamePasswordToken(uName,uPwd);
        try{
            subject.login(token);
            msg="1";
        }catch (Exception e){
            if(e.toString().equals("org.apache.shiro.authc.UnknownAccountException: 1")){
                msg="用户名已被禁用，请联系系统管理员";
            }else{
                msg="用户名不存在或密码错误";
            }

        }
        map.put("msg",msg);

        return map;
    }


    //跳转至首页Logical.AND:全部满足，Logical.OR:满足一个即可
    @RequiresRoles(value={"admin","hotel","travel"},logical = Logical.OR)
    @RequestMapping(value = "/toIndex",method = RequestMethod.GET)
    public String toIndex(){

        return "/cms/index";
    }

    //index跳转页面
    @RequestMapping(value = "/toPage",method =RequestMethod.GET )
    public String toIndex(String page){
        return "cms/"+page;
    }

    //退出
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public String logout(){
        try{
            Subject subject=SecurityUtils.getSubject();
            if(subject.isAuthenticated()){
                subject.logout();
                return "redirect:/user/toLogin";
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return "redirect:/user/toIndex";
    }

    //error
    @RequestMapping(value = "/error",method = RequestMethod.GET)
    public String error(){
        return "error";
    }





}
