package com.recycle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by dingxiaochi on 2018/3/9.
 */
@Controller
public class LoginController {

    /**
     * 登录页面
     * @return
     */
    @GetMapping("/login")
    public String loginPage(){
        return "login";
    }
}
