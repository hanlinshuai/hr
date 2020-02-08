package com.wuhan.service;

import com.wuhan.bean.Role;

import java.util.List;

/**
 * 角色
 * @author:hanlin.yuan
 * @date:2020/2/8
 */
public interface RoleService {

    List<Role> findByUserName(String userName);
}
