package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Instype;
import com.yuerhuixue.service.InstypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
public class InstypeController {
    
    @Autowired
    @Qualifier("instypeServiceImpl")
    private InstypeService instypeService;
    
    @RequestMapping("instypeList.do")
    public String instypeList(HttpSession session) throws SQLException {
        List<Instype> instypes = instypeService.instypeList();
        session.setAttribute("instypes", instypes);
        return "instypelist";
    }
    
    @RequestMapping("instypeModifyPage.do")
    public String instypeModifyPage(HttpServletRequest req, HttpSession session) throws SQLException {
        String id = req.getParameter("id");
        Instype instypeById = instypeService.findInstypeById(Integer.parseInt(id));
        if (instypeById != null){
            session.setAttribute("instype", instypeById);
            return "instypemodify";
        }else {
            return "instypelist";
        }
    }
    
    @RequestMapping("instypeModify.do")
    public String instypeModify(Instype instype, HttpSession session) throws SQLException {
        Boolean b = instypeService.instypeModify(instype);
        if (b){
            List<Instype> instypeRefresh = instypeService.instypeList();
            session.setAttribute("instypes", instypeRefresh);
            return "instypelist";
        }else {
            return "instypemodify";
        }
    }
}
