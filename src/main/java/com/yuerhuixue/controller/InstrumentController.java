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

    @RequestMapping("instrumentManage.do")
    public String findAllInstrument(HttpSession session) throws SQLException{
        List<Instrument> instruments = instrumentService.instrumentList();
        session.setAttribute("instruments", instruments);
        return "instrumentmanage";
    }
}
