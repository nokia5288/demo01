package com.service.base;

import com.dao.base.BaseDao;
import com.pojo.base.RegionAmap;
import com.pojo.base.SysRole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
@Transactional(readOnly = true)
public class BaseService {

    @Autowired
    private BaseDao dao;

    public List<SysRole> roleList(){
        return dao.roleList();
    }

    public int insertSelective(RegionAmap record){
        return dao.insertSelective(record);
    }

    public List<Map> mList(String username){
        return dao.mList(username);
    }

}
