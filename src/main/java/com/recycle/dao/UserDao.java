package com.recycle.dao;

import com.recycle.domain.Staff;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by dingxiaochi on 2018/3/6.
 */
public interface UserDao extends CrudRepository<Staff, Long> {

    //根据用户ID查询用户
    Staff findUserById(Integer userId);

    //根据用户账号查询用户
    Staff findUserByAccount(String account);
}
