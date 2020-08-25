package com.pojo.role;

import lombok.Data;
import java.io.Serializable;

@Data
public class Role implements Serializable {
    private Integer id;//编号
    private String rName;//角色名称
}
