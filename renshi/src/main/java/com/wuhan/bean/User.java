package com.wuhan.bean;

import lombok.Data;
import lombok.ToString;

import java.util.Date;

/**
 * @author:hanlin.yuan
 * @date:2020/1/30 0030
 */
@Data
@ToString
public class User {
    private Integer id;
    /**用户名称*/
    private String userName;
    /**密码*/
    private String password;
    /**状态*/
    private String status;
    /**创建时间*/
    private Date createTime;
}
