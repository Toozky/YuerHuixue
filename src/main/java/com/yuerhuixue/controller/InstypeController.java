package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Instype;
import com.yuerhuixue.service.InstypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
}
