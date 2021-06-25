package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.OrderMajor;
import com.yuerhuixue.service.OrderMajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
public class OrderMajorController {

    @Autowired
    @Qualifier("orderMajorServiceImpl")
    private OrderMajorService orderMajorService;

    @RequestMapping("orderMajorList.do")
    public String OrderMajorList(HttpSession session)throws SQLException{
        List<OrderMajor> orderMajors = orderMajorService.orderMajorList();
        session.setAttribute("orderMajors",orderMajors);
        return "ordermajorlist";
    }

    @RequestMapping("orderMajorInsertPage.do")
    public String orderMajorInsertPage(HttpSession session,Integer id) throws SQLException{
        OrderMajor orderMajor = orderMajorService.orderMajorFindById(id);
        session.setAttribute("orderMajor",orderMajor);
        return "ordermajorinsert";
    }

    @RequestMapping("orderMajorInsert.do")
    public String orderMajorInsert(HttpSession session,OrderMajor orderMajor) throws SQLException{
        orderMajor.setState(orderMajor.getState()==null?0:orderMajor.getState());
        Boolean b = orderMajorService.orderMajorInsert(orderMajor);
        if (b){
            List<OrderMajor> orderMajors = orderMajorService.orderMajorList();
            session.setAttribute("orderMajors",orderMajors);
        }
        return "ordermajorlist";
    }

    @RequestMapping("orderMajorDelete.do")
    public String orderMajorDelete(HttpSession session,Integer id) throws SQLException{
        Boolean b = orderMajorService.orderMajorDelete(id);
        if (b){
            List<OrderMajor> orderMajors = orderMajorService.orderMajorList();
            session.setAttribute("orderMajors",orderMajors);
        }
        return "ordermajorlist";
    }
}
