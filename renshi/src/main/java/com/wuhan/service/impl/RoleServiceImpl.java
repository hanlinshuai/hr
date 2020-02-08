package com.wuhan.service.impl;

import com.wuhan.bean.Role;
import com.wuhan.mapper.RoleMapper;
import com.wuhan.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 * @author:hanlin.yuan
 * @date:2020/2/8
 */
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> findByUserName(String userName) {
        return roleMapper.findByUserName(userName);
    }
}
