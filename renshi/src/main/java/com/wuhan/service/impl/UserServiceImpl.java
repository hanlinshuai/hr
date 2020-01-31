package com.wuhan.service.impl;

import com.wuhan.bean.User;
import com.wuhan.mapper.UserMapper;
import com.wuhan.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author:hanlin.yuan
 * @date:2020/1/30 0030
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User findByUserName(String userName) {
        return userMapper.findByUserName(userName);
    }
}
