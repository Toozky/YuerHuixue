package com.yuerhuixue.service.impl;

import com.yuerhuixue.mapper.InstrumentMapper;
import com.yuerhuixue.mapper.OrderDetailMapper;
import com.yuerhuixue.mapper.OrderMajorMapper;
import com.yuerhuixue.mapper.UserMapper;
import com.yuerhuixue.pojo.OrderDetail;
import com.yuerhuixue.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
    @Autowired
    OrderDetailMapper orderDetailMapper;

    @Autowired
    OrderMajorMapper orderMajorMapper;

    @Autowired
    InstrumentMapper instrumentMapper;

    @Autowired
    UserMapper userMapper;

    @Override
    public List<OrderDetail> orderDetailFindByOrderMajorId(Integer id) throws SQLException {
        List<OrderDetail> orderDetails = orderDetailMapper.orderDetailFindByOrderMajorId(id);
        return orderDetails;
    }
}
