package com.pojo.user;
import lombok.Data;

import java.io.Serializable;

@Data
public class User implements Serializable{
    private Integer id;//编号
    private String uName;//用户名
    private String uPwd;//密码
    private String salt;//盐
    private String email;//邮箱
    private String mobile;//手机号
    private int status;//状态  0：禁用   1：正常
    private String cTime;//创建时间
}
