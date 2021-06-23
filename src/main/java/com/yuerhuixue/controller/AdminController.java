package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Admin;
import com.yuerhuixue.pojo.User;
import com.yuerhuixue.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
            List<User> users = adminService.adminFindUsers();
            session.setAttribute("users",users);
            session.setAttribute("admin",admin);
            return "WEB-INF/admin/adminsuccessful";
        }else {
            return "adminlogin";
        }
    }

    @RequestMapping("adminRegisterPage.do")
    public String adminRegisterPage(HttpSession session) throws SQLException{
        /*Admin admin=(Admin)session.getAttribute("admin");
        Admin findAdmin = adminService.adminFindById(admin.getId());
        if (findAdmin.toString().equals(admin.toString())){
            return "WEB-INF/admin/adminregister";
        }else {
            return "WEB-INF/admin/adminsuccessful";
        }*/

        return "WEB-INF/admin/adminregister";
    }

    @RequestMapping("adminRegister.do")
    public String adminRegister(String name, String pass) throws SQLException {
        Admin admin = new Admin(name, pass);
        Boolean b = adminService.adminRegister(admin);
        if (b){

        }
        return "adminlogin";
    }

    @RequestMapping("adminDelete.do")
    public String adminDelete(Integer id) throws SQLException{
        if (id==1){
            return "WEB-INF/admin/adminsuccessful";
        }
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

    @RequestMapping("adminUpdateUserPage.do")
    public String adminUpdateUserPage(HttpSession session,Integer id) throws SQLException{
        User user = adminService.adminFindUserById(id);
        session.setAttribute("user",user);
        return "adminupdateuser";
    }

    @RequestMapping("adminUpdateUser.do")
    public String adminUpdateUser(HttpSession session,User user) throws SQLException{
        Boolean b = adminService.adminUpadteUser(user);
        if (b){
            List<User> users = adminService.adminFindUsers();
            session.setAttribute("users",users);
        }
        return "WEB-INF/admin/adminsuccessful";

    }

    @RequestMapping("adminDeleteUser.do")
    public String adminDeleteUser(HttpSession session,Integer id) throws SQLException{
        Boolean b = adminService.adminDeleteUserById(id);
        if (b){
            List<User> users = adminService.adminFindUsers();
            session.setAttribute("users",users);
        }
        return "WEB-INF/admin/adminsuccessful";
    }

    @RequestMapping("adminInsertUser.do")
    public String adminInsertUser(HttpSession session,User user) throws SQLException {
        Boolean b = adminService.adminInsertUser(user);
        if (b){
            List<User> users = adminService.adminFindUsers();
            session.setAttribute("users",users);
        }
        return "WEB-INF/admin/adminsuccessful";
    }

}
