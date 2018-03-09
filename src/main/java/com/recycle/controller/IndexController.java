package com.recycle.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Date;
import java.util.Map;

/**
 * Created by dingxiaochi on 2018/3/6.
 */

@Controller
public class IndexController {

    Log log = LogFactory.getLog(IndexController.class);

    @GetMapping("/welcome")
    public String welcome(Map<String,Object> resultMap){
        resultMap.put("time", new Date());
        resultMap.put("message", "测试freemarker");
        return "welcome";
    }


    /**
     * 登录页面
     * @return
     */
    @GetMapping("/login")
    public String loginPage(){
        return "login";
    }

    /**
     * 首页
     * @return
     */
    @GetMapping("/index")
    public String index(){
        return "index";
    }

    /**
     * 权限不足页面
     * @return
     */
    @GetMapping("/403")
    public String forbiddenPage(){
        return "errorPage/403";
    }

    /**
     * 404页面
     * @return
     */
    @GetMapping("/404")
    public String notFound(){
        return "errorPage/404";
    }

    /**
     * 500错误页面
     * @return
     */
    @GetMapping("/500")
    public String error(){
        return "errorPage/500";
    }

}
