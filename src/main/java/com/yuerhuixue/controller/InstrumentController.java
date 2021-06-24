package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.service.InstrumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
public class InstrumentController {

    @Autowired
    @Qualifier("instrumentServiceImpl")
    private InstrumentService instrumentService;

    @RequestMapping("instrumentList.do")
    public String instrumentList(HttpSession session) throws SQLException{
        List<Instrument> instruments = instrumentService.instrumentList();
        session.setAttribute("instruments", instruments);
        return "instrumentlist";
    }

    @RequestMapping("instrumentModifyPage.do")
    public String instrumentModifyPage(Integer id, HttpSession session) throws SQLException {
        Instrument instrumentById = instrumentService.findInstrumentById(id);
        if (instrumentById != null){
            session.setAttribute("instrument", instrumentById);
            return "instrumentmodify";
        }else {
            return "instrumentlist";
        }
    }

    @RequestMapping("instrumentModify.do")
    public String instrumentModify(Instrument instrument, HttpSession session) throws SQLException {
        Boolean b = instrumentService.instrumentModify(instrument);
        if (b){
            List<Instrument> instruments = instrumentService.instrumentList();
            session.setAttribute("instruments", instruments);
            return "instrumentlist";
        }else {
            return "instrumentmodify";
        }
    }

    @RequestMapping("instrumentDelete.do")
    public String instrumentDelete(Integer id, HttpSession session) throws SQLException {
        instrumentService.instrumentDelete(id);
        List<Instrument> instruments = instrumentService.instrumentList();
        session.setAttribute("instruments", instruments);
        return "instrumentlist";
    }

}
