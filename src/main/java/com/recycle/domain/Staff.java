package com.recycle.domain;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

/**
 * 用户信息表
 * Created by dingxiaochi on 2018/3/5.
 */
@Entity
@Table(name = "staff")
public class Staff implements Serializable {


    private static final long serialVersionUID = -2301784964011882013L;

    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "account")
    private String account;             //用户账号

    @Column(name = "password")
    private String password;            //用户密码

    @Column(name = "nickname")
    private String nickname;            //用户昵称

    @Column(name = "gender")
    private Integer gender;             //用户性别

    @Column(name = "phone")
    private String phone;               //电话号码

    @Column(name = "email")
    private String email;               //电子邮箱

    @Column(name = "status")
    private Integer status;             //用户状态

    @ManyToMany(mappedBy="staffList",fetch = FetchType.EAGER)
    private Set<Role> roleList = new HashSet<Role>();           //用户角色


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Set<Role> getRoleList() {
        return roleList;
    }

    public void setRoleList(Set<Role> roleList) {
        this.roleList = roleList;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "id=" + id +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", nickname='" + nickname + '\'' +
                ", gender=" + gender +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", status=" + status +
                ", roleList=" + roleList +
                '}';
    }
}
