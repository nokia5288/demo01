package com.pojo.base;

import lombok.Data;
import java.io.Serializable;

@Data
public class RegionAmap implements Serializable {
    private static final long serialVersionUID = 1L;
    private Long id;
    private String adcode;
    private Integer citycode;
    private String center;
    private Integer level;
    private String mergerName;
    private String name;
    private Integer parentId;
    private String pinyin;
    private String shortName;
    private String zipCode;

}