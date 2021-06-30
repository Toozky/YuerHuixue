package com.yuerhuixue.controller;

import com.yuerhuixue.pojo.OrderDetail;
import com.yuerhuixue.service.OrderDetailService;
import com.yuerhuixue.service.OrderDetailSimpleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.List;

@Controller
public class OrderDetailController {

    @Autowired
    @Qualifier("orderDetailSimpleServiceImpl")
    OrderDetailSimpleService orderDetailSimpleService;

    @Autowired
    @Qualifier("orderDetailServiceImpl")
    OrderDetailService orderDetailService;

    @RequestMapping("orderMajorDefinite.do")
    public String orderMajorDefinite(HttpSession session,Integer id) throws SQLException {
//        List<OrderDetail> orderDetails = orderDetailSimpleService.orderDetailFindByOrderMajorId(id);
        List<OrderDetail> orderDetails = orderDetailService.orderDetailFindByOrderMajorId(id);
        session.setAttribute("orderDetails",orderDetails);
        return "orderdetail";
    }
}
