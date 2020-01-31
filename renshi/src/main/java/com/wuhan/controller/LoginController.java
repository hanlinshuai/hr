package com.wuhan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 登录
 * @author:hanlin.yuan
 * @date:2020/1/30 0030
 */
@Controller
public class LoginController {

    @RequestMapping("/user")
    public String info(Model model ){
        model.addAttribute("name","张三");
        System.out.println("123456789");
        return "test";
    }


}
