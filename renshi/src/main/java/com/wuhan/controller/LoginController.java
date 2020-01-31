package com.wuhan.controller;

import com.wuhan.bean.ResultObject;
import com.wuhan.service.LoginService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 登录
 * @author:hanlin.yuan
 * @date:2020/1/30
 */
@Controller
public class LoginController {

    private static final Logger LOGGER = Logger.getLogger(LoginController.class);

    @Autowired
    private LoginService loginService;

    @RequestMapping("/user")
    public String info(Model model ){
        model.addAttribute("name","张三");
        System.out.println("123456789");
        return "test";
    }

    @RequestMapping("/index.action")
    public String index(Model model ){
        return "index";
    }

    /**
     * 用户登录
     * @param username 用户账号
     * @param password 用户密码
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public ResultObject login(String username, String password) {
        LOGGER.info("用户："+username+"登录系统");
        ResultObject resultObject =  loginService.login(username,password);
        return resultObject;
    }


}
