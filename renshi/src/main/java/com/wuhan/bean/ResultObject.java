package com.wuhan.bean;

/**
 * 通用返回类
 * @author:hanlin.yuan
 * @date:2020/1/31
 */
public class ResultObject {
    /**提示信息*/
    private String msg;
    /**数据集合*/
    private Object data;
    /**返回状态码*/
    private String code = "0";

    public ResultObject(Object data) {
        this.data = data;
    }

    public ResultObject() {
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
