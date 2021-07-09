package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.pojo.Instype;
import com.yuerhuixue.pojo.User;
import com.yuerhuixue.service.InstrumentService;
import com.yuerhuixue.service.InstypeService;
import com.yuerhuixue.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    @Autowired
    @Qualifier("instrumentServiceImpl")
    private InstrumentService instrumentService;

    @Autowired
    @Qualifier("instypeServiceImpl")
    private InstypeService instypeService;

    @RequestMapping("userIndex.do")
    public String userIndex(HttpServletRequest request, HttpSession session) throws SQLException{

        //乐器
        List<Instrument> instruments = instrumentService.instrumentList();
        request.setAttribute("instruments", instruments);

        //乐器类型
        List<Instype> instypes = instypeService.instypeList();
        request.setAttribute("instypes", instypes);

        //用户
        User user = (User) session.getAttribute("user");
        if (user == null){
            session.setAttribute("user", null);
        }

        return "userindex";
    }

    @RequestMapping("userLogin.do")
    public String userLogin(String name, String pass, HttpSession session, HttpServletRequest request) throws SQLException {

        //乐器
        List<Instrument> instruments = instrumentService.instrumentList();
        request.setAttribute("instruments", instruments);

        //乐器类型
        List<Instype> instypes = instypeService.instypeList();
        request.setAttribute("instypes", instypes);

        User user = userService.userLogin(name, pass);

        if (user!=null){
            session.setAttribute("user", user);
            return "userindex";
        }else {
            return "userlogin";
        }
    }

    @RequestMapping("userRegister.do")
    public String  userRegister(User user) throws SQLException {
        Boolean b = userService.userRegister(user);
        if (b){
            return "userlogin";
        }else {
            return "userregister";
        }
    }

    @RequestMapping("userModify.do")
    public String userUpdate(User user, HttpSession session) throws SQLException {

        System.out.println(user);
        System.out.println("11111111111111");
        Boolean b = userService.userModify(user);
        if (b){
            session.setAttribute("user", user);
            return "userinfo";
        }else {
            return "usermodify";
        }
    }

    @RequestMapping("userDelete.do")
    public String userDelete(HttpSession session,HttpServletRequest request) throws SQLException {

        //乐器
        List<Instrument> instruments = instrumentService.instrumentList();
        request.setAttribute("instruments", instruments);

        //乐器类型
        List<Instype> instypes = instypeService.instypeList();
        request.setAttribute("instypes", instypes);

        User user = (User) session.getAttribute("user");
        Boolean b = userService.userDelete(user);

        if (b){
            session.setAttribute("user", null);
            return "userindex";
        }else {
            return "userinfo";
        }
    }

    @RequestMapping("userLogout.do")
    public String userLogout(HttpSession session, HttpServletRequest request) throws SQLException {

        //乐器
        List<Instrument> instruments = instrumentService.instrumentList();
        request.setAttribute("instruments", instruments);

        //乐器类型
        List<Instype> instypes = instypeService.instypeList();
        request.setAttribute("instypes", instypes);

        session.setAttribute("user", null);
        return "userindex";
    }

    @RequestMapping("userModifyCancel.do")
    public String userModifyCancel(){
        return "userinfo";
    }

    @RequestMapping("userRegisterCancel.do")
    public String userRegisterCancel(){
        return "userlogin";
    }

}
