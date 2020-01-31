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
     * @return
     */
    ResultObject login(String username, String password);
}
