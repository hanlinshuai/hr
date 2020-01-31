package com.wuhan.mapper;

import com.wuhan.bean.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 登录
 * @author:hanlin.yuan
 * @date:2020/1/30
 */
@Repository
public interface UserMapper {

    /**
     * 获取所有的用户
     * @return
     */
    List<User> findUser();

    /**
     * 根据账户名称，或者用户
     * @param userName
     * @return
     */
    User findByUserName(String userName);
}
