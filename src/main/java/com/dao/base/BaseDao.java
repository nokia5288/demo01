package com.dao.base;
import java.util.*;

import com.pojo.base.RegionAmap;
import com.pojo.base.SysRole;
import org.apache.ibatis.annotations.Param;

public interface BaseDao {
    List<SysRole> roleList();
    int insertSelective(RegionAmap record);
    List<Map> mList(@Param("username") String username);
}
