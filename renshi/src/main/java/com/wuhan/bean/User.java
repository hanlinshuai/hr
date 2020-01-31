package com.wuhan.bean;

import lombok.Data;
import lombok.ToString;

/**
 * @author:hanlin.yuan
 * @date:2020/1/30 0030
 */
@Data
@ToString
public class User {
    private Integer id;

    private String name;

    private Integer age;

    private String address;

    private String password;

    private String status;
}
