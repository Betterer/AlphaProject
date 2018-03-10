package com.recycle.dao;

import com.recycle.domain.Staff;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

/**
 * Created by dingxiaochi on 2018/3/6.
 */
public interface StaffDao extends CrudRepository<Staff, Long> {


    /** ------------------------------------------------- 增 -------------------------------------------------------- **/

    /** ------------------------------------------------- 删 -------------------------------------------------------- **/

    /** ------------------------------------------------- 改 -------------------------------------------------------- **/

    /** ------------------------------------------------- 查 -------------------------------------------------------- **/

    //根据ID查询工作人员账号信息
    Staff findStaffById(Integer id);

    //根据用户账号查询工作人员信息
    Staff findStaffByAccount(String account);

    //查询所有状态正常的工作人员信息
    List<Staff> findStaffByStatus(Integer status);
}
