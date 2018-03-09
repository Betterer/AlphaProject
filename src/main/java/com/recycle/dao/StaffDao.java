package com.recycle.dao;

import com.recycle.domain.Staff;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by dingxiaochi on 2018/3/6.
 */
public interface StaffDao extends CrudRepository<Staff, Long> {

    //根据ID查询工作人员账号信息
    Staff findStaffById(Integer id);

    //根据用户账号查询用户
    Staff findStaffByAccount(String account);
}
