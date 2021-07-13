package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Bbs;

import com.yuerhuixue.service.BbsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
public class BbsController {
    @Autowired
    @Qualifier("bbsServiceImpl")
    private BbsService shequService;

    @RequestMapping("shequ.do")
    public String shequList(HttpSession session) throws SQLException {
        List<Bbs> sheuqus = shequService.shequList();
        session.setAttribute("shequs",sheuqus);
        return "bbslist";
    }
    @RequestMapping("shequad.do")
    public String shequList1(HttpSession session) throws SQLException {
        List<Bbs> sheuquss = shequService.shequList();
        session.setAttribute("shequs",sheuquss);
        return "bbsadd";
    }


    @RequestMapping("shequadd.do")
    public String shequad(Bbs shequ, HttpSession session) throws SQLException {
        Boolean b = shequService.shequInsert(shequ);
        if (b){
            List<Bbs> shequs = shequService.shequList();
            session.setAttribute("shequs",shequs);
            return "bbslist";
        }else {
            return "bbsadd";
        }
    }
}
