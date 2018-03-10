package com.recycle.handler;

import com.recycle.dao.StaffDao;
import com.recycle.domain.Staff;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

/**
 * 使用Spring security登录成功之后做的操作
 * Created by dingxiaochi on 2018/3/9.
 */
public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    @Resource
    private StaffDao staffDao;

    @Resource
    private RedisTemplate redisTemplate;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
        //获取登录后的用户账号
        String account = authentication.getName();
        //根据用户账号查询出用户信息
        Staff staff = staffDao.findStaffByAccount(account);
        //将用户信息存在redis缓存中,方便使用
        redisTemplate.opsForValue().set("staff",staff);


        super.onAuthenticationSuccess(httpServletRequest, httpServletResponse, authentication);

    }
}
