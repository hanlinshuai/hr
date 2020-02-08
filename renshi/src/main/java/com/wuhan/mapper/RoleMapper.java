package com.wuhan.mapper;

import com.wuhan.bean.Role;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author:hanlin.yuan
 * @date:2020/2/8
 */
@Repository
public interface RoleMapper {

    /**
     * 根据用户名称获取角色
     * @param userName
     * @return
     */
    List<Role> findByUserName(String userName);
}
