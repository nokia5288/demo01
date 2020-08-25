package com.realm;

import com.dao.base.BaseDao;
import com.pojo.role.Role;
import com.pojo.user.User;
import com.service.base.BaseService;
import com.service.user.UserService;
import com.util.RedisUtil;
import com.util.SerializeUtil;
import com.util.SpringContextUtil;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.*;


public class ShiroRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;
    @Autowired
    private RedisTemplate redisTemplate;
    @Autowired
    private RedisUtil redisUtil;


    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String uName = (String) principalCollection.getPrimaryPrincipal();
        List<Role> rList = userService.roleList(uName);
        Set<String> roles = new HashSet<>();
        for (int i = 0; i < rList.size(); i++) {
            roles.add(rList.get(i).getRName());
        }
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
        info.setRoles(roles);

        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        User user = userService.selByuName(username);
        if (user != null) {
            if (user.getStatus() == 1) {
                //redisTemplate.opsForValue().set("user",user);
                redisUtil.set("uName",user.getUName());
                AuthenticationInfo info = new SimpleAuthenticationInfo(user.getUName(), user.getUPwd(), ByteSource.Util.bytes(user.getSalt()), getName());
                return info;
            } else {
                //用户名已被禁用，请联系系统管理员
                throw new UnknownAccountException("1");
            }
        } else {
            //用户名或密码有误
            throw new UnknownAccountException("2");
        }

    }
}
