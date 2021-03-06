package com.wuhan.service.impl;

import com.wuhan.bean.ResultObject;
import com.wuhan.service.LoginService;
import com.wuhan.util.MD5Utils;
import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

/**
 * @author:hanlin.yuan
 * @date:2020/1/31
 */
@Service
public class LoginServiceImpl implements LoginService {

    private static final Logger LOGGER = Logger.getLogger(LoginServiceImpl.class);
    @Override
    public ResultObject login(String username, String password, Boolean rememberMe) {
        ResultObject resultObject = new ResultObject();
        // 加密密码
        String encrypt = MD5Utils.encrypt(password);
        UsernamePasswordToken token = new UsernamePasswordToken(username, encrypt);
        rememberMe = rememberMe == null ? false : rememberMe;
        token.setRememberMe(rememberMe);
        Subject subject = SecurityUtils.getSubject();
        try {
            subject.login(token);
            resultObject.setMsg("登录成功");
        } catch (UnknownAccountException e) {
            resultObject.setCode("-1");
            resultObject.setMsg("账户或者密码错误");
            LOGGER.error("未知帐户异常",e);
        } catch (IncorrectCredentialsException e) {
            resultObject.setCode("-1");
            resultObject.setMsg("账户或者密码错误");
            LOGGER.error("不正确的凭据异常",e);
        } catch (LockedAccountException e) {
            resultObject.setCode("-1");
            resultObject.setMsg("锁定帐户");
            LOGGER.error("锁定帐户异常",e);
        } catch (AuthenticationException e) {
            resultObject.setCode("-1");
            resultObject.setMsg("登录失败");
            LOGGER.error("登录失败",e);
        }
        return resultObject;
    }

    @Override
    public Integer isRole() {
        Subject subject = SecurityUtils.getSubject();
        boolean admin = subject.hasRole("admin");
        boolean boss = subject.hasRole("boss");
        if (admin) {
            return 0;
        }
        if (boss) {
            return 1;
        }
        return 2;
    }
}
