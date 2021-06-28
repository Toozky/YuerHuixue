package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.InstrumentMapper;
import com.yuerhuixue.mapper.OrderDetailSimpleMapper;
import com.yuerhuixue.mapper.OrderMajorMapper;
import com.yuerhuixue.pojo.Instrument;
import com.yuerhuixue.pojo.OrderDetail;
import com.yuerhuixue.pojo.OrderDetailSimple;
import com.yuerhuixue.service.OrderDetailSimpleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Service
public class OrderDetailSimpleServiceImpl implements OrderDetailSimpleService {

    @Autowired
    OrderDetailSimpleMapper orderDetailMapper;

    @Autowired
    OrderMajorMapper orderMajorMapper;

    @Autowired
    InstrumentMapper instrumentMapper;
    @Override
    public List<OrderDetail> orderDetailFindByOrderMajorId(Integer id) throws SQLException {
        List<OrderDetailSimple> orderDetailSimples = orderDetailMapper.orderDetailFindByOrderMajorId(id);

        List<OrderDetail> orderDetails=new ArrayList<>();
        OrderDetail orderDetail=new OrderDetail();

        for (OrderDetailSimple order : orderDetailSimples) {
            orderDetail.setNumber(order.getNumber());
            orderDetail.setInstrument(instrumentMapper.findInstrumentById(order.getInstruments_id()));
            orderDetail.setOrderMajor(orderMajorMapper.orderMajorFindById(order.getOrder_major_id()));
            orderDetails.add(orderDetail);
        }

        return orderDetails;
    }
}
