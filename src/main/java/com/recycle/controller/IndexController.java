package com.recycle.controller;

import com.recycle.domain.Staff;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;
import java.util.Date;
import java.util.Map;

/**
 * Created by dingxiaochi on 2018/3/6.
 */

@Controller
public class IndexController {

    Log log = LogFactory.getLog(IndexController.class);

    @Resource
    private RedisTemplate redisTemplate;

    @GetMapping("/welcome")
    public String welcome(Map<String,Object> resultMap){
        resultMap.put("time", new Date());
        resultMap.put("message", "测试freemarker");

        return "welcome";
    }

    /**
     * 首页:跳转
     * @return
     */
    @GetMapping("/")
    public String index(){
        return "redirect:/index";
    }

    /**
     * 首页
     * @return
     */
    @GetMapping("/index")
    public String index(Map<String,Object> resultMap){
        Staff staff = (Staff) redisTemplate.opsForValue().get("staff");
        resultMap.put("staff",staff);
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
