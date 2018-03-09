package com.recycle.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 工作人员信息相关Controller
 * Created by dingxiaochi on 2018/3/9.
 */
@Controller
@RequestMapping("/staff")
public class StaffController {

    /**
     * 工作人员列表
     * @return
     */
    @PreAuthorize("hasAnyRole('ROLE_Admin')")
    @GetMapping("/list")
    public String staffList(){
        return "staff/staff_list";
    }

    @PreAuthorize("hasAnyRole('ROLE_Admin,ROLE_StaffManager')")
    @GetMapping("/to_add")
    public String addStaffPage(){
        return "staff/staff_list";
    }
}
