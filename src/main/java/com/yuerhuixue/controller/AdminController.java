package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Admin;
import com.yuerhuixue.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.SQLException;

@Controller
public class AdminController {

    @Autowired
    @Qualifier("adminServiceImpl")
    private AdminService adminService;

    @RequestMapping("adminLogin.do")
    public String adminLogin(String name, String pass) throws SQLException {
        Admin admin = adminService.adminLogin(name, pass);
        if (admin!=null){
            return "adminsuccessful";
        }else {
            return "adminlogin";
        }
    }

    @RequestMapping("adminRegister.do")
    public String adminRegister(Admin admin) throws SQLException {
        Boolean b = adminService.adminRegister(admin);
        if (b){
            return "adminlogin";
        }else {
            return "adminlogin";
        }
    }
}
