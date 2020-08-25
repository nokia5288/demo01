package com.service.user;

import com.dao.user.UserDao;
import com.pojo.role.Role;
import com.pojo.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.*;

@Service
@Transactional(readOnly = true)
public class UserService {

    @Autowired
    private UserDao dao;

    public User selByuName(String uName){
        return dao.selByuName(uName);
    }

    @Transactional(readOnly = false)
    public int addSysUser(Map map){
        return dao.addSysUser(map);
    }

    public List<Role> roleList(String uName){
        return dao.roleList(uName);
    }

}
