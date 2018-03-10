package com.recycle.service;

import com.recycle.dao.StaffDao;
import com.recycle.domain.Staff;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dingxiaochi on 2018/3/10.
 */
@Service
public class StaffService {

    @Resource
    private StaffDao staffDao;


    /**
     * 根据状态查询账户信息
     */
    public List<Staff> findStaffByStatus(Integer status){
        List<Staff> staffList = staffDao.findStaffByStatus(status);
         return staffList;
    }
}
