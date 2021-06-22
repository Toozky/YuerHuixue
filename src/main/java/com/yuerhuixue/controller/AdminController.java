package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Admin;
import com.yuerhuixue.service.AdminService;
import org.apache.ibatis.jdbc.SQL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    @Qualifier("adminServiceImpl")
    private AdminService adminService;

    @RequestMapping("adminLogin.do")
    public String adminLogin(HttpSession session,String name, String pass) throws SQLException {
        Admin admin = adminService.adminLogin(name, pass);
        if (admin!=null){
            List<Admin> admins=adminService.adminList();
            session.setAttribute("admin",admin);
            session.setAttribute("admins",admins);
            return "WEB-INF/admin/adminsuccessful";
        }else {
            return "adminlogin";
        }
    }

    @RequestMapping("adminRegister.do")
    public String adminRegister(String name, String pass) throws SQLException {
        Admin admin = new Admin(name, pass);
        Boolean b = adminService.adminRegister(admin);
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
    public String adminModifyPage(HttpServletRequest request, HttpSession session,Admin admin) throws SQLException{
//        Admin admin = request.getParameter("admin");
        session.setAttribute("admin",admin);
        System.out.println("*******====*******");
        System.out.println(admin.toString());
        System.out.println("*******====*******");
        return "WEB-INF/admin/adminmodify";
    }

    @RequestMapping("adminModify.do")
    public String adminModify(Admin admin) throws SQLException{
        System.out.println("**************");
        System.out.println(admin.toString());
        System.out.println("**************");
        Boolean b = adminService.adminModify(admin);
        if (b){
            return "WEB-INF/admin/adminsuccessful";
        }
        return "WEB-INF/admin/adminmodify";
    }
}
