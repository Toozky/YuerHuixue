package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Admin;
import com.yuerhuixue.service.AdminService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;

@Controller
public class AdminController {

    private final AdminService adminService;

    public AdminController(@Qualifier("adminServiceImpl") AdminService adminService) {
        this.adminService = adminService;
    }

    @RequestMapping("adminLogin.do")
    public String adminLogin(HttpSession session,String name, String pass) throws SQLException {
        Admin admin = adminService.adminLogin(name, pass);
        if (admin!=null){
            session.setAttribute("admin",admin);
            return "WEB-INF/admin/adminsuccessful";
        }else {
            return "adminlogin";
        }
    }

    @RequestMapping("adminRegister.do")
    public String adminRegister(String name, String pass) throws SQLException {
        Admin admin = new Admin(name, pass);
        boolean b = adminService.adminRegister(admin);
        if (b){
            return "adminlogin";
        }else {
            return "adminlogin";
        }
    }

    @RequestMapping("adminDelete.do")
    public String adminDelete(Integer id) throws SQLException{
        adminService.adminDelete(id);
        return "WEB-INF/admin/adminsuccessful";
    }

    @RequestMapping("adminModifyPage.do")
    public String adminModifyPage(HttpSession session) throws SQLException{
        Admin admin=(Admin)session.getAttribute("admin");
        Admin findAdmin = adminService.adminFindById(admin.getId());
        if (findAdmin.toString().equals(admin.toString())){
            session.setAttribute("admin",admin);
            return "WEB-INF/admin/adminmodify";
        }else {
            return "WEB-INF/admin/adminsuccessful";
        }
    }

    @RequestMapping("adminModify.do")
    public String adminModify(HttpSession session,Admin admin) throws SQLException{
        Boolean b = adminService.adminModify(admin);
        if (b){
            session.setAttribute("admin",admin);
        }
        return "WEB-INF/admin/adminsuccessful";
    }

}
