package com.recycle.service;

import com.recycle.dao.UserDao;
import com.recycle.domain.Role;
import com.recycle.domain.Staff;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collection;

/**
 * Spring Security 使用的service,用于读取账户信息
 * Created by dingxiaochi on 2018/3/7.
 */
public class CustomUserDetailsService implements UserDetailsService {

    @Resource
    private UserDao userDao;


    @Override
    public UserDetails loadUserByUsername(String account) throws UsernameNotFoundException {
        Staff staff = userDao.findUserByAccount(account);
        if (staff == null) {
            throw new UsernameNotFoundException("Account " + account + " not found");
        }

        //储存用户角色名称
        Collection<SimpleGrantedAuthority> authorityList = new ArrayList<SimpleGrantedAuthority>();
        for(Role role : staff.getRoleList()){
            authorityList.add(new SimpleGrantedAuthority(role.getName()));
        }

        //返回包括权限角色的User给security
        org.springframework.security.core.userdetails.User auth_user = new
                org.springframework.security.core.userdetails.User(staff.getAccount(),staff.getPassword(),authorityList);
        return auth_user;
    }
}
