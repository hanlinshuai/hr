package com.wuhan.controller;

import com.wuhan.bean.ResultObject;
import com.wuhan.bean.User;
import com.wuhan.service.LoginService;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
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

    @RequestMapping("/user.action")
    public String info(Model model ){
        model.addAttribute("name","张三");
        return "test";
    }

    /**
     * 登录后首页
     * @param model
     * @return
     */
    @RequestMapping("/index.action")
    public String index(Model model ){
        // 判断当用用户的角色
        Integer is = loginService.isRole();
        if (is.equals(0)||is.equals(1)){
            return "backend/index";
        }
        User user = (User) SecurityUtils.getSubject().getPrincipal();
        if (user!=null) {
            model.addAttribute("username",user.getUserName());
        }
        return "frontend/index";
    }


    /**
     * 首页跳转地址
     * @param model
     * @return
     */
    @RequestMapping("/backend/home.action")
    public String home(Model model ){
        return "backend/home";
    }

    /**
     * 用户登录
     * @param username 用户账号
     * @param password 用户密码
     * @param rememberMe 记住登录
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    @ResponseBody
    public ResultObject login(String username, String password,Boolean rememberMe) {
        LOGGER.info("用户："+username+"登录系统");
        ResultObject resultObject =  loginService.login(username,password,rememberMe);
        return resultObject;
    }


}
