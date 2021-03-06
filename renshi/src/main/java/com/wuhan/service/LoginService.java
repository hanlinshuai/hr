package com.wuhan.service;

import com.wuhan.bean.ResultObject;

/**
 * @author:hanlin.yuan
 * @date:2020/1/30
 */
public interface LoginService {
    /**
     * 登录
     * @param username 账户
     * @param password 密码
     * @param rememberMe 自动登录
     * @return
     */
    ResultObject login(String username, String password, Boolean rememberMe);

    /**
     * 获取当用户
     * @return 0 为管理员   1位招聘   2位求职着
     */
    Integer isRole();
}
