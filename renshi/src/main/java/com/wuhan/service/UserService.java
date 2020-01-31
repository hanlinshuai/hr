package com.wuhan.service;

import com.wuhan.bean.User;

/**
 * @author:hanlin.yuan
 * @date:2020/1/30 0030
 */
public interface UserService {
    /**
     * 根据名称查询用户
     * @param userName
     * @return
     */
    User findByUserName(String userName);
}
