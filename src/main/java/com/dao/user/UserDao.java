package com.dao.user;

import com.pojo.role.Role;
import com.pojo.user.User;
import org.apache.ibatis.annotations.Param;

import java.util.*;

/**
 * 用户
 */
public interface UserDao {
    User selByuName(@Param("uName")String uName);
    int addSysUser(Map map);
    List<Role> roleList(@Param("uName")String uName);
}
