package com.wuhan.bean;

import lombok.Data;
import lombok.ToString;

import java.io.Serializable;

/**
 * 角色
 * @author:hanlin.yuan
 * @date:2020/2/8
 */
@Data
@ToString
public class Role implements Serializable {

    private Integer id;

    private String name;

    private String memo;

}
