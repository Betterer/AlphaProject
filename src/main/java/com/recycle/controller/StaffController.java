package com.recycle.controller;

import com.recycle.constant.Constant;
import com.recycle.domain.Staff;
import com.recycle.service.StaffService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * 工作人员信息相关Controller
 * Created by dingxiaochi on 2018/3/9.
 */
@Controller
@RequestMapping("/staff")
public class StaffController {

    Log log = LogFactory.getLog(IndexController.class);

    @Resource
    private RedisTemplate redisTemplate;

    @Resource
    private StaffService staffService;


    /**
     * 工作人员列表
     * @return
     */
    @PreAuthorize("hasAnyRole('ROLE_ADMIN')")
    @GetMapping("/list")
    public String staffList(Map<String,Object> resultMap){
        //从缓存中取账户信息
        Staff staff = (Staff) redisTemplate.opsForValue().get("staff");
        //查询所有状态正常的用户
        List<Staff> staffList = staffService.findStaffByStatus(Constant.STAFF_STATUS_NORMAL);
        resultMap.put("current_staff",staff);
        resultMap.put("staff_list",staffList);
        return "staff/staff_list";
    }

    @PreAuthorize("hasAnyRole('ROLE_ADMIN,ROLE_StaffManager')")
    @GetMapping("/to_add")
    public String addStaffPage(){
        return "staff/staff_list";
    }
}
