package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Instrument;
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
    
    @RequestMapping("instypeModifyPage.do")
    public String instypeModifyPage(Integer id, HttpSession session) throws SQLException {
        Instype instypeById = instypeService.findInstypeById(id);
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
            List<Instype> instypes = instypeService.instypeList();
            session.setAttribute("instypes", instypes);
            return "instypelist";
        }else {
            return "instypemodify";
        }
    }

    @RequestMapping("instypeDelete.do")
    public String instypeDelete(Integer id, HttpSession session) throws SQLException {
        instypeService.instypeDelete(id);
        List<Instype> instypes = instypeService.instypeList();
        session.setAttribute("instypes", instypes);
        return "instypelist";
    }

    @RequestMapping("instypeInsert.do")
    public String instypeInsert(Instype instype, HttpSession session) throws SQLException{
        Boolean b = instypeService.instypeInsert(instype);
        if (b){
            List<Instype> instypes = instypeService.instypeList();
            session.setAttribute("instypes", instypes);
            return "instypelist";
        }else {
            return "instypeinsert";
        }
    }

    @RequestMapping("instypeToInstrument.do")
    public String instypeToInstrument(Integer id, HttpSession session) throws SQLException {
        List<Instrument> findInstruments = instypeService.findInstrumentByInstype(id);
        if (findInstruments != null){
            session.setAttribute("findInstruments", findInstruments);
            return "instypetoinstrument";
        }else {
            return "instypelist";
        }
    }

}
